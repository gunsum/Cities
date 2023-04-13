const express = require('express');
const pg = require('pg');
const cors = require('cors');

const app = express();
const port = process.env.PORT || 3000;

// Configure CORS middleware
app.use(cors());

// Connect to the PostgreSQL database
const pool = new pg.Pool({
    user: 'yourusername',
    password: 'yourpassword',
    database: 'yourdatabase',
    host: 'localhost',
    port: 5432
});

// Define a route to retrieve the city names and populations
app.get('/cities', (req, res) => {
    pool.query('SELECT name, adjectives FROM city_adjectives', (error, result) => {
        if (error) {
            console.error(error);
            res.status(500).json({ error: 'Internal server error' });
        } else {
            res.status(200).json(result.rows);
        }
    });
});

// Start the server
app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
});
