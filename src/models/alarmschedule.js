'use strict'
module.exports = (sequelize, DataTypes) => {
  const alarmSchedule = sequelize.define('alarmSchedule', {
    CCTVId: DataTypes.INTEGER,
    isOn: DataTypes.TINYINT,
    listHour: DataTypes.STRING,
    listDay: DataTypes.STRING,
    isDelete: DataTypes.TINYINT
  }, {})
  alarmSchedule.associate = function (models) {
    alarmSchedule.belongsTo(models.cameraCCTV, { foreignKey: 'CCTVId', targetKey: 'id' })
  }
  return alarmSchedule
}
