FROM nginx:alpine

# Copy all files
COPY . /usr/share/nginx/html/

# Fix permissions
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
