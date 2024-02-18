const inventoryCollection = require("../db").collection("inventory");
const bcrypt = require("bcryptjs");
const validator = require("validator");
const md5 = require("md5");
const { ObjectId } = require("mongodb");

let Inventory = function (data) {
  this.data = data;
  this.errors = [];
};

Inventory.prototype.cleanUp = function () {
  this.data = {
    inventoryItems: this.data.inventoryItems,
  };
};

Inventory.prototype.createInventory = async function () {
  console.log(this.data);
  this.cleanUp();
  // Fetch existing data from the collection
  const existingData = await inventoryCollection.findOne({});

  // Merge the existing data with the new data
  const mergedData = await mergeInventory(
    existingData.inventoryItems,
    this.data.inventoryItems
  );

  // Update the collection with the merged data
  await inventoryCollection.updateOne(
    {},
    { $set: { inventoryItems: mergedData } }
  );
};
const mergeInventory = (existingItems, newItems) => {
  let existingObject = existingItems;

  // If existingItems is an array, extract the relevant object
  if (
    Array.isArray(existingItems) &&
    existingItems.length > 0 &&
    typeof existingItems[0] === "object"
  ) {
    existingObject = existingItems[0];
  }

  // Merge the existing items with the new items
  for (const [itemName, quantity] of Object.entries(newItems)) {
    if (existingObject[itemName]) {
      // Item already exists, update the quantity
      existingObject[itemName] += quantity;
    } else {
      // Item doesn't exist, add it to the existing items
      existingObject[itemName] = quantity;
    }
  }
  console.log(existingObject);

  return existingObject;
};

Inventory.prototype.readInventory = function () {
  const inventory = inventoryCollection.find({}).toArray();
  return inventory;
};

module.exports = Inventory;
