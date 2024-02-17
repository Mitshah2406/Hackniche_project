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
    customerName: this.data.customerName,
    foodTruckId: this.data.foodTruckId,
    price: this.data.price,
    orderItem: this.data.orderItem,
    orderDeadline: this.data.orderDeadline,
    status: "pending", //pending //completed //cancelled
    foodPref: this.data.preference,
    addon: this.data.addon,
    orderDate: new Date(),
  };
};

Order.prototype.placeOrder = async function () {
  this.cleanUp();
  await orderCollection.insertOne(this.data);
};

Order.prototype.getOrdersByFoodTruckId = async function (ftId) {
  const recievedOrders = await orderCollection
    .find({ status: "pending" })
    .toArray();
  return recievedOrders;
};

Order.prototype.completeOrder = async function (orderId) {
  await orderCollection.findOneAndUpdate(
    { _id: new ObjectId(orderId) },
    { $set: { status: "completed" } }
  );
  return "The order has been marked as completed.";
};

module.exports = Order;
