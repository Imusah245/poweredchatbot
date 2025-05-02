#!/bin/bash

echo "🚀 Starting your chatbot project..."

# Start Android Emulator (replace Pixel_3 if needed)
echo "📱 Launching Android Emulator..."
emulator -avd Pixel_3 &

# Wait a few seconds for emulator to boot
sleep 10

# Start Expo
echo "⚡ Starting Expo in tunnel mode..."
npx expo start --tunnel
