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
