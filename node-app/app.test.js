// app.test.js
const request = require('supertest');
const app = require('./app'); // Assuming app.js is in the same directory

describe('GET /', () => {
    it('should return Hello, World!', async () => {
        const res = await request(app).get('/');
        expect(res.text).toBe('Hello, World!');
        expect(res.status).toBe(200);
    });
});
