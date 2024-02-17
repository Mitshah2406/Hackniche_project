const { ObjectId } = require("mongodb");
const reviewsCollection = require("../db").collection("reviews");

let Review = function (data) {
  this.data = data;
  this.errors = [];
};

Review.prototype.cleanUp = function () {
  this.data = {
    customerId: new ObjectId(this.data.customerId),
    custName: this.data.name,
    comment: this.data.comment,
    rating: Number(this.data.rating),
  };
};

Review.prototype.addReview = async function (req, res) {
  await reviewsCollection.insertOne(this.data);
};

Review.prototype.getAllReviews = async function () {
  const allreviews = await reviewsCollection.find({}).toArray();
  console.log(allreviews);
  return allreviews;
};

module.exports = Review;
