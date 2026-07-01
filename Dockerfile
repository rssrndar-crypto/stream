FROM nginx:1.27-alpine

# Remove default files from the base image to avoid the "Welcome to nginx!" page
RUN rm -rf /usr/share/nginx/html/* || true

# Add custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy site files
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
