const express = require("express");
const router = express.Router();

// A very basic REST API endpoint.
// Note that unlike the web portal, there is no authentication, and searches are not logged.
// Additionally, only GET requests are supported. If a user wants to create a user account, they'll have to use the web portal. :)

const pgDal = require("../services/resumes.pg.dal");
const mDal = require("../services/m.resumes.dal");
const userDal = require("../services/users.pg.dal");

router.get("/resumes/search", async (req, res) => {
  // If no database was specified, show an alert
  if (!req.query.target)
    res.status(401).json({ message: "GET Request must include a target" });
  // If no search terms or job id were specified, show an alert
  else if (!req.query.query && !req.query.job)
    res.status(401).json({ message: "Must include a search query or job id" });
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
      // logSearch(terms, filters, req.session.user_id);

      res.json(resumes);
    } catch (e) {
      res.status(503).json({
        message: "There was an error when handling the request: " + e,
      });
    }
});

// GET for a specific resume
router.get("/resumes/:id", async (req, res) => {
  try {
    if (
      !req.query.source ||
      (req.query.source != "m" && req.query.source != "pg")
    )
      res.status(401).json({
        message: "Resume lookup must include a source database (pg or m)",
      });
    else {
      resume =
        req.query.source === "pg"
          ? await pgDal.getResume(req.params.id)
          : await mDal.getResume(req.params.id);
      res.json(resume);
    }
  } catch (e) {
    res.status(503).json({ message: "Internal server error: " + e });
  }
});

// GET to /resumes returns all resumes
router.get("/resumes", async (req, res) => {
  try {
    // Use the getAllResumes function for both resules, and concatenate the results
    const pgResumes = await pgDal.getAllResumes();
    const mResumes = await mDal.getAllResumes();
    const resumes = pgResumes.concat(mResumes);

    res.json(resumes);
  } catch (e) {
    res.status(503).json({ message: "Internal server error: " + e });
  }
});

// GET to /users returns all users, but not their passwords
router.get("/users", async (req, res) => {
  try {
    const users = await userDal.getAllUsers();

    res.json(users);
  } catch (e) {
    res.status(503).json({ message: "Internal server error: " + e });
  }
});

// GET to /users:id returns a specific user
router.get("/users/:id", async (req, res) => {
  try {
    // Get the requested user
    const user = await userDal.getUserById(req.params.id);

    // Strip the password from the result
    delete user.password;

    res.json(user);
  } catch (e) {
    res.status(503).json({ message: "Internal server error: " + e });
  }
});

router.use("/", async (req, res) => {
  res.status(404).json({ message: "Unknown API endpoint" });
});

module.exports = router;
