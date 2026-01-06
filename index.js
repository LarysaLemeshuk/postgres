const { Client } = require('pg');
const { mapUsers } = require('./utils');

const configs = {
  host: 'localhost',
  port: 5432,
  user: 'larusalemeshuk',
  password: 'postgres',
  database: 'students',
};

const client = new Client(configs);

const usersArray = [
  {
    firstName: 'Test1',
    lastName: 'Doe',
    isSubscribe: true,
    gender: 'male',
  },
  {
    firstName: 'Test2',
    lastName: 'Doe',
    isSubscribe: true,
    gender: 'male',
  },
  {
    firstName: 'Test3',
    lastName: 'Doe',
    isSubscribe: true,
    gender: 'male',
  },
];

async function runRequest() {
  await client.connect();


  const response = await client.query(
    `INSERT INTO users (first_name, last_name, is_subscribe, gender) VALUES
    ${mapUsers(usersArray)};`
  );

  console.log(response);

  await client.end();
}

runRequest();
