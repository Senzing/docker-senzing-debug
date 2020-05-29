#!/usr/bin/env bash

# Signal trapping.

handle_term()
{
   echo "signal received, sleep-infinity exiting."
   exit 0
}

trap 'handle_term' TERM

# =============================================================================
# Main
# =============================================================================

if [[ ( ! -z ${INSTALL_MYSQL_CLIENT} ) ]]; then
    echo "Installing mysql-client."

    apt-get update
    wget https://dev.mysql.com/get/Downloads/Connector-ODBC/8.0/mysql-connector-odbc_8.0.20-1debian10_amd64.deb
    apt install ./mysql-connector-odbc_8.0.20-1debian10_amd64.deb
fi

echo "/app/sleep-infinitely.sh is sleeping infinitely."

# Sleep in a manner that allows "docker stop ..." to shutdown gracefully.

sleep infinity &
wait
