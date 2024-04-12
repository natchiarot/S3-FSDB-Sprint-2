const mdb = require("./m.auth");

async function getAllResumes() {
  let client;
  try {
    // Connecting to the MongoDB database
    client = await mdb.connect();

    const database = client.db("ApplicantManagementDB");
    let result = await database
      .collection("Application")
      .aggregate([])
      .toArray();
    if (DEBUG) console.log(`getAllResumes: found ${result.length} resumes`);

    result = result.map((r) => {
      return { ...r, source: "m" };
    });

    const finalResult = {
      resume_id: result.resume.resume_id,
      applicantname: result.applicant.applicantname,
      resumetext: result.resume.resumetext,
      source: item.source,
    };

    return finalResult;
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
    let result = await mdb
      .db("ApplicantManagementDB")
      .collection("Application")
      .find({ "job.job_id": jobId });

    if (DEBUG) console.log("Result: ", result);

    // If the result is null returns an empty array
    if (!result) {
      return [];
    }

    result = result.map((r) => {
      return { ...r, source: "m" };
    });

    const finalResult = {
      resume_id: result.resume.resume_id,
      applicantname: result.applicant.applicantname,
      resumetext: result.resume.resumetext,
      source: item.source,
    };

    // Returns the final result in an array of the final result (so it can work the same as the other functions with forEach)
    return [finalResult];
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
    let result = await mdb
      .db("ApplicantManagementDB")
      .collection("Application")
      .find({ "resume.resumetext": { $regex: regex } })
      .toArray();

    result = result.map((r) => {
      return { ...r, source: "m" };
    });

    const finalResult = result.map((item) => ({
      resume_id: item.resume.resume_id,
      applicantname: item.applicant.applicantname,
      resumetext: item.resume.resumetext,
      source: item.source,
    }));

    return finalResult;
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
    let result = await mdb
      .db("ApplicantManagementDB")
      .collection("Application")
      .find({
        $and: [
          { "resume.resumetext": { $regex: regex } },
          { "job.job_id": jobId },
        ],
      })
      .toArray();

    result = result.map((r) => {
      return { ...r, source: "m" };
    });

    if (DEBUG)
      console.log(
        `searchResumesByJob(${jobId}): found ${
          result.length
        } matches for '${terms.join(", ")}'`
      );

    const finalResult = result.map((item) => ({
      resume_id: item.resume.resume_id,
      applicantname: item.applicant.applicantname,
      resumetext: item.resume.resumetext,
      source: item.source,
    }));

    return finalResult;
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
      .findOne({ "resume.resume_id": resumeId });
    if (DEBUG) console.log(`getResume(${resumeId}): found ${result} matches`);

    const finalResult = {
      resume_id: result.resume.resume_id,
      applicantname: result.applicant.applicantname,
      resumetext: result.resume.resumetext,
    };
    return finalResult;
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
