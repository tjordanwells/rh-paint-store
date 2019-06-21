const express = require('express');
const bodyParser = require('body-parser');
const routes = require('./routes');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(express.static("..//build"));

app.use(routes);

// Server Listening on...
app.listen(PORT, () => {
  console.log('Server listening on port:', PORT);
});
