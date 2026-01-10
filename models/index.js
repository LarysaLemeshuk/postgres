const { Client } = require('pg');
const { configs } = require('../configs');
const User = require('./User');
const Product = require('./Product');

const client = new Client(configs);
// фаршируємо модель клієнтом і назвою таблиці
User._client = client;
User._tableName = 'users';

Product._client = client;
Product._tableName = 'products';

module.exports = {
  client,
  User, // готова до роботи модель!!!
  Product // готова до роботи модель!!!
};

/*
 які дії будуть відбуватись в models/index.js

 1. налаштовуємо конфіг підключення до БД
 2. підключення кожної нашої моделі до БД

*/
