1;2D#!/bin/bash

# Script to copy seafront web-static files to GitHub Pages

SOURCE_DIR="../seafront/seafront/web-static"
DEST_DIR="."

echo "Copying seafront web interface..."
echo "Source: $SOURCE_DIR"
echo "Destination: $DEST_DIR"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy all files from source to destination
# Using rsync to preserve structure and only update changed files
rsync -av --delete "$SOURCE_DIR/" "$DEST_DIR/"

echo "✓ Copy complete!"
echo "The seafront interface will be available at: trickoh.github.io/seafront/"
