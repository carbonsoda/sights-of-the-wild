import React from 'react';
import Sighting from './Sighting';
import { DataGrid } from '@material-ui/data-grid';

export default function SightList({ sightings }) {

    const formatDate = (oldDate) => (
        new Intl.DateTimeFormat('default',
            {
                dateStyle: 'short',
                timeStyle: 'short'
            })
            .format(
                new Date(oldDate)
            )
    )

    const columns = [
        { field: 'date', headerName: 'Date', flex: .5 },
        { field: 'nickname', headerName: 'Name', flex: .5 },
        { field: 'is_healthy', headerName: 'Healthy?', flex: .35 },
        { field: 'location', headerName: 'Location', flex: .5 },
        {
            field: 'email', headerName: 'Contact',
            flex: .32,
            renderCell: (params) => (
                <a
                    href={ `mailto:${params}?subject=sighting` }>
                    email</a>
            )
        }
    ]

    const rows = sightings.map(sighting =>
    ({
        id: sighting.s_id,
        date: formatDate(sighting.sighting_date),
        nickname: sighting.nickname,
        is_healthy: sighting.is_healthy,
        location: sighting.location,
        email: sighting.sighter_email
    })
    );


    return (
        <div
            className="sightList"
        >
            <h2>Sightings List</h2>

            <DataGrid
                rows={ rows } columns={ columns }
                pageSize={ 10 } autoHeight
            />
        </div>
    );
}
