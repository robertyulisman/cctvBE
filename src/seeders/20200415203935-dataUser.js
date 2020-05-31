'use strict'
const bcrypt = require('bcryptjs')
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('users', [
      {
        roleId: 1,
        username: 'myadmin',
        email: 'ipangselly@gmail.com',
        password: bcrypt.hashSync('myadmin123'),
        status: 1
      }
    ], {})
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('users', null, {})
  }
}
