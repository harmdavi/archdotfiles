#!/bin/sh

CONFIG_DIR="$HOME/.config"
MIME_FILE="$CONFIG_DIR/mimeapps.list"
ENTRY="application/pdf=org.pwmt.zathura.desktop"

# Ensure config directory exists
mkdir -p "$CONFIG_DIR"

# Create file if it doesn't exist
touch "$MIME_FILE"

# If [Default Applications] section doesn't exist, add it
if ! grep -q "^\[Default Applications\]" "$MIME_FILE"; then
    printf "\n[Default Applications]\n" >> "$MIME_FILE"
fi

# Remove any existing PDF default
sed -i '/^application\/pdf=/d' "$MIME_FILE"

# Add Zathura as default PDF app
sed -i '/^\[Default Applications\]/a '"$ENTRY" "$MIME_FILE"

