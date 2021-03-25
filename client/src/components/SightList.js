import React from 'react';
import Sighting from './Sighting';

export default function SightList({ sightings }) {

    return (
        <>
            <h2>Sightings List</h2>
            <table
                class="table table-hover table-bordered mx-auto"
            >
                <thead class="table-dark">
                    <tr>
                        <th>Date</th>
                        <th>Name</th>
                        <th>Health</th>
                        <th>Location</th>
                        <th>Contact</th>
                    </tr>

                </thead>
                <tbody>
                    {
                        sightings.map((sighting) => (
                            <tr key={ sighting.s_id }>
                                <Sighting sighting={ sighting } />
                            </tr>

                        ))
                    }
                </tbody>
            </table>
        </>
    );
}
