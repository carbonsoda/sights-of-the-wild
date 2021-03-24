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


app.get('/sightings',
    async (req, res) => res.json(await db.getSightings()))

app.post('/sightings', async (req, res) => {
    const body = req.body;
    db.addSighting(body)
        .then(sighting => res.json(sighting));
})

