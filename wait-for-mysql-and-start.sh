#!/bin/bash

MYSQL_SERVER=$(getent hosts mysql | awk '{ print $1 }')
MYSQL_SERVER_PORT=3306
# Function to check if MySQL is ready
mysql_ready() {
    exec 6<>/dev/tcp/$MYSQL_SERVER/$MYSQL_SERVER_PORT
}

while ! ; do
    echo "Trying to connect to MySQL server..."
    sleep 1
done

# Wait for MySQL to be ready
until mysql_ready; do
    echo 'Waiting for MySQL to become available...'
    sleep 1
done

echo 'MySQL is ready! Starting erp-backend...'

./start.sh
while true; do sleep 3600; done