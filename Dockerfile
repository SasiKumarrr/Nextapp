# Dockerfile
FROM nginx:alpine

# Copy build files into nginx web directory
COPY .next /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to run nginx
CMD ["nginx", "-g", "daemon off;"]
