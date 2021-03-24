import express from 'express';
import * as db from './queries.mjs';
import cors from 'cors';

const app = express();
const port = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));


app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
})


app.get('/sightings', async (req, res) => {
    db.getSightings()
        .then(sightings => res.json(sightings))
        .catch(e => console.error(e.stack));
})

app.post('/sightings', async (req, res) => {

    const body = req.body;
    const { id } = await db.getUser(body.sighter_email);

    body.sighter_id = id;
    
    db.addSighting(body)
        .then(sighting => res.json(sighting))
        .catch(e => console.error(e.stack));
})

app.post('/user', async (req, res) => {
    const { email } = req.body;

    db.getUser(email)
        .then(output => console.log(output));
})


