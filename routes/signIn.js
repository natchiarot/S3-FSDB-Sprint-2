const express = require("express");
const router = express.Router();

const bcrypt = require("bcrypt");
const { getUserByUsername } = require("../services/users.pg.dal");

// POST to /users indicates a sign-in request
router.post("/", async (req, res) => {
  // Make sure the required information is in the request
  if (!req.body.username || !req.body.password) {
    res.status(404).end("username and password must be specified");
  } else {
    // Authenticate the user
    const authUser = await getUserByUsername(req.body.username);

    if (await bcrypt.compare(req.body.password, authUser.password)) {
      console.log("valid auth");
    } else console.log("failed auth");
  }
});

// Basic GET shows a login form
router.get("/", async (req, res) => {
  res.render("signIn");
});

module.exports = router;
