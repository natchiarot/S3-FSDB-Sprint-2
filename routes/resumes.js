const express = require("express");
const router = express.Router();

router.get("/", (req, res) => {
  res.render("resumesIndex");
});

router.get("/search", (req, res) => {
  res.render("resumesSearch");
});

module.exports = router;
