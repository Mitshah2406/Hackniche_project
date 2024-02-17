const orderCollection = require("../db").collection("order");
const bcrypt = require("bcryptjs");
const validator = require("validator");
const md5 = require("md5");
const { ObjectId } = require("mongodb");

let Order = function (data) {
  this.data = data;
  this.errors = [];
};

Order.prototype.cleanUp = function () {
  this.data = {
    customerId: this.data.customerId,
    foodTruckId: this.data.foodTruckId,
    price: this.data.price,
    orderItem: this.data.orderItem,
    orderDeadline: this.data.deadline,
    orderDate: new Date(),
  };
};

Order.prototype.createOrder = async function () {
  this.cleanUp();
  await orderCollection.insertOne(this.data);
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

module.exports = Order;
