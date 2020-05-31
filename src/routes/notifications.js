const NotificationRoutes = require('express').Router();
const authMiddleware = require('../middleware/authMiddleware');
const {
    GetHistoryNotification,
    GetNewNotification,
    GetDetailNotification,
    createNotification,
    updateStatusNotification,
} = require('../controllers/notifications');

NotificationRoutes.get('/', authMiddleware, GetHistoryNotification);
NotificationRoutes.get('/new', authMiddleware, GetNewNotification);
NotificationRoutes.get('/:id/:type', authMiddleware, GetDetailNotification);
NotificationRoutes.post('/', createNotification);
NotificationRoutes.post('/:status', updateStatusNotification);

module.exports = NotificationRoutes;
