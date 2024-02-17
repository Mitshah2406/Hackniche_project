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
    // {
// itemName: qty
    // }
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

Item.prototype.subtractItems = async function(itemId, itemName){
  const filter = { _id: ObjectId(itemId) };
  const update = { $inc: { [`allItems.${itemName}`]: -qtyToSubtract } }; // Subtract qtyToSubtract from the item's quantity

  const options = { returnOriginal: false }; // Return the updated document

  const result = await collection.findOneAndUpdate(filter, update, options);
}

module.exports = Item;
