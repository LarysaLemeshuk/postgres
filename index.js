const { User, Product, Order, client } = require('./models');
const { getUsers } = require('./api');
const { generatePhones } = require('./utils');

async function runRequest() {
  await client.connect();
  // генерація юзерів
  // const usersArray = await getUsers();
  // const response = await User.bulkCreate(usersArray);

  // генератор товарів
  // const phonesArray = generatePhones(400)
  // const response = await Product.bulkCreate(phonesArray);

  // генератор замовлень

  const {rows: usersArray} = await User.findAll();
  const {rows: productsArray} = await Product.findAll();
  const response = await Order.bulkCreate(usersArray, productsArray);

  console.log(response);
  await client.end();
}

runRequest();
