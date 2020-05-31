require('dotenv').config()
const jwt = require('jsonwebtoken')
async function checkAuthToken (req, res, next) {
  try {
    const token = req.query.cs || req.headers.authorization || ''
    if (!token) {
      throw new Error('Not Authorized')
    }
    req.auth = jwt.verify(token, process.env.APP_KEY)
    return next()
  } catch (e) {
    res.status(401).send({
      success: false,
      msg: e.message
    })
  }
}

module.exports = checkAuthToken
