const express = require("express");
// Load .env file into process.env
require("dotenv").config();

const PORT = 3000;
global.DEBUG = true;

const app = express();
// Configure middleware
// Use EJS to render views
app.set("view engine", "ejs");
// Support for urlencoded forms as part of request body
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

// use a router for any requests to /resumes
const resumesRouter = require("./routes/resumes");
app.use("/resumes", resumesRouter);

app.get("/", (req, res) => {
  res.render("index");
});

const usersRouter = require("./routes/users");
app.use("/users", usersRouter);

app.get("/", (req, res) => {
  res.render("signIn");
});

app.get("/signIn", (req, res) => {
  res.render("signIn");
});

app.get("/signUp", (req, res) => {
  res.render("signUp");
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
