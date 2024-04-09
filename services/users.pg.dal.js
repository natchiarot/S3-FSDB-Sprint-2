const psql = require("./pg.auth");
const bcrypt = require("bcrypt");

// Looks for a user with the given id, and returns all data for them.
// If there is no match, an empty list will be returned.
const getUserById = async (id) => {
  // This table's name must be written within quotes to clarify to postgres that we are not using the User keyword.
  const query = 'SELECT * FROM "User" WHERE user_id = $1';

  try {
    const result = await psql.query(query, [id]);

    if (DEBUG)
      console.log(`getUserById(${id}): ${result.rowCount} matches found`);

    return result.rows;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

// Creates a new user based on the parameters given.
// If successful, this will return
const createUser = async (username, position, email, phone, location) => {
  const query =
    'INSERT INTO "User" (username, position, email, phone, location) VALUES ($1, $2, $3, $4, $5) RETURNING user_id';

  try {
    const hash = await bcrypt.hash(password, 10);
    // TODO: There is no password column in the database. Discuss database design before continuing.
    const result = await psql.query(query, [
      username,
      position,
      email,
      phone,
      location,
    ]);

    return result.rows;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

module.exports = { getUserById, createUser };
