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

async function getResumesByJob(jobIdString) {
  try {
    const jobId = parseInt(jobIdString);
    await mdb.connect();
    const result = await mdb
      .db("ApplicantManagementDB")
      .collection("Application")
      .findOne({ "Job.Job_Id": jobId });
    // Returns the result in an array of the result (so it can work the same as the other functions with forEach)
    // If the result is null the array is returned empty
    return result ? [result] : [];
  } catch (e) {
    console.log(e);
    throw e;
  } finally {
    mdb.close();
  }
}

async function searchAllResumes(terms) {
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

async function searchResumesByJob(jobIdString, terms) {
  try {
    const jobId = parseInt(jobIdString);
    const regex = new RegExp(terms.join(" "), "i");
    await mdb.connect();
    const result = await mdb
      .db("ApplicantManagementDB")
      .collection("Application")
      .find({
        $and: [
          { "Resume.ResumeText": { $regex: regex } },
          { "Job.Job_Id": jobId },
        ],
      })
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
    const resumeId = parseInt(resumeIdString);

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
  searchAllResumes,
  searchResumesByJob,
  getResume,
};
