const express = require("express");
const router = express.Router();

const bcrypt = require("bcrypt");
const { getUserByUsername } = require("../services/users.pg.dal");

// POST to /users/signIn indicates a sign-in request
router.post("/signIn", async (req, res) => {
  // Make sure the required information is in the request
  if (!req.body.username || !req.body.password) {
    res.status(401).end("username and password must be specified");
  } else {
    // Authenticate the user
    const authUser = await getUserByUsername(req.body.username);

    console.log(authUser);

    // If authUser is an empty array, no matching user was found
    if (authUser.length == 0)
      res.status(401).end(`user '${req.body.username}' does not exist`);
    else {
      // Attempt to authenticate the supplied password against the retrieved password hash
      if (await bcrypt.compare(req.body.password, authUser.password)) {
        // Update the session
        req.session.loggedIn = true;
        req.session.user_id = authUser.user_id;
        req.session.username = authUser.username;

        // Go back to the home page - user should be able to see that they are logged in
        res.redirect("/");
      } else res.status(403).end("password was incorrect");
    }
  }
});

router.get("/logout", async (req, res) => {
  // Log the user out by updating the session
  req.session.loggedIn = false;

  res.redirect("/");
});

// GET /users shows a login form
router.get("/", async (req, res) => {
  try {
    res.render("signIn");
  } catch (e) {
    res
      .status(503)
      .end("There was an error when attempting to access the database: " + e);
  }
});

// GET /users/signIn redirects to /users and shows a login form
router.get("/signIn", async (req, res) => {
  res.redirect("/users");
});

router.get("/signUp", async (req, res) => {
  res.render("signUp");
});

module.exports = router;
