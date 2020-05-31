'use strict';
const bcrypt = require('bcryptjs');
module.exports = (sequelize, DataTypes) => {
    const users = sequelize.define(
        'users',
        {
            roleId: DataTypes.INTEGER,
            username: {
                type: DataTypes.STRING,
                validate: {
                    isValidUsername: (value) => {
                        if (!/^[a-z0-9]{6,}/.test(value)) {
                            throw new Error(
                                'Username only contain lowercase letters or numbers only and minimal six character',
                            );
                        }
                    },
                    isUnique: async (value) => {
                        console.log(value);
                        const user = await users.findOne({
                            where: { username: value },
                        });
                        if (user) {
                            throw new Error('Username already in use');
                        }
                    },
                },
            },
            email: {
                type: DataTypes.STRING,
                validate: {
                    isUnique: async (value) => {
                        console.log(value);
                        const emailUser = await users.findOne({
                            where: { email: value },
                        });
                        if (emailUser) {
                            throw new Error('Email already in use');
                        }
                    },
                },
            },
            password: {
                type: DataTypes.STRING,
                validate: {
                    isValidPassword: (value) => {
                        if (!/^.{8,}/.test(value)) {
                            throw new Error(
                                'Password Must Contain Minimal eight character',
                            );
                        }
                    },
                },
            },
            status: DataTypes.TINYINT,
            isDelete: DataTypes.TINYINT,
        },
        {
            hooks: {
                beforeCreate: (user, options) => {
                    const hashPassword = bcrypt.hashSync(user.password);
                    user.password = hashPassword;
                },
            },
        },
    );
    users.associate = function (models) {
        users.belongsTo(models.userRoles, {
            foreignKey: 'roleId',
            targetKey: 'id',
        });
        users.hasOne(models.customerProfiles, { foreignKey: 'userId' });
        users.hasMany(models.cameraCCTV, { foreignKey: 'userId' });
    };

    return users;
};
