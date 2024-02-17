const Schedule = require("../models/Schedule");

exports.addSchedule = async function (req, res) {
  let schedule = new Schedule(req.body);
  await schedule.createSchedule();
  res.send("Added");
};

exports.readSchedule = async function (req, res) {
  let schedule = new Schedule();
  let scheduleData = await schedule.readSchedule();
  res.send(scheduleData);
};
