const request = require('supertest');
const app = require('./app'); // Import the app without starting the server

let server;

beforeAll(() => {
    // Start the server before tests run
    server = app.listen(3000);
});

afterAll(() => {
    // Close the server after tests finish
    server.close();
});

describe('GET /', () => {
    it('should return Hello, World!', async () => {
        const res = await request(app).get('/');
        expect(res.text).toBe('Hello, World!');
        expect(res.status).toBe(200);
    });
});
