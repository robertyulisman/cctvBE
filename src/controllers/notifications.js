require("dotenv").config();
const fs = require("fs");
const mime = require("mime-types");
const { SendMessage } = require("../utility/sendNotification");
const models = require("../models");
const {
  cameraCCTV: CCTVModel,
  devices: Devices,
  CCTVNotifications: NotificationModel,
} = require("../models");
const getPagination = require("../utility/getPagination");

// firebase configuration
const admin = require("firebase-admin");
const serviceAccount = require("../../test-93a6e-firebase-adminsdk-pwf0l-4c38dfd634.json");

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  databaseURL: "https://test-93a6e.firebaseio.com",
});

const options = {
  priority: "high",
  timeToLive: 60 * 60 * 24,
};

exports.createNotification = async (req, res, next) => {
  try {
    const registrationToken = [];
    const registrationTokenMute = [];
    const dataRegistrationToken = await Devices.findAll({
      where: {
        userId: req.body.userId,
      },
    });
    if (dataRegistrationToken) {
      const data = dataRegistrationToken;
      for (let i = 0; i < data.length; i++) {
        if (data[i].mute_notif === 0) {
          registrationToken.push(data[i].registrationToken);
        } else {
          registrationTokenMute.push(data[i].registrationToken);
        }
      }
    }
    const getCCTVname = await CCTVModel.findOne({
      where: {
        id: req.body.CCTVId,
      },
    });

    const ipServer = req.ip.split(":").reverse()[0] || req.ips[0];
    if (process.env.ENV_TYPE === "PROD") {
      const anotherIp = process.env.ALLOWED_CREATE_NOTIFICATION
        ? [...process.env.ALLOWED_CREATE_NOTIFICATION.split(",")]
        : [];
      if (
        ![
          "127.0.0.1",
          req.connection.localAddress.split(":").reverse()[0],
          ...anotherIp,
        ].includes(ipServer)
      ) {
        return res.status(403).send({
          success: false,
          msg: "Not Allowed to create Notifications",
        });
      }
    }
    if (!req.body.CCTVId || !req.body.sourcePath || !req.body.lastImage) {
      throw new Error("CCTVId,sourcePath,and lastImage is required");
    }
    const notification = await NotificationModel.create({
      CCTVId: req.body.CCTVId,
      sourcePath: req.body.sourcePath,
      lastImage: req.body.lastImage,
      objectDetected: req.body.objectDetected || "Motion",
      ipServer: req.body.Ipserver || ipServer,
    });
    if (notification) {
      SendMessage(notification.id);

      notification
        .update({
          lastImage: `${process.env.APP_URL}/source-notif/image/${notification.id}?name=${notification.lastImage}`,
        })
        .then((response) => {
          console.log("Successfully sent message:", response);
          admin
            .messaging()
            .sendToDevice(
              registrationToken,
              (payload = {
                notification: {
                  title: "New Detection Motion",
                  body: `Detect ${notification.objectDetected}`,
                  imageUrl: "https://i.ibb.co/v1hkzpw/ic-launcher.png",
                },
                data: {
                  id: notification.id.toString(),
                  CCTVId: notification.CCTVId,
                  cameraCCTV: getCCTVname.name,
                  createdAt: notification.createdAt.toString(),
                },
              }),
              options
            )
            .then((response) => {
              if (registrationTokenMute.length > 0) {
                admin
                  .messaging()
                  .sendToDevice(
                    registrationTokenMute,
                    (payload = {
                      notification: {
                        title: "New Detection Motion",
                        body: `Detect ${notification.objectDetected}`,
                        imageUrl: "https://i.ibb.co/v1hkzpw/ic-launcher.png",
                      },
                      data: {
                        id: notification.id.toString(),
                        CCTVId: notification.CCTVId,
                        cameraCCTV: getCCTVname.name,
                        createdAt: notification.createdAt.toString(),
                      },
                    }),
                    options
                  )
                  .then((response) => {
                    console.log("Successfully sent message:", response);

                    res.status(201).json({
                      success: true,
                      msg: "Success Create Notification",
                      data: notification,
                      token: registrationToken,
                      msgFirebase: "success sending message",
                      response,
                    });
                  })
                  .catch((error) => {
                    console.log("Error sending message:", error);
                    res.status(403).json({
                      success: false,
                      msg: "error sending message",
                      error,
                    });
                  });
              } else {
                console.log("Successfully sent message:", response);
                res.status(201).json({
                  success: true,
                  msg: "Success Create Notification",
                  data: notification,
                  token: registrationToken,
                  msgFirebase: "success sending message",
                  response,
                });
              }
            })
            .catch((error) => {
              console.log("Error sending message:", error);
              res.status(403).json({
                success: false,
                msg: "error sending message",
                error,
              });
            });
        });
    } else {
      throw new Error("Something Wrong");
    }
  } catch (err) {
    console.log(err);
    res.status(202).send({
      success: false,
      msg: err.message || "Something wrong",
    });
  }
};
exports.GetHistoryNotification = async (req, res, next) => {
  try {
    const idUser = req.auth.id;
    const params = {
      currentPage: parseInt(req.query.page) || 1,
      perPage: parseInt(req.query.limit) || 5,
    };
    const dataNotif = await NotificationModel.findAndCountAll({
      limit: params.perPage,
      offset: parseInt(params.perPage) * (parseInt(params.currentPage) - 1),
      include: [
        {
          model: CCTVModel,
          attributes: ["name"],
          where: { userId: idUser },
        },
      ],
      order: [["createdAt", "DESC"]],
      attributes: [
        "id",
        "CCTVId",
        "sourcePath",
        "lastImage",
        "objectDetected",
        "ipServer",
        "status",
        "createdAt",
      ],
    });
    if (dataNotif.rows.length > 0) {
      return res.status(200).send({
        success: true,
        data: dataNotif.rows,
        pagination: getPagination(req, params, dataNotif.count),
      });
    } else {
      return res.status(200).send({
        success: true,
        data: null,
        msg: "Data is empty",
      });
    }
  } catch (err) {
    console.log(err);
    res.status(202).send({
      success: false,
      msg: err.message || "something wrong",
    });
  }
};
exports.GetNewNotification = async (req, res, next) => {
  try {
    const idUser = req.auth.id;
    const params = {
      currentPage: parseInt(req.query.page) || 1,
      perPage: parseInt(req.query.limit) || 5,
    };
    const dataNotif = await NotificationModel.findAndCountAll({
      where: { status: { [models.Sequelize.Op.lt]: 2 } },
      // limit: params.perPage,
      // offset:
      //     parseInt(params.perPage) * (parseInt(params.currentPage) - 1),
      include: [
        {
          model: CCTVModel,
          attributes: ["name"],
          where: { userId: idUser },
        },
      ],
      order: [["createdAt", "DESC"]],
      attributes: [
        "id",
        "CCTVId",
        "sourcePath",
        "lastImage",
        "objectDetected",
        "ipServer",
        "status",
        "createdAt",
      ],
    });
    if (dataNotif.rows.length > 0) {
      return res.status(200).send({
        success: true,
        data: dataNotif.rows,
        // pagination: getPagination(req, params, dataNotif.count),
      });
    } else {
      return res.status(200).send({
        success: true,
        data: null,
        msg: "Data is empty",
      });
    }
  } catch (err) {
    console.log(err);
    res.status(202).send({
      success: false,
      msg: err.message || "something wrong",
    });
  }
};

