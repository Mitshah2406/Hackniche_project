const express = require('express')
const router = express.Router()

const foodTruckController = require('./controllers/foodTruckController')
const orderController = require('./controllers/orderController.js')
//Admin related apps
router.get('/', foodTruckController.home)

//Cusatomer related Routes (API)
router.post('/place-order', orderController.placeOrder)
router.post('/complete-order', )


// 404
router.get('*', (req,res)=>{
  res.render("404")
})
module.exports = router