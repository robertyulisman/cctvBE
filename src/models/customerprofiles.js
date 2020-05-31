'use strict';
module.exports = (sequelize, DataTypes) => {
  const customerProfiles = sequelize.define('customerProfiles', {
    userId: DataTypes.INTEGER,
    firstName: DataTypes.STRING,
    lastName: DataTypes.STRING,
    noHandPhone: DataTypes.STRING,
    gender: DataTypes.STRING,
    picture: DataTypes.TEXT,
    address: DataTypes.TEXT,
    subscribeExpired: DataTypes.DATE,
    isDelete: DataTypes.TINYINT
  }, {});
  customerProfiles.associate = function (models) {
    customerProfiles.belongsTo(models.users, { foreignKey: 'userId', targetKey: 'id' })
  };
  return customerProfiles;
};