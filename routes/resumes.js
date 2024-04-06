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
  try {
    // Search query is separated by whitespace, split the query into an array
    // (If there was no query, this quietly does nothing)
    let terms;
    if (req.query.query) terms = req.query.query.split(/\s+/);

    const resumes =
      // Was a job specified?
      req.query.job
        ? // Were search terms specified?
          req.query.query
          ? await pgDal.searchResumesByJob(req.query.job, terms)
          : await pgDal.getResumesByJob(req.query.job)
        : // No job. Were search terms specified?
        req.query.query
        ? await pgDal.searchAllResumes(terms)
        : await pgDal.getAllResumes();

    // Which DAL function to use depends on the query

    // if (req.query.job)
    //   resumes = await pgDal.searchResumesByJob(
    //     parseInt(req.query.job),
    //     terms
    //   );
    // else resumes = await pgDal.searchAllResumes(terms);

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
    const resume = await pgDal.getResume(req.params.id);

    if (resume.length == 0)
      throw new Error("Resume #" + req.params.id + " could not be found.");

    res.render("resumeView", { resume: resume[0] });
  } catch (e) {
    res
      .status(503)
      .end("There was an error when attempting to access the database: " + e);
  }
});

module.exports = router;
