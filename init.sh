#!/bin/bash

# Pomodoro Timer App - Development Server Startup Script
# This script starts a simple HTTP server and opens the app in the browser

PORT=8000
URL="http://localhost:${PORT}"

echo "================================"
echo "Pomodoro Timer App"
echo "================================"
echo ""
echo "Starting development server on port ${PORT}..."
echo ""
echo "Access the app at: ${URL}"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""
echo "================================"
echo ""

# Start Python HTTP server in the background
cd "$(dirname "$0")" || exit 1

# Try to open in browser (macOS and Linux compatible)
if command -v open &> /dev/null; then
  # macOS
  open "${URL}" &
elif command -v xdg-open &> /dev/null; then
  # Linux
  xdg-open "${URL}" &
elif command -v start &> /dev/null; then
  # Windows (Git Bash)
  start "${URL}"
fi

# Start the server
python3 -m http.server ${PORT}
