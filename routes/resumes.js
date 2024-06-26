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
  // If no database was specified, show an alert
  if (!req.query.target)
    res.status(401).render("alert", {
      header: "No Database",
      message: "No database was selected for this search.",
    });
  // If no search terms or job id were specified, show an alert
  else if (!req.query.query && !req.query.job)
    res.render("alert", {
      header: "No Parameters",
      message:
        "Search terms and/or a job ID must be specified for a resume search.",
    });
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

      // Log this search, including terms, filters, and the user's id
      logSearch(terms, filters, req.session.user_id);

      if (terms.length > 0)
        resumes.forEach((resume) => {
          terms.forEach(
            (term) =>
              (resume.resumetext = resume.resumetext.replace(
                term,
                '<span class="match">' + term + "</span>"
              ))
          );
        });

      res.render("resumeSearchResults", {
        query: req.query.query || "",
        job: req.query.job || "",
        resumes: resumes,
        target: req.query.target,
      });
    } catch (e) {
      res.status(503).render("alert", {
        header: "503",
        message:
          "There was an error when attempting to access the database: " + e,
      });
    }
});

// GET a specific resume
router.get("/:id", async (req, res) => {
  try {
    if (
      !req.query.source ||
      (req.query.source != "m" && req.query.source != "pg")
    )
      res.status(401).render("alert", {
        heading: "401",
        message:
          "A source database must be specified for single resume lookup.",
      });
    else {
      const resume =
        req.query.source === "pg"
          ? await pgDal.getResume(req.params.id)
          : await mDal.getResume(req.params.id);

      // Log the resume object
      if (DEBUG) console.log("Resume object:", resume);

      req.query.source === "pg"
        ? res.render("resumeView", { resume: resume[0] })
        : res.render("resumeView", { resume });
    }
  } catch (e) {
    res.status(503).render("alert", {
      heading: "503",
      message:
        "There was an error when attempting to access the database: " + e,
    });
  }
});

module.exports = router;
