const orderCollection = require("../db").collection("order");
const menuCollection = require("../db").collection("menu");
const inventoryCollection = require("../db").collection("inventory");
const bcrypt = require("bcryptjs");
const validator = require("validator");
const md5 = require("md5");
const { ObjectId } = require("mongodb");
const { Module } = require("webpack");
const { Double } = require("mongodb");
let Order = function (data) {
  this.data = data;
  this.errors = [];
};

Order.prototype.cleanUp = function () {
  this.data = {
    customerId: this.data.customerId,
    customerName: this.data.customerName,
    foodTruckId: this.data.foodTruckId,
    price: this.data.price,
    orderItem: this.data.orderItem,
    orderDeadline: new Date(this.data.orderDeadline),
    status: "pending", //pending //completed //cancelled
    preference: this.data.preference,
    addon: this.data.addon,
    orderDate: new Date(),
  };
};

Order.prototype.placeOrder = async function () {
  this.cleanUp();
  await orderCollection.insertOne(this.data);
};

Order.prototype.getOrdersByFoodTruckId = async function (ftId) {
  const recievedOrders = await orderCollection
    .find({ status: "pending" })
    .toArray();
  console.log(recievedOrders + "esytd");
  return recievedOrders;
};

Order.prototype.completeOrder = async function (orderId) {
  const order = await orderCollection.findOne({
    _id: new ObjectId(orderId),
  });

  if (order && order.orderItem) {
    for (const item of order.orderItem) {
      for (const itemName in item) {
        if (item.hasOwnProperty(itemName)) {
          const quantity = item[itemName];
          const menuItem = await menuCollection.findOne(
            {
              itemName: item.itemName,
            },
            { requirements: 1 }
          );

          if (menuItem) {
            console.log(`Item Name: ${item.itemName}, Quantity: ${item.qty}`);
            console.log("Menu Item Details:", menuItem.requirements);

            // Find corresponding requirements in the inventory collection
            const inventoryItem = await inventoryCollection.findOne(
              {},
              { inventoryItems: 1 }
            );
            if (inventoryItem && inventoryItem.inventoryItems) {
              const allItems = inventoryItem.inventoryItems;

              for (const inventoryItemName in allItems) {
                if (
                  allItems.hasOwnProperty(inventoryItemName) &&
                  menuItem.requirements.some(
                    (req) => req.item === inventoryItemName
                  )
                ) {
                  const inventoryQuantity = allItems[inventoryItemName];
                  console.log(
                    `Item Name: ${inventoryItemName}, Quantity Before: ${inventoryQuantity}`
                  );

                  // Subtract the quantity from the inventory
                  const updatedQuantity =
                    Double(inventoryQuantity) - Double(quantity);
                  console.log(
                    `Item Name: ${inventoryItemName}, Quantity After: ${updatedQuantity}`
                  );
                  const doubleUpdatedQuantity = Double(updatedQuantity);
                  console.log(doubleUpdatedQuantity);
                  // If you want to update the inventory, uncomment the following lines

                  // KuSH fIX THIS FOR UPDATE INVENTORY IN DB

                  // await inventoryCollection.updateOne(
                  //   {},
                  //   {
                  //     $set: {
                  //       [`inventoryItems.${inventoryItemName}`]:
                  //         doubleUpdatedQuantity,
                  //     },
                  //   }
                  // );
                }
              }
            } else {
              console.log("Error fetching inventory");
            }
          } else {
            console.log(`Item Name: ${itemName} not found in menu`);
          }
        }
      }
    }

    // AFTER ABOVE LOGIC SOLVE UNCOMMENT BELOW CODE

    // If you want to update the status to "completed"
    // Uncomment the following lines
    await orderCollection.findOneAndUpdate(
      { _id: new ObjectId(orderId) },
      { $set: { status: "completed" } }
    );
  } else {
    console.log("Order or orderItem not found");
  }
};
module.exports = Order;
