require('dotenv').config();
const models = require('../models');
const {
    users: UserModel,
    devices: Devices,
    userRoles: Role,
    customerProfiles: Profile,
} = require('../models');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const uploads = require('../middleware/uploadFiles');
exports.CreateUser = async (req, res, next) => {
    try {
        if (
            !req.body.username ||
            !req.body.password ||
            !req.body.confirm_password
        ) {
            throw new Error(
                'username, password, and confirm password is required',
            );
        }
        if (req.body.password !== req.body.confirm_password) {
            throw new Error('Password and confirm password not match');
        }
        const createUser = await UserModel.create({
            username: req.body.username,
            password: req.body.password,
        });
        if (createUser) {
            res.status(201).json({
                success: true,
                msg: `User with username ${createUser.get('username')} created`,
                data: {
                    id: createUser.get('id'),
                    username: createUser.get('username'),
                },
            });
        }
    } catch (err) {
        console.log(err);
        res.status(err.status || 202).json({
            success: false,
            msg: err.message || 'Something Error',
        });
    }
};
exports.UserLogin = async (req, res, next) => {
    try {
        if (!req.body.username || !req.body.password) {
            throw new Error('Username/Email and Password is required');
        }
        const userLogin = await UserModel.findOne({
            where: {
                [models.Sequelize.Op.or]: [
                    { username: req.body.username },
                    { email: req.body.username },
                ],
            },
            include: [
                { model: Role, attributes: ['codeRole'] },
                {
                    model: Profile,
                    attributes: [
                        'firstName',
                        'lastName',
                        'noHandPhone',
                        'gender',
                        'picture',
                        'address',
                        'subscribeExpired',
                    ],
                },
            ],
        });
        if (
            !userLogin ||
            !bcrypt.compareSync(req.body.password, userLogin.password)
        ) {
            throw new Error('Username Or Passowrd Wrong');
        }
        if (!userLogin.status) {
            throw new Error('Please Verify Your Account');
        }

        if (userLogin.id && req.body.token !== null) {
            await Devices.create({
                registrationToken: req.body.token,
                userId: userLogin.id,
            });
        }
        const token = jwt.sign(
            {
                exp: Math.floor(
                    new Date(
                        userLogin.customerProfile.subscribeExpired,
                    ).getTime() / 1000,
                ),
                id: userLogin.id,
                username: userLogin.username,
                email: userLogin.email,
                role: userLogin.userRole.codeRole,
            },
            process.env.APP_KEY,
        );
        res.send({
            success: true,
            msg: 'Login Success',
            data: {
                token,
                dataProfile: {
                    id: userLogin.id,
                    username: userLogin.username,
                    email: userLogin.email,
                    role: userLogin.userRole.codeRole,
                    ...userLogin.customerProfile.dataValues,
                },
            },
        });
    } catch (e) {
        console.log(e);
        res.status(401).send({
            success: false,
            msg: e.message,
        });
    }
};

exports.GetProfile = async (req, res, next) => {
    try {
        const idUser = req.params.id || req.auth.id;
        const dataUser = await UserModel.findOne({
            where: { id: idUser },
            include: [
                { model: Role, attributes: ['codeRole'] },
                {
                    model: Profile,
                    attributes: [
                        'firstName',
                        'lastName',
                        'noHandPhone',
                        'gender',
                        'picture',
                        'address',
                        'subscribeExpired',
                    ],
                },
            ],
        });
        if (!dataUser) {
            throw new Error('Account Has Not Exist Anymore');
        }
        return res.status(200).send({
            success: true,
            data: {
                id: dataUser.id,
                username: dataUser.username,
                email: dataUser.email,
                role: dataUser.userRole.codeRole,
                ...dataUser.customerProfile.dataValues,
            },
        });
    } catch (e) {
        res.status(202).send({
            success: false,
            msg: e.message,
        });
    }
};

exports.UpdateUser = async (req, res, next) => {
    try {
        await uploads(req, res, 'picture');
        const { id: userId } = req.auth;
        const fillable = [
            'firstName',
            'lastName',
            'gender',
            'email',
            'noHandPhone',
            'address',
            'picture',
        ];
        const params = Object.keys(req.body).reduce((dataUpdate, key) => {
            if (key && fillable.includes(key) && req.body[key]) {
                return { ...dataUpdate, [key]: req.body[key] };
            } else {
                return dataUpdate;
            }
        }, {});

        if (req.file) {
            params.picture = 'uploads/' + req.file.filename;
        }

        if (req.body.old_password) {
            const user = await UserModel.findOne({ where: { id: userId } });
            const oldPassword = user.password;
            if (!(req.body.new_password && req.body.confirm_password)) {
                throw new Error('New Password or Confirm Password Not Defined');
            }
            if (!(req.body.new_password === req.body.confirm_password)) {
                throw new Error('Confirm Password Not Match');
            }
            if (!bcrypt.compareSync(req.body.old_password, oldPassword)) {
                throw new Error('Old Password Not Match');
            }
            params.password = bcrypt.hashSync(req.body.new_password);
        }
        if (!params || !(Object.keys(params).length > 0)) {
            throw new Error('Something Wrong with your sented data');
        }
        const updateProfile = await Profile.update(params, {
            where: { userId },
        });
        let updateUser;
        if (params.password) {
            updateUser = await UserModel.update(
                { password: params.password },
                { where: { id: userId } },
            );
        }
        if (params.email) {
            updateUser = await UserModel.update(
                { email: params.email },
                { where: { id: userId } },
            );
        }
        if (updateProfile[0] || (updateUser && updateUser[0])) {
            res.send({
                success: true,
                msg: `User ${req.auth.username} has been updated`,
            });
        } else {
            throw new Error('Failed to update user!');
        }
    } catch (e) {
        console.log(e);
        res.status(202).send({
            success: false,
            msg: e.message,
        });
    }
};
exports.Logout = async (req, res, next) => {
    try {
        if (req.params.userId && req.params.deviceToken) {
            const delToken = await Devices.destroy({
                where: {
                    userId: req.params.userId,
                    registrationToken: req.params.deviceToken,
                },
            });
            if (delToken) {
                res.send({
                    success: true,
                    msg: 'Success delete token and logout',
                });
            }
        }
    } catch (err) {
        console.log(err);
        res.status(err.status || 202).json({
            success: false,
            msg: err.message || 'Something Error',
        });
    }
};
