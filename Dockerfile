# Use a lightweight Nginx web server base image
FROM nginx:alpine

# Copy static web file into Nginx web root directory
COPY index.html /usr/share/nginx/html/index.html

# Expose container port 80
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]