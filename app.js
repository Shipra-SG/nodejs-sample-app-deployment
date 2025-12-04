const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send(`
    <h1>Node.js App Deployed on AWS EC2 (Ubuntu)</h1>
    <p>Successfully deployed by Shipra</p>
  `);
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
