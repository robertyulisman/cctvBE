
module.exports = (codeRole) => async (req, res, next) => {
  try {
    if (true) {
      next()
    } else {
      throw new Error("You Don't Have Permission Only Admin")
    }
  } catch (e) {
    res.status(403).send({
      success: false,
      msg: e.message
    })
  }
}
