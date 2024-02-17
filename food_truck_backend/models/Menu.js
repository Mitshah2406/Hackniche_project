const menuCollection = require("../db").collection("menu");
const bcrypt = require("bcryptjs");
const validator = require("validator");
const md5 = require("md5");
const { ObjectId } = require("mongodb");

let Menu = function (data) {
  this.data = data;
  this.errors = [];
};

Menu.prototype.cleanUp = function () {
  this.data = {
    itemName: this.data.itemName,
    price: this.data.price,
    rating: this.data.rating,
    requirements: this.data.requirements,
    photo: this.data.photo,
    jain: this.jain,
    veg: this.veg,
    nonVeg: this.nonVeg,
  };
};

Menu.prototype.createMenu = async function () {
  this.cleanUp();
  await menuCollection.insertOne(this.data);
};
Menu.prototype.readMenu = function () {
  const menuItems = menuCollection.find({}).toArray();
  return menuItems;
};

// Order.prototype.orderDetails = function () {
//   return new Promise((resolve, reject) => {
//     this.cleanUp();
//     orderCollection
//       .findOne({ email: this.data.email })
//       .then((attemptedUser) => {
//         console.log("Found! based on email");
//         console.log(attemptedUser);

//         if (
//           attemptedUser &&
//           bcrypt.compareSync(this.data.password, attemptedUser.password)
//         ) {
//           this.data = attemptedUser;
//           console.log("This dataa");
//           console.log(this.data);

//           resolve(this.data);
//         } else {
//           console.log("Invalidd");

//           reject("Invalid username / password.");
//         }
//       })
//       .catch(function () {
//         console.log("Failed");

//         reject("Please try again later.");
//       });
//   });
// };

module.exports = Menu;
