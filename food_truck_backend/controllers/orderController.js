const Order = require("../models/Order");

exports.completeOrder = async function (req, res) {
  let order = new Order();
  order.completeOrder(req.body.orderId);
  res.json({ message: "Order marked as completed" });
};

exports.getAllOrders = async function (req, res) {
  let order = new Order(req.body);
  order.getOrdersByFoodTruckId(req.params.id).then((data) => {
    if (!data) {
      return res.status(404).json({ message: "No orders found" });
    }
    res.render("orders", { orders: data });
  });
};

exports.placeOrder = async function (req, res) {
  let order = new Order(req.body);
  order.placeOrder();
  res.json("send");
};
