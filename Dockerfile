FROM nginx:1.29.0

# Install logrotate and cron
RUN apt-get update && apt-get install -y logrotate cron

# Copy and set permissions for the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
