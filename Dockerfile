FROM nginx:1.27-alpine

# Copy required files
COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /entrypoint.sh

# Set permissions
RUN chmod 500 /entrypoint.sh

# Expose HTTP port
EXPOSE 8080

# Run entrypoint script
ENTRYPOINT ["/entrypoint.sh"]
