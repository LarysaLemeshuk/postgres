const _ = require('lodash');

class Order {
  static _client;
  static _tableNames;

  static async bulkCreate(usersArray, productsArray) {
    // 1 ми створюємо нові замовлення
    // для другої дії повертаємо з запиту id створених замовлень
    const ordersValuesString = usersArray
      .map((currentUser) =>
        new Array(_.random(1, 3, false))
          .fill(null)
          .map(() => `(${currentUser.id})`)
          .join(',')
      )
      .join(',');
    const { rows: orders } = await this._client.query(
      `INSERT INTO ${this._tableNames[0]} (customer_id) VALUES ${ordersValuesString} RETURNING id;`
    );
    // 2 нагенерувати позиції у кожне замовлення
    const productsToOrdersValuesString = orders
      .map((currentOrder) => {
        const positionsArray = new Array(_.random(1, 4, false))
          .fill(null)
          .map(() => productsArray[_.random(0, productsArray.length - 1)]); // рандомно вибираємо товар з таблиці товарів

        return [...new Set(positionsArray)]
          .map(
            (currentProduct) =>
              `(${currentOrder.id}, ${currentProduct.id}, ${_.random(
                1,
                3,
                false
              )})`
          ) // рандомно вибираємо кількість товару
          .join(',');
      })
      .join(',');

    return await this._client.query(
      `INSERT INTO ${this._tableNames[1]} (order_id, products_id, quantity)
        VALUES ${productsToOrdersValuesString};`
    );
  }
}

module.exports = Order;
