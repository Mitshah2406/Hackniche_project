const customerCollection = require("../db").collection("customer");
const bcrypt = require("bcryptjs");
const validator = require("validator");
const md5 = require("md5");
const { ObjectId } = require("mongodb");

let Customer = function (data) {
  this.data = data;
  this.errors = [];
};

Customer.prototype.cleanUp = function () {
  this.data = {
    name: this.data.name,
    mobile: this.data.mobile,
    email: this.data.email,
    password: this.data.password,
    // orderData: this.data.orderData,
  };
};

Customer.prototype.createCustomer = async function () {
  this.cleanUp();
  await customerCollection.insertOne(this.data);
};

Customer.prototype.login = function () {
  console.log(this.data.email);
  return new Promise((resolve, reject) => {
    this.cleanUp();
    customerCollection
      .findOne({ email: this.data.email })
      .then((attemptedUser) => {
        console.log("Found! based on email");
        console.log(attemptedUser);

        if (
          attemptedUser &&
          bcrypt.compareSync(this.data.password, attemptedUser.password)
        ) {
          this.data = attemptedUser;
          console.log("This dataa");
          console.log(this.data);

          resolve(this.data);
        } else {
          console.log("Invalidd");

          reject("Invalid username / password.");
        }
      })
      .catch(function () {
        console.log("Failed");

        reject("Please try again later.");
      });
  });
};

module.exports = Customer;
