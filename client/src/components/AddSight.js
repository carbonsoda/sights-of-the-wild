import React from 'react';

export default function AddSight() {
    const [dateTime, setDateTime] = React.useState();
    const [name, setName] = React.useState('');
    const [location, setLocation] = React.useState('');
    const [healthyChk, setHealthyChk] = React.useState(false);
    const [email, setEmail] = React.useState('');


    function submitForm(e) {
        e.preventDefault();

        let body = { dateTime, name, location, healthyChk, email };
        console.log(body);
    }

    return (
        <>
            <h2>Add a sighting</h2>

            <form class="add" onSubmit={submitForm}>
                <label> Date & time seen:</label>
                <input
                    type="datetime-local"
                    onChange={ e => setDateTime(e.target.value)}
                />
                <label> Animal name: </label>
                <input
                    type="text"
                    onChange={ e => setName(e.target.value)}
                />
                <label> Location: </label>
                <input
                    type="text"
                    onChange={ e => setLocation(e.target.value)}
                />
                <label> Healthy </label>
                <input
                    type="checkbox"
                    onChange={() => setHealthyChk(!healthyChk)}
                /> 
                <label> Contact email:</label>
                <input
                    type="text"
                    onChange={ e => setEmail(e.target.value)}
                />

                <button type="submit"> Submit </button>
            </form>

        </>
    );
}
