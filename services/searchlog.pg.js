const psql = require("./pg.auth");

// Records the search terms and filters of a resume search into the postgres log table
// (Note that even if a mongo search was requested, only postgres is used to save the logs)
// terms should be an array, with each element being a search term string
//  If there were no search terms, pass an empty array
// if specified, filters should be an object
// the id of the user making the request must also be given

// Note that this is asynchronous, and may not neccesarily be completed by the time the search response is sent
// Because of this, errors thrown by this function are only shown in the server console

// example usage: logSearch(["Java", "Kotlin"], {database: "pg", job: 5}, 1)
const logSearch = async (terms, filters, userId = {}) => {
  const query =
    "INSERT INTO search_logs (searchdatetime, searchterms, filters, user_id) VALUES (now(), $1, $2, $3)";

  try {
    // All filters must be formatted into a string to be stored in the database
    const filterString = Object.keys(filters)
      .map((filter) => filter + "=" + filters[filter])
      .join(",");

    psql.query(query, [terms.join(" "), filterString, userId]);
  } catch (e) {
    console.error("Error while logging search: " + e);
  }
};

module.exports = { logSearch };
