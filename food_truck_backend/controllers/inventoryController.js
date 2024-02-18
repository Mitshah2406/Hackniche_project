const Inventory = require("../models/Inventory");

exports.addInventoryItem = async function (req, res) {
  let inventory = new Inventory(req.body);
  await inventory.createInventory();
  res.send("Added");
};

exports.readInventory = async function (req, res) {
  let inventory = new Inventory();
  let inventoryItems = await inventory.readInventory();
  res.send(inventoryItems);
};
