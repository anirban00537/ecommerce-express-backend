const Sequelize = require("sequelize");
const db = require("../config/database");

const product = db.define("product", {
  title: {
    type: Sequelize.STRING,
  },
  category: {
    type: Sequelize.STRING,
  },
  price: {
    type: Sequelize.NUMBER,
  },
  description: {
    type: Sequelize.STRING,
  },
  imageUrl: {
    type: Sequelize.STRING,
  },
});

product.sync().then(() => {
  console.log("table created");
});
module.exports = product;
