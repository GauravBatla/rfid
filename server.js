
// import App from './app';
const  postsController = require('./src/controller/postsController');
const apps = require('./src/app')

const monthNames = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
];
const d = new Date();
console.log(monthNames[d.getMonth()]);
// document.write("The current month is " + );
const app = new apps(
  [
    new postsController(),
  ],
  5000,

);

app.listen();
