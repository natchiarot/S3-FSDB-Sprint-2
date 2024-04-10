const express = require("express");
const router = express.Router();

// const pgDal = require("../services/users.pg.dal");

router.get("/", async (req, res) => {
    try {
        // const users = await pgDal.getAllUsers();
        res.render("usersIndex", { users: users });
    } catch (e) {
        res
        .status(503)
        .end("There was an error when attempting to access the database: " + e);
    }
});

router.get("/signIn", async (req, res) => {
    try {
        // const users = await pgDal.getAllUsers();
        res.render("signIn", { users: users });
    } catch (e) {
        res
        .status(503)
        .end("There was an error when attempting to access the database: " + e);
    }
});

router.get("/signUp", async (req, res) => {
    try {
        // const users = await pgDal.getAllUsers();
        res.render("signUp", { users: users });
    } catch (e) {
        res
        .status(503)
        .end("There was an error when attempting to access the database: " + e);
    }
});

module.exports = router;