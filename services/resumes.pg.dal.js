const psql = require("./pg.auth");

// Function which simply returns every resume in the system
const getAllResumes = async () => {
  const query = "SELECT * FROM resume JOIN applicant USING(applicant_id)";

  try {
    const result = await psql.query(query);

    if (DEBUG)
      console.log(`getAllResumes: found ${result.rows.length} resumes`);

    return result.rows;
  } catch (e) {
    console.error(e);

    // If there's an error, kick the can down the road.
    throw e;
  }
};

// Search all resumes for ones which contain ALL search terms. Terms should be a LIST of strings
// For example, searchAllResumes(["synergy", "dynamics", "code"])
// This is case insensitive if the postgresql server is configured to be english
const searchAllResumes = async (terms) => {
  const query =
    "SELECT * FROM resume JOIN APPLICANT USING(applicant_id) WHERE to_tsvector(resumetext) @@ to_tsquery($1)";

  try {
    const result = await psql.query(query, [terms.join(" & ")]);

    if (DEBUG)
      console.log(
        `searchAllResumes: found ${
          result.rows.length
        } matches for '${terms.join(", ")}'`
      );

    return result.rows;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

module.exports = { getAllResumes, searchAllResumes };
