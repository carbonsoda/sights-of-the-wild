const express = require('express');
const app = express();
const cors = require('cors');
const port = process.env.PORT || 5000;

const { db, pgp } = require('./db_setup');

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));


app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
})

app.get('/sightings', (req, res) => {
    db.any('SELECT * FROM sightings')
        .then(data => res.json(data))
})
