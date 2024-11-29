# Use the official Node.js LTS version as the base image
FROM node:lts

# Set the working directory in the container
WORKDIR /app

# Copy only the package.json and package-lock.json for better caching of dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port your server listens on
EXPOSE 5000

# Define the default command to run the server
CMD ["node", "server.js"]
