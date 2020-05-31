const models = require('../models')
const { cameraCCTV: CCTVModel, CCTVNotifications: NotificationModel, alarmSchedule: Schedule } = require('../models')
const getPagination = require('../utility/getPagination')

exports.CreateCCTV = async (req, res, next) => {
  try {
    if (!req.body.userId || !req.body.name || !req.body.securityCode) {
      throw new Error('userId, name, and securityCode is required')
    }
    const camera = await CCTVModel.create({ userId: req.body.userId, name: req.body.name, securityCode: req.body.securityCode })
    if (camera) {
      res.status(201).json({
        success: true,
        msg: `Add Camera for User With Id ${req.body.userId} Success`,
        data: {
          id: camera.get('id'),
          userId: req.body.userId,
          name: camera.get('username')
        }
      })
    }
  } catch (err) {
    console.log(err)
    res.status(err.status || 202).json({
      success: false,
      msg: err.message || 'Something Error'
    })
  }
}

exports.GetUserCamera = async (req, res, next) => {
  try {
    const idUser = req.auth.id
    const whereUser = { userId: idUser }
    const params = {
      currentPage: parseInt(req.query.page) || 1,
      perPage: parseInt(req.query.limit) || 5
    }
    if (req.params.id) {
      const condition = {
        where: { id: req.params.id, ...whereUser },
        attributes: ['id', 'userId', 'name', 'resolution', 'eventRecording', 'createdAt'],
        include: [
          {
            model: NotificationModel,
            attributes: ['id', 'CCTVId', 'sourcePath', 'lastImage', 'objectDetected', 'ipServer', 'status', 'createdAt'],
            limit: params.perPage,
            offset: (parseInt(params.perPage) * (parseInt(params.currentPage) - 1)),
            order: [
              ['createdAt', 'DESC']
            ]
          }
        ]
      }
      const dataCCTV = await CCTVModel.findOne(condition)
      const dataNotifcation = await CCTVModel.findOne({
        ...condition,
        attributes: [[models.Sequelize.fn('COUNT', models.Sequelize.col('CCTVNotifications.id')), 'NotificationCount']],
        include: [
          { model: NotificationModel, attributes: [] }
        ]
      })
      if (!dataCCTV) {
        throw new Error('You don\'t have camera with id ' + req.params.id)
      }
      const dataToUser = {
        success: true,
        ...dataCCTV.dataValues
      }
      if (dataNotifcation.dataValues.NotificationCount) {
        return res.status(200).send({
          ...dataToUser,
          pagination: getPagination(req, params, dataNotifcation.dataValues.NotificationCount)
        })
      } else {
        return res.status(200).send({
          ...dataToUser,
          CCTVNotifications: null,
          msg: 'This Camera Don\'t have notifications'
        })
      }
    } else {
      const dataCCTV = await CCTVModel.findAndCountAll({
        where: {
          ...whereUser,
          name: {
            [models.Sequelize.Op.like]: `%${req.query.search || ''}%`
          }
        },
        limit: params.perPage,
        offset: (parseInt(params.perPage) * (parseInt(params.currentPage) - 1)),
        attributes: ['id', 'userId', 'name', 'resolution', 'eventRecording', 'createdAt'],
        include: [
          { model: Schedule, attributes: ['id', 'isOn', 'listHour', 'listDay'] },
          {
            model: NotificationModel,
            attributes: ['lastImage'],
            limit: 1,
            order: [
              ['createdAt', 'DESC']
            ]
          }
        ],
        order: [
          ['createdAt', 'DESC']
        ]
      })
      if (dataCCTV.rows.length > 0) {
        return res.status(200).send({
          success: true,
          data: dataCCTV.rows,
          pagination: getPagination(req, params, dataCCTV.count)
        })
      } else {
        return res.status(200).send({
          success: true,
          data: null,
          msg: 'Data is empty'
        })
      }
    }
  } catch (err) {
    res.status(202).send({
      success: false,
      msg: err.message
    })
  }
}

exports.UpdateCameraName = async (req, res, next) => {
  try {
    const { id: userId } = req.auth

    if (!req.body.name) {
      throw new Error('name is required')
    }
    const camera = await CCTVModel.findOne({ where: { id: req.params.id } })
    if (!camera || (camera.userId !== userId)) {
      throw new Error(`Your CCTV with id ${req.params.id} don't exists`)
    }
    const updatCamera = await CCTVModel.update(
      { name: req.body.name },
      { where: { id: req.params.id } }
    )
    if (updatCamera) {
      res.send({
        success: true,
        msg: 'Your Camera has been updated'
      })
    } else {
      throw new Error('Failed to update user camera')
    }
  } catch (e) {
    console.log(e)
    res.status(202).send({
      success: false,
      msg: e.message
    })
  }
}

exports.UpdateCamera = async (req, res, next) => {
  try {
    const { id: userId } = req.auth

    if (!req.body.name) {
      throw new Error('name is required')
    }
    const camera = await CCTVModel.findOne({ where: { id: req.params.id } })
    if (!camera || (camera.userId !== userId)) {
      throw new Error(`Your CCTV with id ${req.params.id} don't exists`)
    }
    const updatCamera = await CCTVModel.update(
      { name: req.body.name },
      { where: { id: req.params.id } }
    )
    if (updatCamera) {
      res.send({
        success: true,
        msg: 'Your Camera has been updated'
      })
    } else {
      throw new Error('Failed to update user camera')
    }
  } catch (e) {
    console.log(e)
    res.status(202).send({
      success: false,
      msg: e.message
    })
  }
}
