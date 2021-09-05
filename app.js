const express = require("express");
const cors = require("cors");
const db = require("./Config/database.js");
const app = express();
const PORT = process.env.PORT || 5000;

app.use(express.json({ limit: "30mb", extended: true }));
app.use(express.urlencoded({ limit: "30mb", extended: true }));
app.use(cors());

db.authenticate()
  .then(() => {
    console.log("Db connected");
  })
  .catch((error) => {
    console.error("Unable to connect to the database:", error);
  });

app.listen(PORT, () => {
  console.log("Server running successfully on port " + PORT);
});
