const UserRouters = require("express").Router();
const authMiddleware = require("../middleware/authMiddleware");
const { CreateUser, GetProfile, UpdateUser } = require("../controllers/users");

UserRouters.post("/", CreateUser);
UserRouters.get("/", authMiddleware, GetProfile);
UserRouters.patch("/", authMiddleware, UpdateUser);
UserRouters.get("/:id", authMiddleware, GetProfile);
module.exports = UserRouters;
