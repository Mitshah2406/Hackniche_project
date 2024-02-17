const express = require("express");
const router = express.Router();

const foodTruckController = require("./controllers/foodTruckController");
const orderController = require("./controllers/orderController.js");
const reviewController = require("./controllers/reviewController.js");
const menuController = require("./controllers/menuController.js");
const customerController = require("./controllers/customerController.js");
const scheduleController = require("./controllers/scheduleController.js");
//Admin related apps
router.get("/", foodTruckController.home);

//Customer related Routes (API)
router.post("/place-order", orderController.placeOrder);
router.post("/complete-order", orderController.completeOrder);
router.get("/get-all-order", orderController.getAllOrders);
router.post("/add-review", reviewController.addReview);
router.get("/get-review", reviewController.getReview);
router.post("/register-customer", customerController.registerCustomer);
router.post("/create-schedule", scheduleController.addSchedule);
router.get("/get-schedule", scheduleController.getSchedules);
router.get("/complete-order-form", (req, res) => {
  res.render("completeOrder");
});
router.post("/create-menu-item", menuController.addItem);
router.get("/get-menu-items", menuController.readMenu);
// 404
router.get("*", (req, res) => {
  res.render("404");
});
module.exports = router;
