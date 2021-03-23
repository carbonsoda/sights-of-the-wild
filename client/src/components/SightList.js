import React from 'react';
import Sighting from './Sighting';

export default function SightList() {
    const [sightings, setSightings] = React.useState([]);

    const getSightings = async () => {
        fetch('http://localhost:5000/sightings')
            .then(res => res.json())
            .then(allSightings => setSightings(allSightings))
            .catch(e => console.error(e.stack));
    }

    React.useEffect(() => {
        getSightings();
    }, []);

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
