#!/bin/bash

# This script allows switching Plymouth themes on Arch Linux.
# It verifies the theme, applies it, and shows the current theme.

# Ensure the script is run as root
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root (use sudo)."
  exit 1
fi

# Check if plymouth-set-default-theme is available
if ! command -v plymouth-set-default-theme &>/dev/null; then
  echo "Error: 'plymouth-set-default-theme' is not installed."
  exit 1
fi

themes_dir="/usr/share/plymouth/themes"

current_theme=$(plymouth-set-default-theme)

echo "Current Plymouth theme: $current_theme"
echo
echo "Available themes:"
available_themes=$(ls "$themes_dir")
echo "$available_themes"
echo

read -p "Enter the name of the theme you want to apply: " new_theme

if [[ ! -d "$themes_dir/$new_theme" ]]; then
  echo "Error: Theme '$new_theme' does not exist in $themes_dir."
  exit 1
fi

echo "Applying theme '$new_theme'..."
plymouth-set-default-theme "$new_theme" -R

echo "Theme successfully set to: $(plymouth-set-default-theme)"
