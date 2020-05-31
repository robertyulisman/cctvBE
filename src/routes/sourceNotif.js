const SourceRoutes = require('express').Router()
const { GetSourceNotification, GetSourceVideo, GetSourceImage } = require('../controllers/sourceNotif')
const authFile = require('../middleware/authMiddlewareFile.js')
SourceRoutes.get('/video/:id', GetSourceVideo)
SourceRoutes.get('/image/:id', GetSourceImage)
SourceRoutes.get('/:id/:name', GetSourceNotification)

module.exports = SourceRoutes
