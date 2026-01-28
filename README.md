# Pomodoro Timer App

A minimal, beautiful pomodoro timer web app built with vanilla HTML, CSS, and JavaScript.

## Project Overview

This is a fully functional pomodoro timer application that runs entirely in the browser with no backend dependencies. It features a dark theme with a tomato red accent color, responsive mobile design, and persistent state management using localStorage.

## Tech Stack

- **Frontend:** Vanilla HTML/CSS/JavaScript (single-page application)
- **Styling:** Pure CSS with dark theme and accent colors
- **State Management:** localStorage for persistence
- **Audio:** Web Audio API for notifications
- **No external dependencies** - Pure vanilla implementation

## Features

### 1. Timer Display
- Large, centered countdown timer in MM:SS format (default 25:00)
- Visual progress ring that animates as time counts down
- Clean, minimal design with excellent typography
- Smooth animations and transitions

### 2. Timer Controls
- **Start/Pause button** - Toggle between running and paused states
- **Reset button** - Return timer to initial session duration
- **Skip button** - Advance to next session type immediately
- Clear visual feedback for button states

### 3. Session Types
- **Work Session:** 25 minutes (Pomodoro)
- **Short Break:** 5 minutes
- **Long Break:** 15 minutes (after 4 completed work sessions)
- Automatic session switching when timer completes
- Visual indicator showing current session type

### 4. Session Counter
- Track number of completed pomodoros each day
- Visual indicator with dots or circles
- Persistent storage across page refreshes and browser sessions
- Daily automatic reset

### 5. Audio Notification
- Gentle audio alert when timer completes
- Uses Web Audio API or simple audio element
- Non-intrusive, professional sound
- Cross-browser compatible

## Design Guidelines

- **Color Scheme:** Dark theme with tomato red accent (#ff6347)
- **Layout:** Centered, vertically and horizontally
- **Responsive:** Works seamlessly on desktop, tablet, and mobile devices
- **Animations:** Smooth transitions for visual feedback
- **Typography:** Clear, readable fonts with appropriate hierarchy

## File Structure

```
index.html          - Single HTML file with embedded CSS and JavaScript
.gitignore          - Git ignore patterns
README.md           - This file
init.sh             - Development environment setup script
.linear_project.json - Linear project metadata
claude-progress.txt - Session tracking and progress log
```

## How to Run

### Quick Start
```bash
# Make the init script executable (first time only)
chmod +x init.sh

# Run the development server
./init.sh
```

### Manual Start
```bash
# Start a simple HTTP server
python3 -m http.server 8000

# Then open your browser
open http://localhost:8000
```

The app will be available at `http://localhost:8000`

## Usage

1. **Start Timer:** Click the "Start" button to begin the current session
2. **Pause Timer:** Click the "Pause" button to temporarily stop the timer
3. **Reset Timer:** Click the "Reset" button to return to the session start time
4. **Skip Session:** Click the "Skip" button to advance to the next session type
5. **Track Progress:** Watch the session counter increment with each completed work session

## Browser Support

- Chrome/Chromium (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Storage

The app uses browser localStorage to persist:
- Current session count
- Session type
- Timer state (paused/running)
- Completion timestamps

All data is stored locally in your browser and never sent to any server.

## Development

This is a single-file application with no build process. Simply edit `index.html` to modify the timer, and reload the browser to see changes.

## Success Criteria

- Timer counts down accurately from configured duration
- Sessions automatically advance when timer reaches zero
- Application state persists across page refreshes
- Responsive design works well on all device sizes
- Professional appearance with smooth animations
