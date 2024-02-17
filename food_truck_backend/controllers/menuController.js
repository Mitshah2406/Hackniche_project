const Menu = require("../models/Menu")

exports.addItem = async function (req, res) {
  let menu = new Menu(req.body)
  await menu.createMenu()
  res.send("Added")
}

exports.readMenu = async function (req, res) {
  let menu = new Menu()
  let menuItems = await menu.readMenu()
  res.send(menuItems)
}
