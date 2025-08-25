#!/bin/bash
set -euo pipefail

DMG_PATH="$HOME/Downloads/Neo-Browser-1.1.8.dmg"
VOLUME_NAME="Neo Browser 1.1.8"
APP_NAME="Neo Browser.app"
DESTINATION="$HOME/Applications"

echo "Mounting the DMG..."
hdiutil attach "$DMG_PATH"

echo "Copying $APP_NAME to $DESTINATION..."
cp -r "/Volumes/$VOLUME_NAME/$APP_NAME" "$DESTINATION/"

echo "Unmounting the DMG..."
hdiutil detach "/Volumes/$VOLUME_NAME"

echo "Removing quarantine attributes from the app..."
xattr -dr com.apple.quarantine "$DESTINATION/$APP_NAME"

echo "Installation complete! You can run the app from $DESTINATION."
