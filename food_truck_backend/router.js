const express = require("express");
const router = express.Router();

const foodTruckController = require("./controllers/foodTruckController");
const orderController = require("./controllers/orderController.js");
const reviewController = require("./controllers/reviewController.js");
const menuController = require("./controllers/menuController.js");
const customerController = require("./controllers/customerController.js");
const scheduleController = require("./controllers/scheduleController.js");
const inventoryController = require("./controllers/inventoryController.js");
const { GoogleGenerativeAI } = require("@google/generative-ai");
const fs = require("fs");

const genAI = new GoogleGenerativeAI("AIzaSyBC3Vt5GoTwLey49cJwCKDwyeDInirQ4ic");

// Gemini Routes start

// Converts local file information to a GoogleGenerativeAI.Part object.
function fileToGenerativePart(path, mimeType) {
  return {
    inlineData: {
      data: Buffer.from(fs.readFileSync(path)).toString("base64"),
      mimeType,
    },
  };
}

router.post("/generate-gemini-caption", async (req, res) => {
  try {
    const public = path.join(__dirname, "./public");

    const file = req.files.image;
    console.log(file);
    const fileName = new Date().getTime().toString() + path.extname(file.name);
    const savePath = path.join(__dirname, "public", "uploads", fileName);
    await file.mv(savePath);

    console.log(savePath);
    await data.save();
    const { imagePath } = savePath;
    const model = genAI.getGenerativeModel({ model: "gemini-pro-vision" });
    const prompt = "Suggest me caption for this image";

    const imageParts = [fileToGenerativePart(imagePath, "image/png")];

    const result = await model.generateContent([prompt, ...imageParts]);
    const response = await result.response;
    const text = await response.text();

    res.json({ caption: text });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

router.get("/generate-recipe", async (req, res) => {
  try {
    const inventoryItem = req.query.itemName;
    const quantity = req.query.quantity;

    const model = genAI.getGenerativeModel({ model: "gemini-pro" });
    const prompt = `Write a recipe for a dish using ${quantity} ${inventoryItem}.`;

    const result = await model.generateContent(prompt);
    const response = await result.response;
    const recipeText = response.text();

    res.json({ recipe: recipeText });
  } catch (error) {
    console.error(`Error generating recipe: ${error.message}`);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Gemini routes end

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
router.get("/get-schedule", scheduleController.readSchedule);
router.get("/complete-order-form", (req, res) => {
  res.render("completeOrder");
});
router.get("/display-schedule-form", (req, res) => {
  res.render("schedulePageForm");
});
router.post("/create-menu-item", menuController.addItem);
router.get("/get-menu-items", menuController.readMenu);

router.post("/create-inventory", inventoryController.addInventoryItem);
router.get("/get-inventory", inventoryController.readInventory);

router.post("/create-food-truck", foodTruckController.createAdmin);
router.get("/display-cluster-page", (req, res) => {
  res.render("cluster-page");
});

router.get("/display-qr-page/:id", (req, res) => {
  res.render("qrScreen", { id: req.params.id });
});

// 404
router.get("*", (req, res) => {
  res.render("404");
});
module.exports = router;
