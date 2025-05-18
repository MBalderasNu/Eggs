# Eggs Timer App

Eggs Timer is a simple iOS application built using Swift and Xcode. It provides easy-to-use timers for boiling eggs to your desired consistency: **Soft**, **Medium**, or **Hard**. 

## Features
- Easy selection of egg types
- Visual timer feedback
- custom icons
- Built with modular ViewControllers for easy maintenance

---

## Project Structure
```
Eggs-main/
    Eggs.xcodeproj/                 # Xcode project configuration
    Eggs/
        AppDelegate.swift           # Main app entry
        Info.plist                  # App configuration
        SceneDelegate.swift         # Scene management for multi-window
        ViewController.swift        # Main view controller
        hardEggViewController.swift # Hard egg timer view controller
        mediumEggViewController.swift # Medium egg timer view controller
        softEggViewController.swift # Soft egg timer view controller
        Assets.xcassets/            # Images and icons for the app
        Base.lproj/                 # Storyboards
            LaunchScreen.storyboard
            Main.storyboard
```

---

## Setup and Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/YourUsername/Eggs-Timer.git
   ```
2. Open the project in Xcode:
   ```bash
   open Eggs.xcodeproj
   ```
3. Build and run the project on your simulator or physical device.

---

## Usage
1. Select your egg type: **Soft**, **Medium**, or **Hard**.
2. The timer will start, displaying a countdown.
3. You will be notified when the timer is complete.

---

## Contributing
Feel free to submit issues or pull requests for new features or improvements!

---

## License
This project is licensed under the MIT License.
