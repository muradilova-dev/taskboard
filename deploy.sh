#!/bin/sh
set -e

APP_NAME="Taskboard"
APP_DIR="taskboard"
REPOSITORY_URL="https://github.com/sharton/taskboard"
DB_NAME="taskboard"
DB_USER="taskboard"
DB_PASSWORD="taskboard"
APP_PORT="8000"

echo "=== [1/7] Step 1 ==="
REQUIRED_PKG="git python3 python3-pip python3-venv postgresql postgresql-contrib curl"

for pkg in $REQUIRED_PKG; do
    if ! dpkg -l | grep -q "^ii $pkg "; then
    echo "Downloanding packet : $pkg"
    sudo apt-get update -y && sudo apt-get install -y $pkg
    fi
done
