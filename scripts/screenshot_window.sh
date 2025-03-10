#!/usr/bin/env bash
# .config/hypr/scripts/screenshot_window.sh
# Screenshot a window Ctrl+Print

# grim -g "$(hyprctl -t get_tree | jq -r '.. | select(.pid? and .visible?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | slurp)" - | swappy -f -

grim -g "$(hyprctl -t get_tree | jq -r '.. | select(.pid? and .visible?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | slurp)" - | swappy -f - -o ~/Pictures/screenshot-$(date +%Y-%m-%d-%H%M%S).png
