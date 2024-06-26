# Dockerfile
FROM httpd:alpine

# Copy Next.js build files
COPY .next /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

