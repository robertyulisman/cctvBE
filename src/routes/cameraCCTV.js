const CameraRouters = require('express').Router()
const authMiddleware = require('../middleware/authMiddleware')
const { GetUserCamera, UpdateCameraName } = require('../controllers/cameraCCTV')

CameraRouters.get('/', authMiddleware, GetUserCamera)
CameraRouters.get('/:id', authMiddleware, GetUserCamera)
CameraRouters.patch('/:id', authMiddleware, UpdateCameraName)
// CameraRouters.post('/', authMiddleware, CreateCCTV)

module.exports = CameraRouters
