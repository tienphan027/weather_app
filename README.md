# weather_app

# Requirements

Project: Weather App
Objective: Create a basic Flutter mobile app that fetches and displays current weather information for a given location.
Requirements:
Location Input: Users should be able to input a location (e.g., city name or zip code).
Weather Display: Upon entering a location, the app should fetch and display the current weather information, including:
Temperature (in Celsius or Fahrenheit)
Weather condition (e.g., sunny, cloudy, rainy)
Error Handling: Implement basic error handling for cases where the location input is invalid or the weather data cannot be retrieved.
User-Friendly UI: Design a simple and user-friendly UI.

### Contact:

I will share more details when I participate in the project!
Currently, I can only build the project based on that requirement.
If you have any questions, you can contact me to ask me

Gmail: tienphan027@gmail.com
Mobile: (+84) 388001401 / (+84) 962425552
Telegram: 0962425552
Skype: live:tienphan027

### Information version code:

Flutter 3.7.12 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 4d9e56e694 (7 months ago) • 2023-04-17 21:47:46 -0400
Engine • revision 1a65d409c7
Tools • Dart 2.19.6 • DevTools 2.20.1

[✓] Android toolchain - develop for Android devices (Android SDK version 33.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 15.0.1)

iPhone 15 (mobile) • C773E30D-3ED6-40FB-9ADD-23A6DFEABF65 • ios • com.apple.CoreSimulator.SimRuntime.iOS-17-0
(simulator)

### Clone:

- git clone git@github.com:tienphan027/weather_app.git
- add project in tool code (VsCode)
- run commandline
  - flutter --version
  - flutter doctor
  - flutter pub get
  - open -a simulator

### Description:

Library:
#---location---  
geolocator: ^10.1.0
#--- di ---
path_provider: ^2.0.2
flutter_bloc: ^8.0.1
get: ^4.6.5
#-- Network--
flutter_cpnetworking_service: ^0.2.2
dio: ^4.0.0
http: ^0.13.6

Project tree

- base controller -> WeatherController -> handle logic,call api,....
- base view -> WeatherScreen -> view
- widget -> support for view
- model
- styles
