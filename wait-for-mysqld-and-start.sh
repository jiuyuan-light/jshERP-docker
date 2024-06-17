#!/bin/bash

MYSQL_SERVER=$(getent hosts mysql | awk '{ print $1 }')
# Function to check if MySQLD is ready
mysqld_ready() {
    exec 6<>/dev/tcp/$MYSQL_SERVER/$MYSQL_SERVER_PORT
}

# Wait for MySQLD to be ready
until mysqld_ready; do
    echo 'Waiting for MySQLD to become available...'
    sleep 1
done

echo 'MySQLD is ready! Starting erp-backend...'

./start.sh
while true; do sleep 3600; done
