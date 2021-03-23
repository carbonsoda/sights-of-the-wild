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


app.get('/', (req, res) => {
    res.send('Hi!')
})



db.any('SELECT * FROM species')
    .then(function (data) {
        console.log('DATA:', data)
    })
    .catch(function (error) {
        console.log('ERROR:', error)
    })

