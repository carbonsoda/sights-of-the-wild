import dotenv from 'dotenv';
import pgp from 'pg-promise';


dotenv.config({ path: "./.env" });

const db = pgp()({
    database: process.env.DATABASE_NAME,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASS,
    host: "localhost",
    port: "5432"
})

export const getSightings = async () => (
    await db.any('SELECT s.sighting_date, i.nickname, s.location, s.is_healthy, s.sighter_email'
        + ' FROM sightings AS s'
        + ' INNER JOIN individuals AS i'
        + ' ON s.name = i.ind_id'
        + ' ORDER BY sighting_date DESC'
    )
);

export const addSighting = async (body) => (
    await db.one(
        'INSERT INTO sightings'
        + ' (sighting_date, name, location, is_healthy, sighter_email, sighter_id)'
        + ' VALUES'
        + ' (${sighting_date}, ${name}, ${location}, ${is_healthy}, ${sighter_email}, ${sighter_id})'
        + ' RETURNING *',
        body)
        .catch(e => console.error(e.stack))
);

export const getUser = async (email) => (
    await db.one(
        'SELECT id FROM users'
        + ' WHERE sighter_email = $1',
        [email]
    ).catch(err => addUser(email))
);

export const addUser = async (email) => (
    await db.one('INSERT INTO users (sighter_email) VALUES ($1) RETURNING id', [email])
)
