const Customer = require('../models/Customer')

exports.registerCustomer = async function(req, res){
  let customer = new Customer(req.body)
  customer.createCustomer()
}