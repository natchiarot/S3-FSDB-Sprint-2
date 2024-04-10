const express = require("express");
const router = express.Router();

const mDal = require("../services/m.resumes.dal");
// const { logSearch } = require("../services/searchlog.pg.js");

// GET to "resumes/" renders a list of all resumes
// In the future, this should instead display a form to get search terms from the user
router.get("/", async (req, res) => {
  // The DAL can potentially throw errors, handle them here with try/catch.
  try {
    const resumes = await mDal.getAllResumes();

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
  try {
    // Search query is passed in as a plaintext string, with each term separated by whitespace
    // Split the query into an array, if it exists
    let terms = [];
    if (req.query.query) terms = req.query.query.split(/\s+/);

    const resumes =
      // Was a job specified?
      req.query.job
        ? // Were search terms specified?
          req.query.query
          ? await mDal.searchResumesByJob(req.query.job, terms)
          : await mDal.getResumesByJob(req.query.job)
        : // No job. Were search terms specified?
        req.query.query
        ? await mDal.searchAllResumes(terms)
        : await mDal.getAllResumes();

    // After the relevant search has been performed (without error), log the search
    // filters object must be created based on the request.
    // When mongodb support is added, the 'database' value will differ

    // let filters = { database: "pg" };
    // if (req.query.job) filters["job"] = req.query.job;

    // logSearch(terms, filters);

    res.render("resumeSearchResults", {
      query: req.query.query,
      resumes: resumes,
    });
  } catch (e) {
    res
      .status(503)
      .end("There was an error when attempting to access the database: " + e);
  }
});

// GET a specific resume
router.get("/:id", async (req, res) => {
  try {
    const resume = await mDal.getResume(req.params.id);

    // Log the resume object
    if (DEBUG) console.log("Resume object:", resume);

    if (resume.length == 0)
      throw new Error("Resume #" + req.params.id + " could not be found.");

    // For postgres this is how it is:
    // res.render("resumeView", { resume: resume[0] });

    // For MongoDB it has to be like this:
    res.render("resumeView", { resume });
  } catch (e) {
    res
      .status(503)
      .end("There was an error when attempting to access the database: " + e);
  }
});

module.exports = router;
