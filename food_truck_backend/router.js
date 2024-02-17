const express = require("express");
const router = express.Router();

const foodTruckController = require("./controllers/foodTruckController");
const orderController = require("./controllers/orderController.js");
const reviewController = require("./controllers/reviewController.js");

//Admin related apps
router.get("/", foodTruckController.home);

//Customer related Routes (API)
router.post("/place-order", orderController.placeOrder);
router.post("/complete-order", orderController.completeOrder);
router.post("/add-review", reviewController.addReview);
router.get("/get-review", reviewController.getReview);

// 404
router.get("*", (req, res) => {
  res.render("404");
});
module.exports = router;
