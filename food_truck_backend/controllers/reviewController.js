const Review = require("../models/Review");

exports.addReview = async function (req, res) {
  let review = new Review(req.body);
  review.addReview();
  return res.json("sent");
};

exports.getReview = async function (req, res) {
  let review = new Review(req.body);
  const allreviews = await review.getAllReviews();
  console.log(allreviews);
  res.render("reviews", { reviews: allreviews });
};
