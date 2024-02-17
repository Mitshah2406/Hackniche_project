const itemCollection = require("../db").collection("item");
const bcrypt = require("bcryptjs");
const validator = require("validator");
const md5 = require("md5");
const { ObjectId } = require("mongodb");

let Item = function (data) {
  this.data = data;
  this.errors = [];
};

Item.prototype.cleanUp = function () {
  this.data = {
    allItems: this.data.allItems,
  };
};

Item.prototype.updateItems = function () {
  // Assuming this.data.allItems is an array of objects with each object having a unique _id field
  const updatedItems = this.data.allItems.map((item) => ({
    updateOne: {
      filter: { _id: ObjectId(item._id) },
      update: { $set: item },
    },
  }));
  itemCollection.bulkWrite(updatedItems);
  return updatedItems;
};
Item.prototype.readItems = function () {
  const items = itemCollection.find({}).toArray();
  return items;
};

// Order.prototype.orderDetails = function () {
//   return new Promise((resolve, reject) => {
//     this.cleanUp();
//     orderCollection
//       .findOne({ email: this.data.email })
//       .then((attemptedUser) => {
//         console.log("Found! based on email");
//         console.log(attemptedUser);

//         if (
//           attemptedUser &&
//           bcrypt.compareSync(this.data.password, attemptedUser.password)
//         ) {
//           this.data = attemptedUser;
//           console.log("This dataa");
//           console.log(this.data);

//           resolve(this.data);
//         } else {
//           console.log("Invalidd");

//           reject("Invalid username / password.");
//         }
//       })
//       .catch(function () {
//         console.log("Failed");

//         reject("Please try again later.");
//       });
//   });
// };

module.exports = Item;
