'use strict'
const bcrypt = require('bcryptjs')
module.exports = (sequelize, DataTypes) => {
  const cameraCCTV = sequelize.define('cameraCCTV', {
    userId: DataTypes.INTEGER,
    name: {
      type: DataTypes.STRING
      // validate: {
      //   isUnique: async (value) => {
      //     console.log(value)
      //     const camera = await cameraCCTV.findOne({ where: { name: value } })
      //     if (camera) {
      //       throw new Error('name already in use')
      //     }
      //   }
      // }
    },
    securityCode: {
      type: DataTypes.STRING,
      validate: {
        isValidPassword: (value) => {
          if (!(/^.{6,}/.test(value))) {
            throw new Error('Security Code Must Contain Minimal six character')
          }
        }
      }
    },
    resolution: DataTypes.STRING,
    eventRecording: DataTypes.STRING,
    isDelete: DataTypes.TINYINT
  }, {
    hooks: {
      beforeCreate: (camera, options) => {
        const hashCode = bcrypt.hashSync(camera.securityCode)
        camera.securityCode = hashCode
      }
    }
  })
  cameraCCTV.associate = function (models) {
    cameraCCTV.belongsTo(models.users, { foreignKey: 'userId', targetKey: 'id' })
    cameraCCTV.hasMany(models.CCTVNotifications, { foreignKey: 'CCTVId' })
    cameraCCTV.hasOne(models.alarmSchedule, { foreignKey: 'CCTVId' })
  }
  return cameraCCTV
}
