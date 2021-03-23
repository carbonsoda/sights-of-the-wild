import React from 'react';

export default function Sighting({ sighting }) {
    // console.log(sighting);
    const { sighting_date, sighting_time, individual_seen, is_healthy, location, sighter_email } = sighting;

    // TODO: add after checking {contact}'s format
    const mailtoLink = `mailto:${sighter_email}?subject=${individual_seen} sighting`;

    // TODO: merge date + time together and format appropriately

    return (
        <>
            <td>
                { sighting_date }
            </td>
            <td>
                { individual_seen }
            </td>
            <td>
                { is_healthy ? 'Yes' : 'No' }
            </td>
            <td>
                { location }
            </td>
            <td>
                <a href={ sighter_email }>email</a>
            </td>

        </>
    );
}
