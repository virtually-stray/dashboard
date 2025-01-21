# Use the official Node.js 18 image as a base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose the port your app runs on (adjust if necessary)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
