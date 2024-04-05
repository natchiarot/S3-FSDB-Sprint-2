const psql = require("./pg.auth");

const getAllResumes = async () => {
  const query = "SELECT * FROM resume JOIN applicant USING(applicant_id)";

  try {
    const result = await psql.query(query);

    if (DEBUG)
      console.log(`getAllResumes: found ${result.rows.length} resumes`);

    return { status: 200, data: result.rows };
  } catch (e) {
    console.error(e);

    return { status: 503, message: "Database query failed unexpectedly: " + e };
  }
};

module.exports = { getAllResumes };
