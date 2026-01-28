#!/bin/bash

# Pomodoro Timer App - Development Server Startup Script
# This script starts a simple HTTP server and opens the app in the browser

PORT=8000
URL="http://localhost:${PORT}"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}================================${NC}"
echo -e "${BLUE}Pomodoro Timer App${NC}"
echo -e "${BLUE}================================${NC}"
echo ""

# Change to script directory
cd "$(dirname "$0")" || exit 1

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo -e "${GREEN}✓ Python 3 found${NC}"
    echo -e "${BLUE}Starting HTTP server on port ${PORT}...${NC}"
    python3 -m http.server ${PORT} &
    SERVER_PID=$!
elif command -v python &> /dev/null; then
    echo -e "${GREEN}✓ Python found${NC}"
    echo -e "${BLUE}Starting HTTP server on port ${PORT}...${NC}"
    python -m http.server ${PORT} &
    SERVER_PID=$!
else
    echo -e "${RED}Error: Python not found. Please install Python to run the development server.${NC}"
    exit 1
fi

# Wait a moment for server to start
sleep 2

# Try to open the app in default browser (macOS, Linux, Windows compatible)
if command -v open &> /dev/null; then
    # macOS
    echo -e "${GREEN}✓ Opening browser...${NC}"
    open "${URL}" &
elif command -v xdg-open &> /dev/null; then
    # Linux
    echo -e "${GREEN}✓ Opening browser...${NC}"
    xdg-open "${URL}" &
elif command -v start &> /dev/null; then
    # Windows (Git Bash)
    echo -e "${GREEN}✓ Opening browser...${NC}"
    start "${URL}"
fi

echo ""
echo -e "${GREEN}✓ Server is running${NC}"
echo -e "${BLUE}Access the app at: ${URL}${NC}"
echo -e "${BLUE}Press Ctrl+C to stop the server${NC}"
echo ""

# Keep script running
wait $SERVER_PID
