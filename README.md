# Animal Sighting Tracker


## Contents

  - [Description](#description)
  - [Requirements](#project-requirements)
  - [Installation](#installation)
  - [Progress](#progress)


### Description
This project is a part of Techtonica's curriculum ([source](https://github.com/Techtonica/curriculum/blob/main/projects/mern-pern-project.md)).

This app will use PostgreSQL, ReactJS, and Express.


### Project Requirements

There are [additional features](https://github.com/Techtonica/curriculum/blob/main/projects/mern-pern-project.md#optional-bonus-features) that can be added on after the following requirements are met.

#### Features

- Show a list of all sightings, including the nickname of the individual sighted at each one (using a JOIN query).
- Form to add a new sighting record

#### Data 

TODO


### Installation

All the required packages can be installed using the following command in the project directory:
```
npm install
```

First start the server by using `npm start` in that directory, then start the app by running `npm start` in the client directory.



### Progress

- `.env` is setup properly and Express can successfully connect to Postgres.
- The front-end can make and receive requests, but need to figure out result output format.
  - Also need to add components for things like adding/viewing individuals.
- I'm unsure about passing in time/date to the database, in a way that formats it to `TIMESTAMPTZ` format (for the sake of UTC conversion). 

