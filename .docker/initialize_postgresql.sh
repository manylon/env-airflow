#!/bin/sh
set -e

# List your additional databases here
DATABASES=("$POSTGRES_GIS_DB")

# Loop through and create each database
for db in "${DATABASES[@]}"; do
  echo "Creating database: $db"
  psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE $db;
EOSQL
  echo "Database $db created successfully"
done

# Initialize the GIS database
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_GIS_DB" -f /tmp/initialize_postgresql/init_gis.sql
