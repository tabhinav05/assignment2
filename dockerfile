# Use the official Node.js image as the base image
FROM node:14

# Create and set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files first for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application's code to the container
COPY . .

# Expose the port that your application will run on
EXPOSE 3000

# Command to start the application
CMD ["node", "src/index.js"]
