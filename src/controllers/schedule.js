const { cameraCCTV: CCTVModel, alarmSchedule: Schedule, users: UserModel } = require('../models')
exports.CreateUpdateSchedule = async (req, res, next) => {
  try {
    if (!req.body.CCTVId || !req.body.listHour || !req.body.listDay) {
      throw new Error('CCTVId, isOn, listHour, listDay is Required')
    }
    const getCCTV = await CCTVModel.findOne({
      where: { id: req.body.CCTVId },
      include: [
        { model: Schedule, Scheduleattributes: ['isOn', 'listHour', 'listDay'] },
        { model: UserModel, attributes: ['id', 'username'] }
      ]
    })
    if (req.auth.role === 'U') {
      if (req.auth.id !== getCCTV.user.id) {
        res.status(403).send({
          success: false,
          msg: 'This is Not Your CCTV'
        })
      }
    }
    let schedule
    if (getCCTV.alarmSchedule) {
      schedule = await Schedule.update({ CCTVId: req.body.CCTVId, isOn: req.body.isOn ? 1 : 0, listHour: req.body.listHour, listDay: req.body.listDay }, { where: { CCTVId: req.body.CCTVId } })
    } else {
      schedule = await Schedule.create({ CCTVId: req.body.CCTVId, isOn: req.body.isOn ? 1 : 0, listHour: req.body.listHour, listDay: req.body.listDay })
    }
    if (schedule) {
      res.status(201).json({
        success: true,
        msg: 'Success Config Schedule'
      })
    } else {
      throw new Error('Something Wrong')
    }
  } catch (err) {
    console.log(err)
    res.status(err.status || 202).send({
      success: false,
      msg: err.message || 'Something Error'
    })
  }
}
