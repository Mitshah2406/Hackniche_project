const Schedule = require("../models/Schedule");

exports.addSchedule = async function (req, res) {
  console.log( req.body)
  let schedule = new Schedule(req.body);
  await schedule.createSchedule();
  res.redirect('/get-all-orders');
};

exports.readSchedule = async function (req, res) {
  let schedule = new Schedule();
  let scheduleData = await schedule.readSchedule();
  res.send(scheduleData);
};
