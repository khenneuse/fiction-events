#!/bin/bash

DB_HOST="localhost"
DB_PORT="5432"
DB_USER="postgres"
DB_PASSWORD="password"
DB_NAME="fictional_events"

# Run SQL file
function run_sql() {
  local file=$1
  PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f $file
}

case $1 in
  init)
    echo "Initializing the database..."
    run_sql "db/init.sql"
    ;;
  wipe)
    echo "Wiping the database..."
    run_sql "db/wipe.sql"
    ;;
  *)
    echo "Usage: $0 {init|wipe}"
    exit 1
    ;;
esac
