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
    requirements: this.data.requirements, //items needed to preapre the dish
    photo: this.data.photo,
    jain: this.data.jain, //true //false
    veg: this.data.veg,
    nonVeg: this.data.nonVeg,
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



module.exports = Menu;
