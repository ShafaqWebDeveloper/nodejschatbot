const express = require('express');
const pool = require('./database');
const bodyParser = require('body-parser');
const multer = require('multer');
const router = express.Router();

const storage = multer.diskStorage({
    destination: './uploads/',
    filename: function (req, file, callback) {
        const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
        callback(null, file.fieldname + '-' + uniqueSuffix + '.' + file.originalname.split('.').pop());
    }
});

const upload = multer({ storage: storage }).single('simg');

// Parse incoming requests with JSON or form data
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true }));

// Add this endpoint to insert data into the "sticker" table
router.post('/sticker', function (req, res) {
    upload(req, res, function (err) {
        if (err) {
            console.error('Error uploading file:', err);
            return res.status(500).send('Internal Server Error');
        }
        console.log('File path:', req.file ? req.file.path : 'No file uploaded');

        const { sname } = req.body;
        const simgFileName = req.file ? req.file.filename : 'default_image_filename.png';

        // Create a MySQL connection from the pool
        pool.getConnection((err, connection) => {
            if (err) {
                console.error('Error connecting to database:', err);
                return res.status(500).send('Internal Server Error');
            }

            // SQL query to insert form data
            const sql = 'INSERT INTO `sticker` (sname, simg) VALUES (?, ?)';

            // Execute the query with form data
            connection.query(sql, [sname, simgFileName], (queryErr, results) => {
                // Release the connection back to the pool
                connection.release();

                if (queryErr) {
                    console.error('Error executing query:', queryErr);
                    return res.status(500).send('Internal Server Error');
                }

                // Successfully inserted data
                return res.status(200).send('Form data inserted successfully');
            });
        });
    });
});

// Add this endpoint to select all data from the "sticker" table
router.get('/sticker/all', function (req, res) {
    // Use the pool.query method for better code readability
    pool.query('SELECT * FROM `sticker`', (queryErr, results) => {
        if (queryErr) {
            console.error('Error executing query:', queryErr);
            return res.status(500).send('Internal Server Error');
        }

        // Successfully retrieved data, send it as JSON response
        return res.status(200).json(results);
    });
});
module.exports = router;