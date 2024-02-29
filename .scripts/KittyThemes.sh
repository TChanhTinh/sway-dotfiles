#!/bin/bash
## /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Script for waybar styles

set -euo pipefail
IFS=$'\n\t'

# Define directories
kitty_themes="$HOME/.config/kitty/themes"
kitty_config="$HOME/.config/kitty/kitty.conf"
rofi_config="$HOME/.config/rofi/config-kitty-theme.rasi"

# Function to display menu options
menu() {
    options=()
    while IFS= read -r file; do
        if [ -f "$kitty_themes/$file" ]; then
            options+=("$(basename "$file" .conf)")
        fi
    done < <(find "$kitty_themes" -maxdepth 1 -type f -name '*.conf' -exec basename {} \; | sort)
    
    printf '%s\n' "${options[@]}"
}

# Apply selected style
apply_style() {
    echo     ln -sf "$kitty_themes/$1.conf" "$kitty_config"
    ln -sf "$kitty_themes/$1.conf" "$kitty_config"
}


# Main function
main() {
    choice=$(menu | rofi -dmenu -config "$rofi_config")

    if [[ -z "$choice" ]]; then
        echo "No option selected. Exiting."
        exit 0
    fi

    echo $choice

    apply_style "$choice"
}

# Kill Rofi if already running before execution
if pgrep -x "rofi" >/dev/null; then
    pkill rofi
    exit 0
fi

main
