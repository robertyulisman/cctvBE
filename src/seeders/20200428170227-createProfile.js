'use strict'

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('customerProfiles', [
      {
        userId: 1,
        firstName: 'super',
        lastName: 'admin',
        subscribeExpired: new Date(new Date().getTime() + (365 * 24 * 60 * 60 * 1000))
      }
    ], {})
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('customerProfiles', null, {})
  }
}
