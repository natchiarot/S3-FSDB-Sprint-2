const express = require("express");
const router = express.Router();

const pgDal = require("../services/resumes.pg.dal");

// GET to "resumes/" renders a list of all resumes
// In the future, this should instead display a form to get search terms from the user
router.get("/", async (req, res) => {
  // The DAL can potentially throw errors, handle them here with try/catch.
  try {
    const resumes = await pgDal.getAllResumes();

    res.render("resumesIndex", { resumes: resumes });
  } catch (e) {
    res
      .status(503)
      .end("There was an error when attempting to access the database: " + e);
  }
});

// GET to "resumes/search" expects a 'query' parameter containing words to search for.
// For instance, resumes/search?query=node%20react
router.get("/search", async (req, res) => {
  // If there is no query, behaviour is different
  if (!req.query.query) {
    res.status(400).end("Query must include search query.");
  } else {
    try {
      // Search query is separated by whitespace, split the query into an array
      const terms = req.query.query.split(/\s+/);

      const resumes = await pgDal.searchAllResumes(terms);

      res.render("resumesSearch", { query: req.query.query, resumes: resumes });
    } catch (e) {
      res
        .status(503)
        .end("There was an error when attempting to access the database: " + e);
    }
  }
});

module.exports = router;
