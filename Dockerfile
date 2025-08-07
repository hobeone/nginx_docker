FROM nginx:1.29.0-alpine

# Install logrotate
RUN apk add --no-cache logrotate



# Copy and set permissions for the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
