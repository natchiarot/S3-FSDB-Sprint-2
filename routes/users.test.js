const request = require('supertest');
const express = require("express");
const router = require("../routes/users");

jest.mock("../services/users.pg.dal", () => ({
    getAllUsers: jest.fn(),
}));

const app = express();
app.use("/users", router);

describe('GET /users', () => {
    test('responds with 200 status and renders signIn page', async () => {
        const response = await request(app).get('/users');
        expect(response.status).toBe(200);
        expect(response.text).toContain('signIn');
    });
});

describe('GET /users/signIn', () => {
    test('responds with 200 status and renders signIn page', async () => {
        const response = await request(app).get('/users/signIn');
        expect(response.status).toBe(200);
        expect(response.text).toContain('signIn');
    });
});

describe('GET /users/signUp', () => {
    test('responds with 200 status and renders signUp page', async () => {
        const response = await request(app).get('/users/signUp');
        expect(response.status).toBe(200);
        expect(response.text).toContain('signUp');
    });
});

describe('GET /users/nonexistent-route', () => {
    test('responds with 404 status and renders 404 page', async () => {
        const response = await request(app).get('/users/nonexistent-route');
        expect(response.status).toBe(404);
        expect(response.text).toContain('404');
    });
});