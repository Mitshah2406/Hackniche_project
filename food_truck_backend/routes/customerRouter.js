// const express = require("express");
// const router = express.Router();
// const Customer = require("../models/Customer"); // Assuming your model is in the 'models' directory

// router.post("/register", async (req, res) => {
//   const customerData = {
//     name: req.body.name,
//     mobile: req.body.mobile,
//     email: req.body.email,
//     password: req.body.password,
//     orderData: req.body.orderData,
//   };

//   const customer = new Customer(customerData);

//   try {
//     await customer.createCustomer();
//     res.status(201).json({ message: "Customer registered successfully." });
//   } catch (error) {
//     res.status(500).json({ error: "Internal Server Error" });
//   }
// });

// router.post("/login", async (req, res) => {
//   const customerData = {
//     email: req.body.email,
//     password: req.body.password,
//   };

//   const customer = new Customer(customerData);

//   try {
//     const userData = await customer.login();
//     res.status(200).json(userData);
//   } catch (error) {
//     res.status(401).json({ error: "Invalid username / password." });
//   }
// });

// module.exports = router;
