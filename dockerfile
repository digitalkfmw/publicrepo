# Use Ubuntu as the base image
FROM ubuntu:latest
# Set a non-interactive environment to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive 
# Update package lists and install nginx
RUN apt-get update && apt-get install -y nginx && apt-get clean 
# Copy the local index.html to the Nginx web root
COPY index.html /var/www/html/index.html
# Expose port 80 for HTTP traffic
EXPOSE 80
# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
