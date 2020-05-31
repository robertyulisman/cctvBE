<h2 align="center"> Backend - CCTV SecurityMax </h2>


Backend for Mobile APP CCTV SecurityMax. Built with NodeJs using the ExpressJs Framework.
Express.js is a web application framework for Node.js. [More about Express](https://en.wikipedia.org/wiki/Express.js)

## Built With
[![Express.js](https://img.shields.io/badge/Express.js-4.x-orange.svg?style=rounded-square)](https://expressjs.com/en/starter/installing.html)
[![Node.js](https://img.shields.io/badge/Node.js-v.12.16-green.svg?style=rounded-square)](https://nodejs.org/)


## How to Deploy Backend To Server ?
1. Clone this Repo
2. enter root directory for this repo
3. Type `$ npm install`
4. Make new file a called **.env**, set up first [here](#set-up-env-file)
5. Turn on Web Server and MySQL can using Third-party tool like xampp, etc.
6. Run Migration With 
  ```
  $ npx sequelize-cli db:create
  $ npx sequelize-cli db:migrate
  $ npx sequelize-cli db:seed:all
  ```
7. Install pm2 with `$ npm i -g pm2`
8. Run this Backend with pm2 `$ pm2 start index.js --name BE_CCTVSecurityMax`
7. open Documentation In Browser (ex: <IP_SERVER>:<PORT>)
8. You can see all the end point
9. Note : create folder `uploads`in app's directory for Customer Profile
10. Note : You can create new user from terminal use `$ npm run createuser` (it will be create user with random username and passoword 12345678)
## Set up .env file
Open .env file on your favorite code editor, and copy paste this code below :
```

# Environment type (DEV for development OR PROD for production)
ENV_TYPE=DEV


# Allowed IP ADDRESS to create Notification when ENV_TYPE is PROD(<ipAddress>,<ipAddress>,.....)
# example: ALLOWED_CREATE_NOTIFICATION=36.2.1.23,20.36.40.7
# Add your public ip(must be added if you want to send post to ip public or domain)  or another ip to create notification
ALLOWED_CREATE_NOTIFICATION=3.86.60.62


# DEFINED PORT FOR PROJECT
PORT=5004

# DEFINED SERVER URL
APP_URL=<IP_SERVER>:<PORT>

# DEFINED SECRET KEY FOR JWT TOKEN
APP_KEY=MYSECRET1234567890

# DEFINED DB CONFIG
DB_SERVER=<server of your database ex:localhost>
DB_USER=<username to acces database ex:root>
DB_PASSWORD=<your password>
DB_NAME=<name of your database>
```

## Example .env file
```
# Environment type (DEV for development or PROD for production)
ENV_TYPE=DEV

# Allowed IP ADDRESS to create Notification when ENV_TYPE is PROD(<ipAddress>,<ipAddress>,.....)
# example: ALLOWED_CREATE_NOTIFICATION=36.2.1.23,20.36.40.7
# Add your public ip(must be added if you want to send post to ip public or domain)  or another ip to create notification
ALLOWED_CREATE_NOTIFICATION=3.8.60.62


# DEFINED PORT FOR PROJECT
PORT=5004

# DEFINED SERVER URL
APP_URL=http://3.86.60.62:5004

# DEFINED SECRET KEY FOR JWT TOKEN
APP_KEY=MYSECRET1234567890

# DEFINED DB CONFIG
DB_SERVER=localhost
DB_USER=myadmin
DB_PASSWORD=12345678
DB_NAME=myAppDB

```