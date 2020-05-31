'use strict'
const bcrypt = require('bcryptjs')
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('users', [
      {
        roleId: 3,
        username: `myuser_${new Date().getTime() / 1000}`,
        email: 'useremail@provider.com',
        password: bcrypt.hashSync('12345678'),
        status: 1
      }
    ], {})
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('users', null, {})
  }
}
