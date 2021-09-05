const express = require("express");
const FuzzySearch = require("fuzzy-search");
const router = express.Router();
const db = require("../config/database");
const product = require("../models/product");
const Sequelize = require("sequelize");

router.get("/", async (req, res) => {
  const products = await product.findAll();
  res.json(products);
});

router.get("/search/:query", async (req, res) => {
  const { query } = req.params;
  try {
    const allProducts = await product.findAll();
    const searcher = new FuzzySearch(
      allProducts,
      ["title", "category", "price", "description"],
      {
        caseSensitive: false,
      }
    );
    const result = searcher.search(query);
    res.status(200).json(result);
  } catch (err) {
    console.log(err);
  }
});

router.post("/", async (req, res) => {
  let { title, category, price, description, imageUrl } = req.body;
  const newProduct = await product.create({
    title,
    category,
    price,
    description,
    imageUrl,
  });

  res.status(200).json(newProduct);
});

module.exports = router;
