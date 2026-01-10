const { Client } = require('pg');
const { configs } = require('../configs');
const User = require('./User');

const client = new Client(configs);
User._client = client;
User._tableName = 'users';

module.exports = {
    client,
    User // готова до роботи модель!!!
}

/*
 які дії будуть відбуватись в models/index.js

 1. налаштовуємо конфіг підключення до БД
 2. підключення кожної нашої моделі до БД

*/
