# Use the official Nginx base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index page
RUN rm -rf ./*

# Copy local files into the container
COPY . .

# Expose port 80 (Nginx default)
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

