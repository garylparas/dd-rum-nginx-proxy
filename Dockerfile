FROM openresty/openresty:1.27.1.2-alpine

# Copy your configs
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY entrypoint.sh /entrypoint.sh

# Set permissions
RUN chmod 500 /entrypoint.sh

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]