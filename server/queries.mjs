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

export const getSightings = async () => await db.any('SELECT * FROM sightings');

export const addSighting = async (body) => (
    await db.one('INSERT INTO sightings'
        + ' (sighting_date, name, location, is_healthy, sighter_email)'
        + ' VALUES'
        + ' (${sighting_date}, ${name}, ${location}, ${is_healthy}, ${sighter_email})'
        + ' RETURNING *',
        body)
);