exports.GetDetailNotification = async (req, res, next) => {
  try {
    if (!req.params.id || !req.params.type) {
      throw new Error("Id Notification and Type is Required");
    }
    const idUser = req.auth.id;
    const dataNotif = await NotificationModel.findOne({
      where: { id: req.params.id },
      include: [
        {
          model: CCTVModel,
          attributes: ["name"],
          where: { userId: idUser },
        },
      ],
      attributes: ["id", "sourcePath", "createdAt"],
    });
    if (dataNotif) {
      const source = [];
      if (req.params.type === "video") {
        source.push({
          source: `${process.env.APP_URL}/source-notif/video/${req.params.id}?name=cctv.mp4`,
          type: req.params.type,
        });
      } else {
        fs.readdirSync(dataNotif.sourcePath).forEach((file) => {
          if (mime.lookup(file).split("/")[0] === req.params.type) {
            source.push({
              source: `${process.env.APP_URL}/source-notif/image/${
                req.params.id
              }?name=${encodeURIComponent(file)}`,
              type: req.params.type,
            });
          }
        });
      }
      return res.status(200).send({
        success: true,
        id: dataNotif.id,
        nameCamera: dataNotif.cameraCCTV.name,
        data: source,
        createdAt: dataNotif.createdAt,
      });
    } else {
      return res.status(200).send({
        success: true,
        data: null,
        msg: "Data is empty",
      });
    }
  } catch (err) {
    console.log(err);
    res.status(202).send({
      success: false,
      msg: err.message || "something wrong",
    });
  }
};

exports.updateStatusNotification = async (req, res, next) => {
  try {
    const success = [];
    const id = req.body.id;
    for (let i = 0; i < id.length; i++) {
      await NotificationModel.update(
        {
          status: req.params.status,
        },
        {
          where: {
            id: id[i],
          },
        }
      );
      success.push("success");
    }
    if (success.length > 0) {
      res.send({ msg: "succes" });
    }
  } catch (err) {
    console.log(err);
    res.status(202).send({
      success: false,
      msg: err.message || "something wrong",
    });
  }
};
