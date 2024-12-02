const app = require('./app');
const request = require('supertest');
let server;

beforeAll(async () => {
    // Use a different port for testing
    server = app.listen(3001);
});

afterAll(async () => {
    await server.close();
});

describe('GET /', () => {
    it('should return Hello, World!', async () => {
        const response = await request(app)
            .get('/')
            .expect(200);
        expect(response.text).toBe('Hello, World!');
    });
});
