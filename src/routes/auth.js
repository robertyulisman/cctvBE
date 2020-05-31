const AuthRouters = require("express").Router();
const { UserLogin, Logout } = require("../controllers/users");

AuthRouters.post("/login", UserLogin);
AuthRouters.post("/logout/:userId/:deviceToken", Logout);
module.exports = AuthRouters;
