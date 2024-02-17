const Order = require("../models/Order")

exports.completeOrder = async function(req, res){
  let order = new Order()
  order.completeOrder(req.body.orderId)
}

exports.placeOrder = async function(req, res){
  let order = new Order(req.body)
  order.placeOrder()
}