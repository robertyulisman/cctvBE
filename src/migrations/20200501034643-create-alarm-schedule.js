'use strict'
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('alarmSchedules', {
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
        onDelete: 'CASCADE'
      },
      isOn: {
        type: Sequelize.TINYINT(1)
      },
      listHour: {
        type: Sequelize.STRING(120)
      },
      listDay: {
        type: Sequelize.STRING(20)
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
    return queryInterface.dropTable('alarmSchedules')
  }
}
