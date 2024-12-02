// app.js
const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Sample route
app.get('/', (req, res) => {
    res.send('Hello, World!');
});

// Environment-specific configurations
if (process.env.NODE_ENV === 'production') {
    console.log('Running in production mode');
} else if (process.env.NODE_ENV === 'qa') {
    console.log('Running in QA mode');
} else {
    console.log('Running in development mode');
}

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
