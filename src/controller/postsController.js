
const express = require('express');
const lineReader = require('line-reader');
const model = require('../model/getDataModel');
const con = require('../../config/config');
const { connect } = require('mongoose');
const fs = require('fs')
const monthNames = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
];
class PostsController {
  path = '/file';
  params = "/:id"
  file = '.txt'
  router = express.Router();
  posts = [
    {
      author: 'Marcin',
      content: 'Dolor sit amet',
      title: 'Lorem Ipsum',
    }
  ];
  constructor() {
    // this.model = model
    this.intializeRoutes()

  }
  intializeRoutes() {
    console.log('jh')
    // this.router.post(this.path, this.getDemo); 
    this.router.post(this.path + this.params, this.createAPost);
    this.router.post(this.path, this.getfile);
    this.router.post('/test', this.testfile);
    this.router.post('/getIp', this.getIP)
  }
  getAllPosts = (request, response) => {
    response.send(this.posts);
  }

  getIP = async (req, res) => {
    try {
      let getIp = req.body;
      console.log(req.body);
      // { ip: '127.0.0.1', user: 'dghxh', password: 'vxvv', port: 'zvxv' }
      res.cookie('ip', req.body.ip);
      res.cookie('user', req.body.user);
      res.cookie('password', req.body.password);
      res.cookie('port', req.body.port);
      //  console.log(document.cookie);npm start
  
      await con.connectDb(getIp)
      res.json({ status: 200, message: "connect" })
    } catch (error) {
      res.json({
        status: 500,
        error: error
      })
    }
  }

  testfile = (req, res) => {
    let payload = req.body
    console.log(payload + "ngfvhjnkbvhj");

    if (payload) return res.json({
      name: payload
    })
    else {
      return res.json({ message: "not get" })
    }
  }

  createAPost = (request, response) => {
    const post = request.body;
    this.posts.push(post);
    response.send(post);
  }



  getFileData() {
    var i = 0
    var demo = []
    var final = {}


    var result = "";
    lineReader.eachLine('WS11209011619599.txt', function (line) {
      // console.log(line);
      i++
      var temp = line.split('=')
      // var temp = line.split('/[\s,]+=/ ')
      if (temp.length == 2) {
        demo.push(temp)
        // demo.push([temp[0] : temp[1]])
        final[temp[0]] = temp[1];
        if (temp[0] == 'EFF(cell)') {
          result = temp[1]
          final['EFF_cell'] = result;
          // console.log(temp[1],'===');

        }
        if (temp[0] == 'EFF(Module)') {
          result = temp[1]
          final['EFF_module'] = result;
          // console.log(temp[1],'===');

        }

        // Object.assign(final,temp[0] :temp[1])


      }
      // console.log(demo)
      if (i == 30) {
        // console.log(result);
        console.log(final);


        return false
      }
    });
  }
  // async getDemo(req,res){
  //   db.query(`SELECT * FROM tborderwritetagcolar`, function (err, result, fields) {
  //     if (err) throw err;
  //     console.log(result);
  //     return  res.send(result)
  //   });
  //   // const data = await model.Find(); 
  //   // res.status(200).json({data:data})
  // }

  async getfile(req, res) {
    try {
      var fileName = req.body.fileName;
      const d = new Date();
      var currentMonth = monthNames[d.getMonth()]
      // console.log(res);
      var fs_t = require('fs')


      var dir = `C:/Users/Arramton-010/Desktop/abc/${currentMonth}/${fileName}.txt`
      if (fs_t.existsSync(dir)) {
        console.log('Directory exists!');


        let ip = req.body.ip
        // con.connectDb(ip)b


        // var filePath ="C:\Users\Arramton-010\Downloads\rfid project\src\controller"+fileName+;
        var sqldata = await model.Find()


        var i = 0
        var demo = []
        var final = {}

        var result = "";

        lineReader.eachLine(`C:/Users/Arramton-010/Desktop/abc/${currentMonth}/${fileName}.txt`, function (line, err) {
          // console.log(line); 

          i++
          var temp = line.split('=')

          // var temp = line.split('/[\s,]+=/ ')
          if (temp.length == 2) {
            demo.push(temp)
            // demo.push([temp[0] : temp[1]])
            temp[1] = temp[1].replace(",", "")

            final[temp[0]] = temp[1];
            if (temp[0] == 'EFF(cell)') {
              result = temp[1]
              final['EFF_cell'] = result;
              // console.log(temp[1],'===');

            }
            if (temp[0] == 'EFF(Module)') {
              result = temp[1]
              final['EFF_module'] = result;
              // console.log(temp[1],'===');

            }

            // Object.assign(final,temp[0] :temp[1])
          }
          // console.log(demo)
          if (i == 30) {
            // console.log(result);
            console.log(final);


            delete final.TestTime
            delete final.SaveTime
            delete final.Rsh
            delete final.Rs
            delete final.Rank
            delete final['EFF(cell)']
            delete final['EFF(Module)']
            final['orderno'] = sqldata[0].orderno
            //  final['sqlData'] = sqldata
            //  final['sqlData'] = sqldata
            final["orderno"] = sqldata[0].orderno,
              final["orderdate"] = sqldata[0].orderdate
            final["Qty"] = sqldata[0].Qty
            final["mfgPVModule"] = sqldata[0].mfgPVModule
            final["mfgSolarCells"] = sqldata[0].mfgSolarCells
            final["myMFGpvModule"] = sqldata[0].myMFGpvModule
            final["myMFGsolarCells"] = sqldata[0].myMFGsolarCells
            final["COOpvModule"] = sqldata[0].COOpvModule
            final["COOsolarCells"] = sqldata[0].COOsolarCells
            final["dateIEC"] = sqldata[0].dateIEC
            final["nameLabIEC"] = sqldata[0].nameLabIEC
            final["execuredQTY"] = sqldata[0].execuredQTY
            final["pendingQty"] = sqldata[0].pendingQty
            final["Machinelineno"] = sqldata[0].Machinelineno
            final["ModuleType"] = sqldata[0].ModuleType
            final["OrderStatus"] = sqldata[0].OrderStatus
            //  final["ID"] "" " "
            var a = final.Sn;
            a = a.replace(",", "")
            res.status(200).json({ status: 200, data: final })
            return false
          }
        });
      } else {
        console.log('Directory not found.');
        return res.json({ status: 400, message: "file nahi hai!!" })
      }

    } catch (error) {
      console.log(error);
      res.json({
        status: 500,
        message: "server error"
      })
    }
  }
};


module.exports = PostsController
