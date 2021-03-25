import React from 'react';

export default function AddSight({addSighting}) {
    const [date, setDate] = React.useState();
    const [time, setTime] = React.useState('12:00');
    const [name, setName] = React.useState('');
    const [location, setLocation] = React.useState('');
    const [healthyChk, setHealthyChk] = React.useState(false);
    const [email, setEmail] = React.useState('');

    const submitForm = async (e) => {
        e.preventDefault();

        if (date && time && name && location && email) {
            const body = {
                "sighting_date": new Date(date + ' ' + time),
                "name": name,
                "location": location,
                "sighter_email": email,
                "is_healthy": healthyChk
            }

            addSighting(body);
        }

    }

    return (
        <>
            <h2>Add a sighting</h2>

            <form className="add" onSubmit={ submitForm }>
                <label> Date seen:</label>
                <input
                    type="date"
                    value={ date }
                    onChange={ e => setDate(e.target.value) }
                />
                <label> Time seen:</label>
                <input
                    type="time"
                    value={time}
                    pattern="[0-9]{2}:[0-9]{2}"
                    onChange={ e => setTime(e.target.value) }
                ></input>
                <label> Animal name: </label>
                <input
                    type="text"
                    onChange={ e => setName(e.target.value) }
                />
                <label> Location: </label>
                <input
                    type="text"
                    onChange={ e => setLocation(e.target.value) }
                />
                <label> Seems healthy? </label>
                <input
                    type="checkbox"
                    onChange={ () => setHealthyChk(!healthyChk) }
                />
                <label> Contact email:</label>
                <input
                    type="text"
                    onChange={ e => setEmail(e.target.value) }
                />

                <span> </span>
                <button type="submit"> Submit </button>
            </form>

        </>
    );
}
