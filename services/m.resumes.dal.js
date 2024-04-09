const { ObjectId } = require("mongodb");
const mdb = require("./m.auth");

async function getAllResumes() {
  let client;
  try {
    // Connecting to the MongoDB database
    client = await mdb.connect();

    const database = client.db("ApplicantManagementDB");
    const result = await database
      .collection("Application")
      .aggregate([])
      .toArray();
    if (DEBUG) console.log(`getAllResumes: found ${result.length} resumes`);
    return result;
  } catch (e) {
    console.log(e);
    throw e;
  } finally {
    // Closing the MongoDB connection
    if (client) {
      mdb.close();
    }
  }
}

async function getResumesByJob(jobId) {
  try {
    await mdb.connect();
    const result = await mdb
      .db("ApplicantManagementDB")
      .collection("Application")
      .findOne({ "Job.Job_Id": jobId });
    return result;
  } catch (e) {
    console.log(e);
    throw e;
  } finally {
    mdb.close();
  }
}

module.exports = { getAllResumes, getResumesByJob };
