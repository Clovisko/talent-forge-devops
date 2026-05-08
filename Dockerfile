# Use official Nginx base image
FROM nginx:alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html into Nginx's web directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx (this is already default, but explicit is fine)
CMD ["nginx", "-g", "daemon off;"]
