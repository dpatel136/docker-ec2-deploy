const express = require('express');
const app = express();
const PORT = 80;

app.get('/', (req, res) => {
  res.send('Hello Dinesh! 🚀 Your Docker EC2 deployment is working.');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

