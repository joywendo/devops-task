# Use lightweight Nginx image
FROM nginx:alpine

# Copy all web files into Nginx's default html directory
COPY . /usr/share/nginx/html

# Expose port 80 inside the container
EXPOSE 80

# Keep Nginx running in the foreground
CMD ["nginx", "-g", "daemon off;"]
