const psql = require("./pg.auth");
const bcrypt = require("bcrypt");

// Reads a user with the given id, and returns all data for them.
// If there is no matching user, an empty list will be returned.
const getUserById = async (id) => {
  // This table's name must be written within quotes to clarify to postgres that we are not using the User keyword.
  const query = 'SELECT * FROM "User" WHERE user_id = $1';

  try {
    const result = await psql.query(query, [id]);

    if (DEBUG)
      console.log(`getUserById(${id}): ${result.rowCount} matches found`);

    if (result.rows.length > 0) return result.rows[0];
    else return [];
  } catch (e) {
    console.error(e);
    throw e;
  }
};

// Reads a user with the given username, and returns all data for them.
// If there is no matching user, an empty list will be returned.
// Note that the username is case sensitive
const getUserByUsername = async (username) => {
  // This table's name must be written within quotes to clarify to postgres that we are not using the User keyword.
  const query = 'SELECT * FROM "User" WHERE USERNAME LIKE $1';

  try {
    const result = await psql.query(query, [username]);

    if (DEBUG)
      console.log(
        `getUserByUsername(${username}): ${result.rowCount} matches found`
      );

    if (result.rows.length > 0) return result.rows[0];
    else return [];
  } catch (e) {
    console.error(e);
    throw e;
  }
};

// Creates a new user based on the parameters given.
// If successful, this will return the new user's id
const createUser = async (
  username,
  password,
  position,
  email,
  phone,
  location
) => {
  const query =
    'INSERT INTO "User" (username, password, position, email, phone, location) VALUES ($1, $2, $3, $4, $5, $6) RETURNING user_id';

  try {
    const hash = await bcrypt.hash(password, 10);
    // TODO: There is no password column in the database. Discuss database design before continuing.
    const result = await psql.query(query, [
      username,
      hash,
      position,
      email,
      phone,
      location,
    ]);

    // The query returns the new user_id, which this function returns
    return result.rows[0].user_id;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

// Updates an existing user. The user id must be supplied, as well as a 'data' object consisting of key/value pairs.
// The keys must be an existing database column. If a password is given, it will first be hashed.
const updateUser = async (id, data) => {
  try {
    // If the update data includes a password, replace the password with a hash of the password
    if (data.password) data.password = await bcrypt.hash(data.password, 10);

    // Create a string containing all supplied data
    const fmtSet = Object.keys(data)
      .map((key, index) => `"${key}"=$${index + 2}`)
      .join(", ");

    // Create a query using the given data
    // The data is also used to generate the list of parameters to give to the query
    // I really hope Array.concat() is idempotent...
    const query = `UPDATE "User" SET ${fmtSet} WHERE user_id = $1`;

    const result = await psql.query(
      query,
      [id].concat(Object.keys(data).map((key) => data[key]))
    );

    return result;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

const deleteUser = async (id) => {
  const query = 'DELETE FROM "User" WHERE user_id = $1';

  try {
    const result = await psql.query(query, [id]);

    return result;
  } catch (e) {
    console.error(e);
    throw e;
  }
};

module.exports = {
  getUserById,
  getUserByUsername,
  createUser,
  updateUser,
  deleteUser,
};
