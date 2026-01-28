#!/bin/bash

# Pomodoro Timer App - Development Server Startup Script

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Pomodoro Timer App ===${NC}"
echo -e "${BLUE}Starting development server...${NC}"

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo -e "${GREEN}✓ Python 3 found${NC}"
    echo -e "${BLUE}Starting HTTP server on port 8000...${NC}"
    python3 -m http.server 8000 &
    SERVER_PID=$!
elif command -v python &> /dev/null; then
    echo -e "${GREEN}✓ Python found${NC}"
    echo -e "${BLUE}Starting HTTP server on port 8000...${NC}"
    python -m http.server 8000 &
    SERVER_PID=$!
else
    echo -e "${RED}Error: Python not found. Please install Python to run the development server.${NC}"
    exit 1
fi

# Wait a moment for server to start
sleep 2

# Try to open the app in default browser
if command -v open &> /dev/null; then
    # macOS
    echo -e "${GREEN}✓ Opening browser...${NC}"
    open http://localhost:8000
elif command -v xdg-open &> /dev/null; then
    # Linux
    echo -e "${GREEN}✓ Opening browser...${NC}"
    xdg-open http://localhost:8000
elif command -v start &> /dev/null; then
    # Windows
    echo -e "${GREEN}✓ Opening browser...${NC}"
    start http://localhost:8000
fi

echo -e "${GREEN}✓ Server is running${NC}"
echo -e "${BLUE}Access the app at: http://localhost:8000${NC}"
echo -e "${BLUE}Press Ctrl+C to stop the server${NC}"

# Keep script running
wait $SERVER_PID
