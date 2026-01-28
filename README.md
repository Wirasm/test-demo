# Pomodoro Timer App

A minimal, beautiful pomodoro timer web app built with vanilla HTML, CSS, and JavaScript.

## Description

This is a lightweight, no-dependencies pomodoro timer application designed for productivity. It features a large, centered countdown timer with a visual progress ring, session management with automatic transitions between work and break periods, and persistent tracking of completed pomodoros.

## Tech Stack

- **Frontend**: Vanilla HTML/CSS/JavaScript (single page application)
- **Persistence**: Browser Local Storage API
- **Backend**: None (runs entirely in the browser)
- **Dependencies**: Zero external dependencies

## Features

1. **Timer Display**
   - Large, centered countdown timer (MM:SS format)
   - Visual progress ring around the timer
   - Clean, minimal design with excellent typography
   - Real-time update of remaining time

2. **Timer Controls**
   - Start/Pause button to control the timer
   - Reset button to return to session start
   - Skip to next session button for flexibility

3. **Session Types**
   - Work session: 25 minutes (default Pomodoro duration)
   - Short break: 5 minutes (between pomodoros)
   - Long break: 15 minutes (after 4 completed work sessions)
   - Automatic session switching when timer completes

4. **Session Counter**
   - Visual counter tracking completed pomodoros today
   - Persistent storage using localStorage
   - Automatic daily reset
   - Visual indicator (dots or circles) for completed sessions

5. **Audio Notification**
   - Gentle sound alert when timer completes
   - Uses Web Audio API or simple audio element
   - Optional notification feature

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
- **Centered Layout**: All controls centered on the screen
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
README.md           - This file
init.sh             - Development server startup script
.gitignore          - Git ignore file
```

## Project Management

This project is tracked in Linear with the following issues:
- WID-75: Timer Display - Countdown UI with Progress Ring
- WID-76: Timer Controls - Start, Pause, Reset, and Skip
- WID-77: Session Types - Work, Short Break, and Long Break Cycles
- WID-78: Session Counter - Track Completed Pomodoros with Persistence
- WID-79: Audio Notification - Sound Alert on Timer Completion

## Success Criteria

- Timer counts down accurately with precision
- Sessions auto-advance when timer reaches zero
- Application state persists across page refresh
- Full functionality on mobile browsers
- Polished, professional appearance with smooth interactions

## Development Notes

This application uses only vanilla web APIs and requires no build tools or external dependencies. All code is contained in a single `index.html` file for simplicity and portability.

### Browser Support

Works in all modern browsers that support:
- ES6 JavaScript
- CSS Grid and Flexbox
- localStorage API
- Web Audio API (optional, for audio notifications)

## License

This project is part of the demo-generations suite.
