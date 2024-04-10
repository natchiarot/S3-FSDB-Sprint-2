const { MongoClient } = require("mongodb");

const atlas =
  "mongodb+srv://natchrt:ZuUUsUu4SYM1qhmY@firstcluster0.ugpgdhm.mongodb.net/";

const pool = new MongoClient(atlas);

module.exports = pool;
