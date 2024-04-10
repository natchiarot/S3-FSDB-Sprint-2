const mdb = require("./m.auth");
const { searchAllResumes } = require("./resumes.pg.dal");

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

async function searchAllResumesM(terms) {
  try {
    await mdb.connect();
    // Creating the regex for the search terms, case insensitive
    const regex = new RegExp(terms.join(" "), "i");

    // Doing the search with regex
    const result = await mdb
      .db("ApplicantManagementDB")
      .collection("Application")
      .find({ "Resume.ResumeText": { $regex: regex } })
      .toArray();

    return result;
  } catch (e) {
    console.log(e);
    throw e;
  } finally {
    mdb.close();
  }
}

async function searchResumesByJob(jobId, terms) {
  try {
    const regex = new RegExp(terms.join(" "), "i");
    await mdb.connect();
    const result = await mdb
      .db("ApplicantManagementDB")
      .collection("Application")
      .find({ "Resume.ResumeText": { $regex: regex } })
      .toArray();

    if (DEBUG)
      console.log(
        `searchResumesByJob(${jobId}): found ${
          result.length
        } matches for '${terms.join(", ")}'`
      );
    return result;
  } catch (e) {
    console.log(e);
    throw e;
  } finally {
    mdb.close();
  }
}

async function getResume(resumeIdString) {
  try {
    // The resume id had the data type string when it needed to have int for MongoDB
    const resumeId = parseInt(resumeIdString, 10);

    console.log;
    await mdb.connect();
    if (DEBUG) console.log("resumeId: " + resumeId);
    const result = await mdb
      .db("ApplicantManagementDB")
      .collection("Application")
      .findOne({ "Resume.Resume_Id": resumeId });
    if (DEBUG)
      console.log(`getResume(${resumeId}): found ${result ? 1 : 0} matches`);
    return result;
  } catch (e) {
    console.log(e);
    throw e;
  } finally {
    mdb.close();
  }
}

module.exports = {
  getAllResumes,
  getResumesByJob,
  searchAllResumesM,
  searchResumesByJob,
  getResume,
};
