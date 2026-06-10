# Use an official lightweight Node.js image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD [ "npm", "start" ]
