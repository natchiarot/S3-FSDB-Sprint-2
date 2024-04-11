const request = require('supertest');
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

describe('GET /resumes', () => {
    test('responds with 200 status and renders resumesIndex page', async () => {
        const response = await request(app).get('/resumes');
        expect(response.status).toBe(200);
        expect(response.text).toContain('resumesIndex');
    });
});

describe('GET /resumes/search', () => {
    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/search');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });

    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/search?target=pg');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });

    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/search?target=all');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });

    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/search?target=pg&job=1');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });

    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/search?target=pg&query=1');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });

    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/search?target=pg&job=1&query=1');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });

    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/search?target=m');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });

    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/search?target=all');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });

    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/search?target=m&job=1');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });
});

describe('GET /resumes/:id', () => {
    test('responds with 302 status and redirects to /', async () => {
        const response = await request(app).get('/resumes/1');
        expect(response.status).toBe(302);
        expect(response.header.location).toBe('/');
    });
});

