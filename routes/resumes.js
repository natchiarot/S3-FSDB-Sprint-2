const express = require("express");
const router = express.Router();

const mDal = require("../services/m.resumes.dal");
const pgDal = require("../services/resumes.pg.dal");
const { logSearch } = require("../services/searchlog.pg.js");

// GET to "resumes/" renders a form to search for resumes
router.get("/", async (req, res) => {
  res.render("resumesIndex");
});

// GET to "resumes/search" expects a 'query' parameter containing words to search for.
// For instance, resumes/search?query=node%20react
router.get("/search", async (req, res) => {
  // If no database was specified, redirect to resumes index
  if (!req.query.target) res.redirect("/");
  // If no search terms or job id were specified, redirect to resumes index
  else if (!req.query.query && !req.query.job) res.redirect("/");
  else
    try {
      // Search query is passed in as a plaintext string, with each term separated by whitespace
      // Split the query into an array, if it exists
      let terms = [];
      if (req.query.query) terms = req.query.query.split(/\s+/);

      let resumes = [];

      // First, handle Postgres searches
      if (req.query.target == "pg" || req.query.target == "all") {
        // DAL functions return arrays - therefore, we can push DAL results onto the resumes array
        resumes = resumes.concat(
          // Was a job specified?
          req.query.job
            ? // Were search terms specified?
              req.query.query
              ? await pgDal.searchResumesByJob(req.query.job, terms)
              : await pgDal.getResumesByJob(req.query.job)
            : // No job. Search terms must have been specified.
              await pgDal.searchAllResumes(terms)
        );
      }

      // Then, handle MongoDB searches
      if (req.query.target == "m" || req.query.target == "all") {
        // DAL functions return arrays - therefore, we can push DAL results onto the resumes array
        resumes = resumes.concat(
          // Was a job specified?
          req.query.job
            ? // Were search terms specified?
              req.query.query
              ? await mDal.searchResumesByJob(req.query.job, terms)
              : await mDal.getResumesByJob(req.query.job)
            : // No job. Search terms must have been specified.
              await mDal.searchAllResumes(terms)
        );
      }

      // After the search has been performed (without error), log the search
      // filters object must be created based on the request.

      // There will always be a 'target' filter, but the 'job' filter is optional
      let filters = { target: req.query.target };
      if (req.query.job) filters["job"] = req.query.job;

      logSearch(terms, filters);

      res.render("resumeSearchResults", {
        query: req.query.query || "",
        job: req.query.job || "",
        resumes: resumes,
        target: req.query.target,
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
