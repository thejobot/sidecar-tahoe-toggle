#!/bin/bash
echo "================================"
echo "  Sidecar Tahoe Toggle Installer"
echo "================================"
echo ""
read -p "Enter your iPad's name (press Enter if it's just 'iPad'): " ipad_name
ipad_name=${ipad_name:-iPad}
echo ""
echo "Setting up sidecar_toggle.swift for '$ipad_name'..."
curl -s https://raw.githubusercontent.com/thejobot/sidecar-tahoe-toggle/main/sidecar_toggle.swift \
    | sed "s|IPAD_NAME_HERE|${ipad_name}|g" \
    > ~/sidecar_toggle.swift
echo "✓ Done! Testing now..."
swift ~/sidecar_toggle.swift
echo ""
echo "Run 'swift ~/sidecar_toggle.swift' anytime to toggle Sidecar."
