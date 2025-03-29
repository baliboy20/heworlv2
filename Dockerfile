



# Use the official Ubuntu base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    nginx \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Copy the project files to the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose port 8080
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
