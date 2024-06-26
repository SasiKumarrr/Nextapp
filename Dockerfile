# Use an official Node.js runtime as a parent image
FROM node:18.17.0 AS build

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the source code
COPY . .

# Build the Next.js application
RUN npm run build

# Use nginx as the production server
FROM nginx:alpine

# Copy the built app from the previous stage
COPY --from=build /app/.next /usr/share/nginx/html/_next
COPY --from=build /app/public /usr/share/nginx/html/static

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
