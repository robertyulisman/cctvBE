require('dotenv').config()
const fs = require('fs')
const mime = require('mime-types')
const { CCTVNotifications: NotificationModel } = require('../models')

exports.GetSourceNotification = async (req, res, next) => {
  try {
    if (!req.params.id || !req.params.name) {
      throw new Error('Id Notification and Type is Required')
    }
    const dataNotif = await NotificationModel.findOne({
      where: { id: req.params.id },
      attributes: ['id', 'sourcePath']
    })
    if (dataNotif) {
      const source = dataNotif.sourcePath + '/' + req.params.name
      const stat = fs.statSync(source)
      console.log(mime.lookup(req.params.name))
      res.writeHead(200, {
        'Content-Type': mime.lookup(req.params.name),
        'Content-Length': stat.size
      })
      const readStream = fs.createReadStream(source)
      readStream.pipe(res)
    } else {
      throw new Error('Customer don\'t have relation with this notification')
    }
  } catch (err) {
    console.log(err)
    return res.status(404).send({
      success: false,
      msg: 'Not Found'
    })
  }
}
exports.GetSourceVideo = async (req, res, next) => {
  try {
    if (!req.params.id || !req.query.name) {
      throw new Error('file not found')
    }
    const dataNotif = await NotificationModel.findOne({
      where: { id: req.params.id },
      attributes: ['id', 'sourcePath']
    })
    if (dataNotif) {
      const source = dataNotif.sourcePath + '/' + req.query.name
      fs.stat(source, (err, stat) => {
        if (err !== null && err.code === 'ENOENT') {
          res.sendStatus(404)
          return
        }
        const fileSize = stat.size
        const range = req.headers.range
        console.log(req.headers.range)
        if (range) {
          const parts = range.replace(/bytes=/, '').split('-')

          const start = parseInt(parts[0], 10)
          const end = parts[1] ? parseInt(parts[1], 10) : fileSize - 1

          const chunksize = (end - start) + 1
          const file = fs.createReadStream(source, { start, end })
          const head = {
            'Content-Range': `bytes ${start}-${end}/${fileSize}`,
            'Accept-Ranges': 'bytes',
            'Content-Length': chunksize,
            'Content-Type': 'video/mp4'
          }

          res.writeHead(206, head)
          file.pipe(res)
        } else {
          const head = {
            'Content-Length': fileSize,
            'Content-Type': 'video/mp4'
          }

          res.writeHead(200, head)
          fs.createReadStream(source).pipe(res)
        }
      })
    } else {
      throw new Error('file not found')
    }
  } catch (err) {
    console.log(err)
    return res.status(404).send({
      success: false,
      msg: 'file not found'
    })
  }
}

exports.GetSourceImage = async (req, res, next) => {
  try {
    if (!req.params.id || !req.query.name) {
      throw new Error('file not found')
    }
    const dataNotif = await NotificationModel.findOne({
      where: { id: req.params.id },
      attributes: ['id', 'sourcePath']
    })
    if (dataNotif) {
      const source = dataNotif.sourcePath + '/' + req.query.name
      const stat = fs.statSync(source)
      console.log(mime.lookup(req.query.name))
      res.writeHead(200, {
        'Content-Type': mime.lookup(req.query.name),
        'Content-Length': stat.size
      })
      const readStream = fs.createReadStream(source)
      readStream.pipe(res)
    } else {
      throw new Error('Customer don\'t have relation with this notification')
    }
  } catch (err) {
    console.log(err)
    return res.status(404).send({
      success: false,
      msg: 'Not Found'
    })
  }
}
