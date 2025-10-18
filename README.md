# 🧙‍♂️ HP Trivia - iOS App

A magical Harry Potter trivia game built with SwiftUI for iOS devices.

![iOS](https://img.shields.io/badge/iOS-16.0+-blue.svg)
![Swift](https://img.shields.io/badge/Swift-5.0+-orange.svg)
![SwiftUI](https://img.shields.io/badge/SwiftUI-4.0+-green.svg)

## 📱 About

HP Trivia is an immersive Harry Potter-themed quiz game that tests your knowledge of the wizarding world. Experience the magic with beautiful animations, atmospheric audio, and challenging questions from all seven books of the Harry Potter series.

## ⚠️ Project Status

**🚧 WORK IN PROGRESS** - This project is currently under active development and is not complete. Features are being added and refined regularly.

## ✨ Features

### Current Features
- 🏰 **Immersive UI**: Beautiful Hogwarts-themed interface with animated backgrounds
- 🎵 **Atmospheric Audio**: Magical sound effects and background music
- 📚 **Trivia Questions**: Questions covering all seven Harry Potter books
- 🎮 **Game Modes**: Multiple gameplay modes (currently in development)
- 📊 **Score Tracking**: Recent scores display on main menu
- ⚙️ **Settings**: Customizable game settings
- 📖 **Instructions**: Built-in help and instructions

### Planned Features
- 🏆 **Achievement System**: Unlock magical achievements
- 🌟 **Difficulty Levels**: Easy, Medium, and Hard modes
- 📈 **Progress Tracking**: Detailed statistics and progress
- 🎯 **Categories**: Questions organized by book or theme
- 🔄 **Multiplayer Mode**: Challenge friends (future consideration)

## Screen Recording


https://github.com/user-attachments/assets/7fc803f9-b8b4-4f62-b036-7c01d625ad5f



## 🛠️ Technical Details

- **Platform**: iOS 16.0+
- **Framework**: SwiftUI
- **Language**: Swift 5.0+
- **Architecture**: MVVM with SwiftUI
- **Audio**: AVFoundation for sound effects and music
- **Data**: JSON-based trivia questions storage

## 📁 Project Structure

```
Hp Trivia/
├── Assets.xcassets/          # Images and app icons
│   ├── hogwarts.imageset/    # Background images
│   ├── hp1-7.imageset/       # Book cover images
│   └── parchment.imageset/   # UI elements
├── Audios/                   # Sound effects and music
│   ├── magic-in-the-air.mp3
│   ├── spellcraft.mp3
│   └── ... (8 audio files)
├── Hp_TriviaApp.swift        # Main app entry point
├── ContentView.swift         # Main menu interface
├── Gameplay.swift           # Game logic and UI
├── InstructionsView.swift   # Help and instructions
├── SettingView.swift        # Game settings
├── Constants.swift          # App constants and utilities
└── trivia.json             # Question database
```

## 🎮 How to Play

1. **Launch the App**: Experience the magical animated intro
2. **Main Menu**: Choose from Play, Instructions, or Settings
3. **Gameplay**: Answer trivia questions about the Harry Potter universe
4. **Scoring**: Earn points for correct answers
5. **Progress**: Track your recent scores and improvement

## 🚀 Getting Started

### Prerequisites
- Xcode 14.0 or later
- iOS 16.0 or later (for development)
- macOS 12.0 or later (for Xcode)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/hp-trivia.git
   ```

2. Open the project in Xcode:
   ```bash
   cd hp-trivia
   open "Hp Trivia.xcodeproj"
   ```

3. Build and run the project:
   - Select your target device or simulator
   - Press `Cmd + R` to build and run

## 📝 Development Notes

### Current Development Status
- ✅ Basic UI structure and navigation
- ✅ Main menu with animations
- ✅ Audio system integration
- ✅ Question database structure
- 🔄 Game logic implementation (in progress)
- ⏳ Score persistence
- ⏳ Settings functionality
- ⏳ Advanced animations

### Known Issues
- Game logic is still being implemented
- Some UI elements may need refinement
- Audio controls need enhancement
- Settings functionality is incomplete

## 🎨 Design Philosophy

The app follows a magical, immersive design approach:
- **Visual**: Hogwarts-inspired backgrounds and parchment-style UI elements
- **Audio**: Atmospheric sound effects that enhance the magical experience
- **Animations**: Smooth, magical transitions that bring the interface to life
- **Typography**: Custom fonts that capture the essence of the wizarding world

## 📚 Question Database

The trivia questions are stored in `trivia.json` and include:
- Questions from all seven Harry Potter books
- Multiple choice answers
- Hints for difficult questions
- Book references for context

## 🤝 Contributing

Since this is a work in progress, contributions are welcome! Please feel free to:
- Report bugs or issues
- Suggest new features
- Submit pull requests for improvements
- Help with testing on different devices

## ⚠️ Disclaimer

This is an unofficial Harry Potter fan project created for educational and entertainment purposes. All Harry Potter characters, names, and related elements are trademarks of and © Warner Bros. Entertainment Inc. J.K. ROWLING'S WIZARDING WORLD™ Publishing Rights © J.K. Rowling.

## 📞 Contact

Created by Dawood akbar - feel free to reach out with questions or suggestions!

---

*"It is our choices, Harry, that show what we truly are, far more than our abilities."* - Albus Dumbledore

**Note**: This project is actively being developed. Features and functionality may change as development progresses.
