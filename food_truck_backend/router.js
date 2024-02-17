const express = require('express')
const router = express.Router()

const foodTruckController = require('./controllers/foodTruckController')
const orderController = require('./controllers/orderController.js')
const customerController = require('./controllers/customerController.js')
//Admin related apps
router.get('/', foodTruckController.home)

//Cusatomer related Routes (API)
router.post('/place-order', orderController.placeOrder)
router.post('/complete-order', )
router.post('/register-customer', customerController.registerCustomer)


// 404
router.get('*', (req,res)=>{
  res.render("404")
})
module.exports = router