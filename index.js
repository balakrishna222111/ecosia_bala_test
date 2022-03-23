// Requiring express in our server
const express = require('express');
const app = express();

const port = process.env.PORT || 3000;
const HOST = '0.0.0.0';

// Return the library author's favorite tree.
app.get('/tree', function(req, res) {
res.json({
	MyfavoriteTree: 'Mango'
});
});

// Created a server 
app.listen(port, function(req, res) {
console.log(`Application is running on http://${HOST}:${port}`);
});
