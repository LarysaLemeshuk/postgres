const { Client } = require('pg');
const { mapUsers } = require('./utils');
const { configs } = require('./configs');
const { getUsers } = require('./api');

const client = new Client(configs);

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


