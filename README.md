# Pomodoro Timer App

A minimal, beautiful pomodoro timer web app built with vanilla HTML, CSS, and JavaScript.

## Description

This is a lightweight, no-dependencies pomodoro timer application designed for productivity. It features a large, centered countdown timer with a visual progress ring, session management with automatic transitions between work and break periods, and persistent tracking of completed pomodoros. The app runs entirely in the browser with a dark theme and tomato red accent color.

## Tech Stack

- **Frontend**: Vanilla HTML/CSS/JavaScript (single page application)
- **Persistence**: Browser Local Storage API
- **Backend**: None (runs entirely in the browser)
- **Dependencies**: Zero external dependencies
- **Styling**: Pure CSS with dark theme and accent colors
- **Audio**: Web Audio API for notifications

## Features

### 1. Timer Display
- Large, centered countdown timer in MM:SS format (default 25:00)
- Visual progress ring that animates as time counts down
- Clean, minimal design with excellent typography
- Real-time update of remaining time
- Smooth animations and transitions

### 2. Timer Controls
- **Start/Pause button** - Toggle between running and paused states
- **Reset button** - Return timer to initial session duration
- **Skip button** - Advance to next session type immediately
- Clear visual feedback for button states

### 3. Session Types
- **Work Session**: 25 minutes (Pomodoro)
- **Short Break**: 5 minutes
- **Long Break**: 15 minutes (after 4 completed work sessions)
- Automatic session switching when timer completes
- Visual indicator showing current session type

### 4. Session Counter
- Track number of completed pomodoros each day
- Visual indicator with dots or circles
- Persistent storage across page refreshes and browser sessions
- Automatic daily reset

### 5. Audio Notification
- Gentle audio alert when timer completes
- Uses Web Audio API or simple audio element
- Non-intrusive, professional sound
- Cross-browser compatible

## Getting Started

### Quick Start

1. Clone or navigate to the project directory
2. Run the development server:
   ```bash
   ./init.sh
   ```
3. The browser will open at `http://localhost:8000`
4. Start your first pomodoro session!

### Manual Start

If you prefer to start the server manually:
```bash
python3 -m http.server 8000
```
Then open your browser to `http://localhost:8000`

## Design Guidelines

### Theme & Colors
- **Primary Theme**: Dark background with light text
- **Accent Color**: Tomato red (#ff6347) for active UI elements and progress indicators
- **Design Philosophy**: Minimal, distraction-free interface

### Layout
- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile devices
- **Centered Layout**: All controls centered on the screen vertically and horizontally
- **Typography**: Clean, readable fonts with good contrast

### Interactions
- **Smooth Animations**: Transitions and progress ring animations are fluid
- **Visual Feedback**: Clear indication of current session type and timer state
- **Accessibility**: High contrast, readable text, keyboard-friendly controls

## File Structure

```
index.html          - Single HTML file with embedded CSS and JavaScript
                      Contains the complete UI, styling, and logic
audio/              - Directory for notification sounds
  ding.mp3          - Audio file for timer completion notification (optional)
README.md           - Project documentation
init.sh             - Development server startup script
.gitignore          - Git ignore patterns
.linear_project.json - Linear project metadata
claude-progress.txt - Session tracking and progress log
```

## Project Management

This project is tracked in Linear with the following issues:
- WID-75: Timer Display - Countdown UI with Progress Ring
- WID-76: Timer Controls - Start, Pause, Reset, and Skip
- WID-77: Session Types - Work, Short Break, and Long Break Cycles
- WID-78: Session Counter - Track Completed Pomodoros with Persistence
- WID-79: Audio Notification - Sound Alert on Timer Completion

## Usage

1. **Start Timer**: Click the "Start" button to begin the current session
2. **Pause Timer**: Click the "Pause" button to temporarily stop the timer
3. **Reset Timer**: Click the "Reset" button to return to the session start time
4. **Skip Session**: Click the "Skip" button to advance to the next session type
5. **Track Progress**: Watch the session counter increment with each completed work session

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

## Success Criteria

- Timer counts down accurately from configured duration
- Sessions automatically advance when timer reaches zero
- Application state persists across page refreshes
- Responsive design works well on all device sizes
- Professional appearance with smooth animations

## Development Notes

This application uses only vanilla web APIs and requires no build tools or external dependencies. All code is contained in a single `index.html` file for simplicity and portability.

### Browser API Support

Works in all modern browsers that support:
- ES6 JavaScript
- CSS Grid and Flexbox
- localStorage API
- Web Audio API (optional, for audio notifications)

## License

This project is part of the demo-generations suite.
