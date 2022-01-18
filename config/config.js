const mysql = require('mysql');
const session = require('express-session');
var cookieParser = require('cookie-parser');
const res = require('express/lib/response');
var confdb = {}
// var PORT = session.
    // console.log('Cookies: ', cookieParser);

    exports.connectDb =  (data) => {
        confdb = data
        console.log(confdb.ip+"hvbjnkm");
        return new Promise((resolve, reject) => {
            const db = mysql.createConnection({
                host: confdb.ip.length > 0 ? confdb.ip : 'localhost',
                user: confdb.user,
                password: '',
                database: 'test',
                port: 3306,
            })
            db.connect((error) => {
                if (error) {
                    console.error("error connecting: " + error);
                    reject(error)
                }
                else {
                    resolve({ status: 200, message: "connected database server" })
                    console.log('connected database server');
                }
            })
        })
        // try {
        //     const db = mysql.createConnection({
        //         host: ip.length>0?ip:'localhost',
        //         user:'root' ,
        //         password:'',
        //         database:'test',
        //         port:3306,
        //     })
        //     db.connect((error)=>{
        //         if(error){
        //             console.error("error connecting: "+error);
        //         }
        //         else{
        //             console.log('connected database server');
        //         }
        //     })
        // } catch (error) {
        //  res.status(500).json({error:error})   
        // }
    }


// const db = mysql.createConnection({
//     host:confdb.ip,
//     user: confdb.user,
//     password: '',
//     database: 'test',
//     port: 3306,
// })
// db.connect((error) => {
//     if (error) {
//         console.error("error connecting: " + error);
//     }
//     else {
//         console.log('connected database server');
//     }
// })
if(confdb.ip){

    module.exports = db
}