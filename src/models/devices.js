'use strict';
module.exports = (sequelize, DataTypes) => {
  const devices = sequelize.define('devices', {
    registrationToken: DataTypes.STRING,
    userId: DataTypes.STRING
  }, {});
  devices.associate = function(models) {
    // associations can be defined here
  };
  return devices;
};