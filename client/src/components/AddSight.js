import React from 'react';

export default function AddSight() {
    const [dateTime, setDateTime] = React.useState();
    const [name, setName] = React.useState('');
    const [location, setLocation] = React.useState('');
    const [healthyChk, setHealthyChk] = React.useState(false);
    const [email, setEmail] = React.useState('');
    const [errors, setErrors] = React.useState('');

    function validate() {
        let allErrors = [];

        if (!dateTime) {
            allErrors.push('time and/or date')
        }
        if (!name) {
            allErrors.push('name')
        }
        if (!location) {
            allErrors.push('location')
        }
        if (!email) {
            allErrors.push('email')
        }

        if (allErrors) {
            setErrors(`Incomplete ${allErrors.join(', ')}`);
            return false;
        }

        setErrors('');
        return true;
    }

    const submitForm = async (e) => {
        e.preventDefault();

        if (validate()) {

            const body = { dateTime, name, location, healthyChk, email };

            fetch('http://localhost:5000',

                {
                    method: 'POST',
                    headers: {
                        'Content-type': 'application/json'
                    },
                    body: JSON.stringify(body)
                })
                .then(res => res.json())
                .then(data => console.log(data))
                .catch(e => console.error(e.stack));
        }

    }

    return (
        <>
            <h2>Add a sighting</h2>

            <form class="add" onSubmit={ submitForm }>
                <label> Date & time seen:</label>
                <input
                    type="datetime-local"
                    onChange={ e => setDateTime(e.target.value) }
                />
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
                <label> Healthy </label>
                <input
                    type="checkbox"
                    onChange={ () => setHealthyChk(!healthyChk) }
                />
                <label> Contact email:</label>
                <input
                    type="text"
                    onChange={ e => setEmail(e.target.value) }
                />

                <span>{ errors }</span>
                <button type="submit"> Submit </button>
            </form>

        </>
    );
}
