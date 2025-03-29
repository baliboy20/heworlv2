const express = require('express');
const app = express();
const port = 3000;

app.get('/helloworld', (req, res) => {
  res.send('Hello, World!');
});

app.get('/', (req, res) => {
  res.send('Hello, World! from default route');
});


app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
