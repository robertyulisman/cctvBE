const { cameraCCTV: CCTVModel, CCTVNotifications: NotificationModel, alarmSchedule: Schedule } = require('../models')
exports.SendMessage = async (id) => {
  try {
    const io = require('../../socket').getio()
    const dataNotif = await NotificationModel.findOne({
      where: { id },
      include: [
        { model: CCTVModel, attributes: ['name', 'userId'], include: [{ model: Schedule, attributes: ['isOn', 'listHour', 'listDay'] }] }
      ],
      attributes: ['id', 'CCTVId', 'sourcePath', 'lastImage', 'objectDetected', 'ipServer', 'status', 'createdAt']
    })
    if (dataNotif.cameraCCTV.alarmSchedule && dataNotif.cameraCCTV.alarmSchedule.isOn) {
      const listDay = dataNotif.cameraCCTV.alarmSchedule.listDay.split(',')
      const listHour = dataNotif.cameraCCTV.alarmSchedule.listHour.split(',')
      const nowDay = new Date().getDay().toString()
      const nowHour = new Date().getHours().toString()
      if (listDay.includes(nowDay) && listHour.includes(nowHour)) {
        io.in(`_${dataNotif.cameraCCTV.userId}_`).emit(`${dataNotif.cameraCCTV.userId}-new-notif`, JSON.stringify(dataNotif.dataValues))
      } else {
        dataNotif.update({ status: 2 })
      }
    } else {
      dataNotif.update({ status: 2 })
    }
  } catch (err) {
    console.log(err)
  }
}
exports.unSendNotif = async (userId) => {
  try {
    const io = require('../../socket').getio()
    const dataNotif = await NotificationModel.findAndCountAll({
      where: { status: 0 },
      include: [
        { model: CCTVModel, where: { userId: parseInt(userId) }, attributes: ['name', 'userId'], include: [{ model: Schedule, attributes: ['isOn', 'listHour', 'listDay'] }] }
      ],
      order: [
        ['createdAt', 'DESC']
      ],
      attributes: ['id', 'CCTVId', 'sourcePath', 'lastImage', 'objectDetected', 'ipServer', 'status', 'createdAt']
    })
    if (dataNotif && dataNotif.rows.length > 0) {
      const data = dataNotif.rows[0]
      io.in(`_${data.cameraCCTV.userId}_`).emit(`${data.cameraCCTV.userId}-unsend-notif`, JSON.stringify({ ...data.dataValues, count: dataNotif.count }))
      dataNotif.rows.forEach((data) => {
        data.update({ status: 1 })
      })
    }
  } catch (err) {
    console.log(err)
  }
}
exports.NotifSend = async (id) => {
  try {
    await NotificationModel.update({ status: 1 }, { where: { id } })
  } catch (err) {
    console.log(err)
  }
}
exports.NotifRead = async (id) => {
  try {
    await NotificationModel.update({ status: 2 }, { where: { id } })
  } catch (err) {
    console.log(err)
  }
}
