import React from 'react';

export default function Sighting({ sighting }) {

    const { nickname, is_healthy, location, sighter_email } = sighting;

    const temp_date = new Date(sighting.sighting_date);
    const date = new Intl.DateTimeFormat('default',
        { dateStyle: 'short', timeStyle: 'short' }).format(temp_date);
    
    const mailtoLink = `mailto:${sighter_email}?subject=${nickname} sighting`;

    return (
        <>
            <td>
                { date }
            </td>
            <td>
                { nickname }
            </td>
            <td>
                { is_healthy ? 'Yes' : 'No' }
            </td>
            <td>
                { location }
            </td>
            <td>
                <a href={ mailtoLink }>email</a>
            </td>

        </>
    );
}
