require("dotenv").config();
const dal = require("./services/users.pg.dal");

dal.createUser(
  "lrwilson",
  "password",
  "Senior Junior Programmer",
  "lauren.wilson@keyin.com",
  "123-4567",
  "Canada"
);
