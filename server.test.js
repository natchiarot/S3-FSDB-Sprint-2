const request = require('supertest');
const express = require("express");
const PORT = 3000;
global.DEBUG = true;
const app = express();

describe('GET /', () => {
    test('responds with 200 status and renders index page', async () => {
        const response = await request(app).get('/');
        expect(response.status).toBe(200);
        expect(response.text).toContain('index');
    });
});
  
describe('GET /signIn', () => {
    test('responds with 200 status and renders signIn page', async () => {
        const response = await request(app).get('/signIn');
        expect(response.status).toBe(200);
        expect(response.text).toContain('signIn');
    });
});
  
describe('GET /signUp', () => {
    test('responds with 200 status and renders signUp page', async () => {
        const response = await request(app).get('/signUp');
        expect(response.status).toBe(200);
        expect(response.text).toContain('signUp');
    });
});
  
describe('GET /nonexistent-route', () => {
    test('responds with 404 status and renders 404 page', async () => {
        const response = await request(app).get('/nonexistent-route');
        expect(response.status).toBe(404);
        expect(response.text).toContain('404');
    });
});