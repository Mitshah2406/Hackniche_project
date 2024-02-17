const FoodTruck = require('../models/FoodTruck')
const Order = require('../models/Order')
exports.home = async function(req, res) {
  if (req.session.user) {
    if(req.session.user.role == "admin"){
    // fetch feed of posts for current user
    let foodTruck = new FoodTruck()
    let order = new Order()
    let foodTruckDoc = await foodTruck.getfoodTruckById(req.session.user._id)
    let recievedOrders = await order.getOrdersByFoodTruckId(req.session.user._id);
  
   res.send("Admin")
    // res.render('home-dashboard', {
    //   recievedOrders: recievedOrders,
    //   moment
    // })
    } else{
      req.flash("errors", "You must be logged out to perform that action.")
      req.session.save(function() {
        // res.redirect('/admin')
        res.send("Login")
      })
    }
 
  } else {
    // res.render('home-guest', {regErrors: req.flash('regErrors')})
    res.send("home-guest")

  }
}

exports.loginAdmin = function (req, res) {
  console.log("Hittttt")
  console.log(req.body)
  let foodTruck = new FoodTruck(req.body)
  admin.login().then(function (result) {

      req.session.user = { name: foodTruck.data.name, email: foodTruck.data.email, _id: foodTruck.data._id, role: foodTruck.data.role }
      console.log("here")
      req.session.save(function () {
          console.log(result)
          res.json(result) //will send when login successful
      })
  }).catch(function (e) {
      console.log(e);
      // req.flash('errors', e)
      // req.session.save(function () {
      res.json("fail") //when fail
      // })
  })
}

exports.createAdmin = async function (req,res) {

  let foodTruck = new FoodTruck(req.body)
  await foodTruck.createFoodTruck()
  res.send("Done")
}
