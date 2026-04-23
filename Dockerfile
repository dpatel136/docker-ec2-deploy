# Base image
FROM node:18

# App directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 80

# Start app
CMD ["npm", "start"]

:wq!
     #vim src/index.js
const express = require('express');
const app = express();
const PORT = 80;

app.get('/', (req, res) => {
  res.send('Hello Dinesh! 🚀 Your Docker EC2 deployment is working.');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

