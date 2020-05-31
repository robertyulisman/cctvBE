'use strict'
module.exports = (sequelize, DataTypes) => {
  const CCTVNotifications = sequelize.define('CCTVNotifications', {
    CCTVId: DataTypes.INTEGER,
    sourcePath: DataTypes.TEXT,
    lastImage: DataTypes.STRING,
    objectDetected: DataTypes.STRING,
    ipServer: DataTypes.STRING,
    status: DataTypes.TINYINT,
    isDelete: DataTypes.TINYINT
  }, {})
  CCTVNotifications.associate = function (models) {
    CCTVNotifications.belongsTo(models.cameraCCTV, { foreignKey: 'CCTVId', targetKey: 'id' })
  }
  return CCTVNotifications
}
