#!/bin/bash
CONFIG_FILE=~/.config/kitty/kitty.conf

# Ensure the config file exists
mkdir -p ~/.config/kitty
touch $CONFIG_FILE

# Add or update the font configuration
if grep -q "^font_family" $CONFIG_FILE; then
    sed -i 's/^font_family.*/font_family Hack Nerd Font/' $CONFIG_FILE
else
    echo "font_family Hack Nerd Font" >> $CONFIG_FILE
fi

echo "Kitty configuration updated to use Hack Nerd Font."
