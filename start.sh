#!/bin/sh

set -e

echo "============================================================="
echo "Starting db migrations --->>>>"
echo
/app/migrate -path /app/migration -database "$DB_SOURCE" -verbose up
echo
echo "Done db migrations --->>>>"
echo "============================================================="
echo "App Started ....."
exec "$@"