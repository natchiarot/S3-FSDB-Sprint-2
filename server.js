// Load .env file into process.env
require("dotenv").config();

const express = require("express");
// For simplicity's sake, use express-session with the default data storage configuration
// Note that this scales poorly and is not suitable for production environments - but it should be fine for this assignment
// Note also that these sessions are ephemeral, and are lost when the server stops running
const session = require("express-session");

const PORT = 3000;
global.DEBUG = true;

const app = express();
// Configure middleware
// Use EJS to render views
app.set("view engine", "ejs");
// Support for urlencoded forms as part of request body
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

// Configure the express-session middleware
app.use(
  session({
    secret: process.env.SESSION_SECRET || "Default session secret",
    cookie: { maxAge: 30 * 60 * 1000 }, // cookie expires after 30 minutes
    saveUninitialized: false, // don't save uninitialized/empty sessions
    resave: false, // don't 'resave' sessions which aren't modified in any way during a request
  })
);

// Some data from the user session must be exposed as template locals so it can be rendered by EJS
app.use((req, res, next) => {
  res.locals.loggedIn = req.session.loggedIn || false;
  res.locals.user_id = req.session.user_id || -1;
  res.locals.username = req.session.username || "unauthenticated";
  next();
});

// use a router for any requests to /resumes
const resumesRouter = require("./routes/resumes");
app.use("/resumes", resumesRouter);

// Another router for resuests to /users
// Note that this route handles user authentication
const usersRouter = require("./routes/users");
app.use("/users", usersRouter);

// handle GET requests to root
app.get("/", async (req, res) => {
  res.render("index", { session: req.session });
});

// As a last resort, respond to unmatched routes with a 404
app.use(async (req, res) => {
  res.status(404).render("404");
});

// Listen!
app.listen(PORT, () => {
  console.log(
    `Web server listening on port ${PORT} (http://localhost:${PORT})`
  );
});
