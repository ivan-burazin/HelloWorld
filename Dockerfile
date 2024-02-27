# Use the Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file
COPY default.conf /etc/nginx/conf.d/

# Copy the HTML file into the Nginx server
COPY index.html /usr/share/nginx/html/index.html

# Nginx listens on port 4321 now, so we expose it
EXPOSE 4321
