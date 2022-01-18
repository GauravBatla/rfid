// import * as express from 'express';
// import * as bodyParser from 'body-parser';

// const db = require('../config/config')
// const fs = require('fs')
const express = require('express');
const cors = require('cors')
var cookieParser = require('cookie-parser');
// fs.readSync("net use \\192.168.68.85 /user:Vikas Reset@123")
class App {

  constructor(controllers, port) {
    this.app = express();
    this.port = port;
    this.cors = this.app.use(cors())
    this.initializeMiddlewares();
    this.initializeControllers(controllers);
  }

   initializeMiddlewares() {
    
    // this.app.use(app.json());
    this.app.use(express.json())
    this.app.use(cookieParser());
  }

   initializeControllers(controllers) {
    controllers.forEach((controller) => {
      this.app.use('/', controller.router);
    });
  }

   listen() {
    this.app.listen(this.port, () => {
      console.log(`App listening on the port ${this.port}`);
    });
  }
}

module.exports = App
