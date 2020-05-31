const express = require('express')
const App = express()
const ApiRouter = express.Router()
const morgan = require('morgan')
const createError = require('http-errors')
const bodyParser = require('body-parser')
const cors = require('cors')
const path = require('path')

/* Routes */
const UserRouters = require('./src/routes/users')
const AuthRouters = require('./src/routes/auth')
const CameraRouters = require('./src/routes/cameraCCTV')
const NotificationRoutes = require('./src/routes/notifications')
const ScheduleRoutes = require('./src/routes/schedule')
const SourceRoutes = require('./src/routes/sourceNotif')
/* Logger */
App.use(morgan('tiny'))

/* BodyParser */
App.use(bodyParser.urlencoded({ extended: false }))
App.use(bodyParser.json())
/* CORS HEADER */
/*
  Spesific Origin With
  const whiteList = ['http://example1.com', 'http://example2.com']
*/
const whiteList = '*'
const corsOptions = {
  origin: (origin, callback) => {
    if (whiteList !== '*') {
      if (whiteList.indexOf(origin) !== -1) {
        callback(null, true)
      } else {
        callback(new Error('Not Allowed By CORS'))
      }
    } else {
      callback(null, true)
    }
  },
  optionsSuccessStatus: 200
}
App.use(cors(corsOptions))

/* Static Files */
App.use('/uploads', express.static(path.join(__dirname, 'uploads')))

App.get('/', (req, res, next) => {
  res.redirect('/api-docs')
})
/* API DOCS */
App.use('/api-docs', require('./src/docs/'))

App.use('/api', ApiRouter)
ApiRouter.use('/users', UserRouters)
ApiRouter.use('/auth', AuthRouters)
ApiRouter.use('/camera-cctv', CameraRouters)
ApiRouter.use('/notifications', NotificationRoutes)
ApiRouter.use('/schedule', ScheduleRoutes)
App.use('/source-notif', SourceRoutes)
/* Handling Not Found Routes */
App.use((req, res, next) => {
  next(createError(404))
})
/* Handling Error */
App.use((err, req, res, next) => {
  res.status(err.status || 500).send({
    success: false,
    message: err.message
  })
})

module.exports = App
