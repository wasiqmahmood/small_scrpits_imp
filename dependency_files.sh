#!/bin/bash

PROJECT_DIR="/home/scripts_files"
DEPENDENCIES_FILE="requirements.txt"

cd "$PROJECT_DIR" || exit
git pull origin main

# If Python dependencies exist
if [ -f "$DEPENDENCIES_FILE" ]; then
    pip install -r "$DEPENDENCIES_FILE" --upgrade
    git add "$DEPENDENCIES_FILE"
    git commit -m "Auto-update: $(date)"
    git push origin main
fi
