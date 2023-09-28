# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Install Git
RUN apt-get update && apt-get install -y git

# Create a directory for your PHP application
RUN mkdir -p /var/www/html

# Clone your PHP website from Git
RUN git clone https://github.com/yourusername/your-php-repo.git /var/www/html

# Copy your Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port Nginx will listen on
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
