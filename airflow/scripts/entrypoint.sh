#!/usr/bin/env bash

# Fail on error
set -e

# Optionally install requirements if present
if [ -f /opt/airflow/requirements.txt ]; then
    pip install --user -r /opt/airflow/requirements.txt
fi

# Run the command passed to the container
exec "$@"