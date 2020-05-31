const ScheduleRoutes = require('express').Router()
const authMiddleware = require('../middleware/authMiddleware')
const { CreateUpdateSchedule } = require('../controllers/schedule')

ScheduleRoutes.post('/', authMiddleware, CreateUpdateSchedule)

module.exports = ScheduleRoutes
