require('dotenv').config();
const App = require('./app');
const http = require('http');
const server = http.createServer(App);
const io = require('./socket.js').init(server);
const port = process.env.PORT || 5000;
const {
    NotifSend,
    NotifRead,
    unSendNotif,
} = require('./src/utility/sendNotification');
server.listen(port);
server.on('listening', () => {
    console.log('Server Running on Port ' + port);
});

server.on('error', (err) => {
    console.log('Get Error');
    if (err.message) {
        console.log('error message', err.message);
    }
    console.log('detail error', err);
    throw err;
});

io.on('connection', (sockets) => {
    sockets.on('connect', () => {
        console.log('User Connect');
        sockets.emit('connection', 'connect success');
    });
    sockets.on('disconnect', (reason) => {
        console.log('User disConnect ', reason);
    });
    sockets.on('reconnect', (number) => {
        console.log('User reconnecct', number);
        sockets.emit('connection', 'connect success');
    });
    sockets.on('room', async (room) => {
        sockets.leaveAll();
        await sockets.join(room);
        sockets.in(room).emit('room', 'connnect to room');
        console.log('connect to room');
        unSendNotif(room.split('_')[1]);
    });
    sockets.on('notif-send-success', (id) => {
        NotifSend(parseInt(id));
    });

    sockets.on('notif-read-success', (id) => {
        NotifRead(parseInt(id));
    });
});
