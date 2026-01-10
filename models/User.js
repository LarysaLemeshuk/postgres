const { mapUsers } = require('../utils');

class User {
  // конфгурація pg для підключення до бази даних, ми будемо передавати клієнт ззовні при сьвореннні класу моделі User
  static _client;
  // імʼя таблиці, з якою ми працюємо
  static _tableName;

  static async findAll() {
    return await this._client.query(`SELECT * FROM  ${this._tableName};`);
  }

  static async bulkCreate(usersArray) {
    // тут має бути запит до бд на створення юзерів
    return await this._client.query(
      //User._client.query
      `INSERT INTO users (first_name, last_name, email, is_subscribe, gender) VALUES
            ${mapUsers(usersArray)};`
    );
  }
}

User.bulkCreate;

module.exports = User;
