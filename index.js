const express = require('express');
const stickerController = require('./stickercontroller');
const emojiController = require('./emojicontroller');
const con = require('./database');
const app = express();
const PORT = process.env.PORT || 6123;

// Middleware to serve static files from the 'uploads' directory
app.use('/uploads', express.static('uploads'));

// Middleware to parse JSON and urlencoded form data
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Set up routes
app.use('/sticker', stickerController);
app.use('/emoji', emojiController);

// Home route
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});
app.get('/sticker', (req, res) => {
    res.sendFile(__dirname + '/sticker.html');
});
// Emoji route
app.get('/emoji', (req, res) => {
    res.sendFile(__dirname + '/emoji.html');
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
