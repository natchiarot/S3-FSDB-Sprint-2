const express = require("express");
const router = express.Router();

const bcrypt = require("bcrypt");
const { getUserByUsername, createUser } = require("../services/users.pg.dal");

// POST /users/signIn indicates a sign-in request
router.post("/signIn", async (req, res) => {
  // Make sure the required information is in the request
  if (!req.body.username || !req.body.password) {
    res.status(401).end("username and password must be specified");
  } else {
    // Authenticate the user
    const authUser = await getUserByUsername(req.body.username);

    // If authUser is an empty array, no matching user was found
    if (authUser.length == 0)
      res.status(401).end(`user '${req.body.username}' does not exist`);
    else {
      // Attempt to authenticate the supplied password against the retrieved password hash
      if (await bcrypt.compare(req.body.password, authUser.password)) {
        // If the password hashes match, login was successful. Update the session.
        req.session.loggedIn = true;
        req.session.user_id = authUser.user_id;
        req.session.username = authUser.username;

        // Go back to the home page - user should be able to see that they are logged in
        res.redirect("/");
      } else res.status(403).end("password was incorrect");
    }
  }
});

// GET /users/logout immediately logs the user out
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

// POST /users/signin attempts to register a new user
router.post("/signUp", async (req, res) => {
  try {
    // First, make sure all required fields have been submitted
    if (
      !req.body.username ||
      !req.body.password ||
      !req.body.psw_repeat ||
      !req.body.position ||
      !req.body.email ||
      !req.body.phone ||
      !req.body.location
    ) {
      res.status(401).end("All fields must be filled in");
    } else if (req.body.password != req.body.psw_repeat)
      // Next, make sure two passwords were submitted, and they match
      res.status(401).end("Passwords don't match");
    else {
      const result = await createUser(
        req.body.username,
        req.body.password,
        req.body.position,
        req.body.email,
        req.body.phone,
        req.body.location
      );

      // If the result is "23505", there was a duplicate key violation - the username is already in use
      if (result === "23505") {
        res.status(401).end("That username is already in use");
      }
      // Otherwise, the user was created.
      else res.redirect("/");
    }
  } catch (e) {
    console.error(e);
    res.status(500).end(e);
  }
});

// GET /users/signUp shows a user registration form
router.get("/signUp", async (req, res) => {
  res.render("signUp");
});

module.exports = router;
