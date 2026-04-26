#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.offline-ai-workstation/image-backend"
SOURCE_DIR="$SCRIPT_DIR/image-backend-bin-mac"

echo ""
echo "== Skill & Soul Mac Image Pack Installer =="
echo ""

if [[ ! -d "$SOURCE_DIR" ]]; then
    echo "Missing folder: $SOURCE_DIR"
    echo "Place the extracted Mac image backend bundle next to this script in a folder named image-backend-bin-mac."
    exit 1
fi

mkdir -p "$TARGET_DIR"

if command -v rsync >/dev/null 2>&1; then
    rsync -a "$SOURCE_DIR"/ "$TARGET_DIR"/
else
    cp -R "$SOURCE_DIR"/. "$TARGET_DIR"/
fi

find "$TARGET_DIR" -type f \( -name "*.sh" -o -name "*.command" \) -exec chmod +x {} \;

echo ""
echo "Installed Mac image backend files into:"
echo "  $TARGET_DIR"
echo ""
echo "Next steps:"
echo "1. Open Offline AI Workstation"
echo "2. Open Image Studio"
echo "3. Start the local image backend if prompted"
echo ""
