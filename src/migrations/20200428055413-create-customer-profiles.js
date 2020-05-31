'use strict'
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('customerProfiles', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER(11)
      },
      userId: {
        type: Sequelize.INTEGER(11),
        allowNull: false,
        references: {
          model: 'users',
          key: 'id'
        },
        onUpdate: 'CASCADE',
        onDelete: 'CASCADE'
      },
      firstName: {
        type: Sequelize.STRING(80)
      },
      lastName: {
        type: Sequelize.STRING(80)
      },
      noHandPhone: {
        type: Sequelize.STRING(25)
      },
      gender: {
        type: Sequelize.ENUM(['male', 'female', 'others']),
        defaultValue: 'others'
      },
      picture: {
        type: Sequelize.TEXT
      },
      address: {
        type: Sequelize.TEXT
      },
      subscribeExpired: {
        type: Sequelize.DATE
      },
      isDelete: {
        type: Sequelize.TINYINT(1),
        defaultValue: 0
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP')
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal(
          'CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'
        )
      }
    })
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('customerProfiles')
  }
}
