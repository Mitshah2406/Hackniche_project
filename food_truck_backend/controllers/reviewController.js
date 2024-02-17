const Review = require("../models/Review");

exports.addReview = async function (req, res) {
  let review = new Review(req.body);
  review.addReview();
};

exports.getReview = async function (req, res) {
  let review = new Review(req.body);
  const allreviews = review.getAllReviews();
  res.send(allreviews);
};
