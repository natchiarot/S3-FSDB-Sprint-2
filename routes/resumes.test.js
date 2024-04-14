const request = require("supertest");
const express = require("express");
const router = require("../routes/resumes");

jest.mock("../services/m.resumes.dal", () => ({
  searchResumesByJob: jest.fn(),
  getResumesByJob: jest.fn(),
  searchAllResumes: jest.fn(),
  getResume: jest.fn(),
}));

jest.mock("../services/resumes.pg.dal", () => ({
  searchResumesByJob: jest.fn(),
  getResumesByJob: jest.fn(),
  searchAllResumes: jest.fn(),
  getResume: jest.fn(),
}));

jest.mock("../services/searchlog.pg.js", () => ({
  logSearch: jest.fn(),
}));

const app = express();
app.use("/resumes", router);

describe("GET /resumes/search", () => {
  test("1responds with 302 status and redirects to /", async () => {
    const response = await request(app).get("/resumes/search");
    expect(response.status).toBe(302);
    expect(response.header.location).toBe("/");
  });

  test("2responds with 302 status and redirects to /", async () => {
    const response = await request(app).get("/resumes/search?target=pg");
    expect(response.status).toBe(302);
    expect(response.header.location).toBe("/");
  });

  test("3responds with 302 status and redirects to /", async () => {
    const response = await request(app).get("/resumes/search?target=all");
    expect(response.status).toBe(302);
    expect(response.header.location).toBe("/");
  });

  test("4responds with 302 status and redirects to /", async () => {
    const response = await request(app).get(
      "/resumes/search?target=pg&query=1"
    );
  });

  test("responds with 302 status and redirects to /", async () => {
    const response = await request(app).get("/resumes/search?target=m");
    expect(response.status).toBe(302);
    expect(response.header.location).toBe("/");
  });

  test("responds with 302 status and redirects to /", async () => {
    const response = await request(app).get("/resumes/search?target=all");
    expect(response.status).toBe(302);
    expect(response.header.location).toBe("/");
  });
});
