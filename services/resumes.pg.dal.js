const psql = require("./pg.auth");
// const { logSearch } = require("./searchlog.pg.js");

// Function which simply returns every resume in the system
const getAllResumes = async () => {
  const query = "SELECT * FROM resume JOIN applicant USING(applicant_id)";

  try {
    const result = await psql.query(query);
    // logSearch([], { database: "pg" });

    if (DEBUG)
      console.log(`pg getAllResumes: found ${result.rows.length} resumes`);

    // Append the data source as a property of each row
    result.rows = result.rows.map((row) => {
      return { ...row, source: "pg" };
    });

    return result.rows;
  } catch (e) {
    console.error(e);

    // If there's an error, kick the can down the road.
    throw e;
  }
};

const getResumesByJob = async (jobId) => {
  const query =
    "SELECT * FROM resume JOIN applicant USING(applicant_id) JOIN application USING(applicant_id) WHERE job_id = $1";

  try {
    const result = await psql.query(query, [jobId]);
    // logSearch([], { database: "pg", jobId: jobId });

    if (DEBUG)
      console.log(
        `pg getResumesByJob(${jobId}): found ${result.rows.length} resumes`
      );

    // Append the data source as a property of each row
    result.rows = result.rows.map((row) => {
      return { ...row, source: "pg" };
    });

    return result.rows;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

// Search all resumes for ones which contain ALL search terms. Terms should be a LIST of strings
// For example, searchAllResumes(["synergy", "dynamics", "code"])
// This uses the default 'english' configuration, and is case insensitive
const searchAllResumes = async (terms) => {
  const query =
    "SELECT * FROM resume JOIN applicant USING(applicant_id) WHERE to_tsvector('english', resumetext) @@ to_tsquery('english', $1);";

  try {
    const result = await psql.query(query, [terms.join(" & ")]);
    // Log this postgres-based search
    // logSearch(terms, { database: "pg" });

    if (DEBUG)
      console.log(
        `pg searchAllResumes: found ${
          result.rows.length
        } matches for '${terms.join(", ")}'`
      );

    // Append the data source as a property of each row
    result.rows = result.rows.map((row) => {
      return { ...row, source: "pg" };
    });

    return result.rows;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

// Searches all resumes tied to an application for a specific job
// Results are further filtered by search terms
const searchResumesByJob = async (jobId, terms) => {
  // For code readability, I'm using escaped newlines. This should not affect the actual query. :)
  const query =
    "SELECT * FROM resume \
    JOIN applicant USING(applicant_id) \
    JOIN application USING(applicant_id) \
    WHERE job_id = $1 AND to_tsvector('english', resumetext) @@ to_tsquery('english', $2)";

  try {
    const result = await psql.query(query, [jobId, terms.join(" & ")]);
    // Log this postgres-based search
    // logSearch(terms, { database: "pg", jobId: jobId });

    if (DEBUG)
      console.log(
        `pg searchResumesByJob(${jobId}): found ${
          result.rows.length
        } matches for '${terms.join(", ")}'`
      );

    // Append the data source as a property of each row
    result.rows = result.rows.map((row) => {
      return { ...row, source: "pg" };
    });

    return result.rows;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

// Retrieves a specified resume, along with information regarding the applicant tied to the resume
const getResume = async (resumeId) => {
  const query =
    "SELECT * FROM resume JOIN applicant USING(applicant_id) WHERE resume_id = $1";

  try {
    const result = await psql.query(query, [resumeId]);

    if (DEBUG)
      console.log(
        `pg getResume(${resumeId}): found ${result.rows.length} matches`
      );

    return result.rows;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

module.exports = {
  getAllResumes,
  getResumesByJob,
  searchAllResumes,
  searchResumesByJob,
  getResume,
};
