const psql = require("./pg.auth");

async function getAllUsers() {
    const query = "SELECT * FROM users";
    const result = await psql.executeQuery(query);
    return result.rows;
}

async function searchUsers(search) {
    const query = `SELECT * FROM users WHERE name LIKE '%${search}%'`;
    const result = await psql.executeQuery(query);
    return result.rows;
}

async function addUser(user) {
    const query = `INSERT INTO users (username, position, email, phonenumber, location, password) VALUES ('${user.username}', '${user.position}', '${user.email}', '${user.phonenumber}', '${user.location}', '${user.password}')`;
    await psql.executeQuery(query);
    return MessageChannel("User added successfully");
}
