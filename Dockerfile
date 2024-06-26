# Dockerfile
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy build files into nginx web directory
COPY .next /usr/share/nginx/html

# Copy a custom nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 (default for nginx)
EXPOSE 80

# Command to run nginx
CMD ["nginx", "-g", "daemon off;"]



