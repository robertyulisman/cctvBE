'use strict'
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('CCTVNotifications', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER(11)
      },
      CCTVId: {
        type: Sequelize.INTEGER(11),
        references: {
          model: 'cameraCCTVs',
          key: 'id'
        },
        onUpdate: 'CASCADE',
        onDelete: 'SET NULL'
      },
      sourcePath: {
        allowNull: false,
        type: Sequelize.TEXT
      },
      lastImage: {
        allowNull: false,
        type: Sequelize.STRING(250)
      },
      objectDetected: {
        allowNull: false,
        type: Sequelize.STRING(50)
      },
      ipServer: {
        type: Sequelize.STRING(100)
      },
      status: {
        type: Sequelize.TINYINT(1),
        defaultValue: 0
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
    return queryInterface.dropTable('CCTVNotifications')
  }
}
