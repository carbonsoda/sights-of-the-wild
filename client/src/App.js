import './App.css';
import React from 'react';
import AddSight from './components/AddSight';
import SightList from './components/SightList';


function App() {
  const [sightings, setSightings] = React.useState([]);

  const addSighting = async (body) => {
    fetch('http://localhost:5000/sightings',
      {
        method: 'POST',
        headers: {
          'Content-type': 'application/json'
        },
        body: JSON.stringify(body)
      })
      .then(res => res.json())
      .then(() => getSightings())
      .catch(e => console.error(e.stack));
  }

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
    <div className="App">
      <AddSight addSighting={ addSighting }/>
      <SightList sightings={ sightings } />
    </div>
  );
}

export default App;
