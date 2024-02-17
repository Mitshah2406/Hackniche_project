const scheduleCollection = require("../db").collection("schedule");
const bcrypt = require("bcryptjs");
const validator = require("validator");
const md5 = require("md5");
const { ObjectId } = require("mongodb");

let Schedule = function (data) {
  this.data = data;
  this.errors = [];
};

Schedule.prototype.cleanUp = function () {
  this.data = {
    timeSlot: this.data.timeSlot,
    location: this.data.location,
  };
};

Schedule.prototype.createSchedule = async function () {
  this.cleanUp();
  await scheduleCollection.insertOne(this.data);
};
Schedule.prototype.readSchedule = function () {
  const schedule = scheduleCollection.find({}).toArray();
  return schedule;
};

module.exports = Schedule;
