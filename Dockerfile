# Use an official Node.js runtime as a parent image
FROM node:18.17.0

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the source code
COPY . .

# Build the Next.js application
RUN npm run build

# Expose port 80
EXPOSE 80

# Start the Next.js application
CMD ["npm", "start"]
