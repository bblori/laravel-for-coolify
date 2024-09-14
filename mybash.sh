#!/bin/bash

# Append APP_DEBUG=true to the .env file
echo "APP_DEBUG=true" >> /app/.env
echo "DB_CONNECTION=\"mysql\"" >> /app/.env
echo "DB_DATABASE=\"test\"" >> /app/.env
echo "DB_HOST=173.249.14.18" >> /app/.env
echo "DB_PASSWORD=\"Volvo2000\"" >> /app/.env
echo "DB_USERNAME=\"test\"" >> /app/.env

# Transform the nginx configuration
node /assets/scripts/prestart.mjs /assets/nginx.template.conf /etc/nginx.conf

# Start supervisor
supervisord -c /etc/supervisord.conf -n
