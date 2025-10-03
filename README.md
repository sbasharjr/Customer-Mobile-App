# Customer-Mobile-App

A Flutter standalone mobile application for https://mygetwell.app

## About

GetWell Customer Mobile App is a cross-platform mobile application built with Flutter. It provides customers with easy access to GetWell's healthcare services directly from their mobile devices.

## Features

- Cross-platform support (Android, iOS, and Web)
- Material Design 3 UI
- Health and wellness services access
- User-friendly interface

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0 <4.0.0)
- Dart SDK
- Android Studio / Xcode (for mobile development)
- A code editor (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/sbasharjr/Customer-Mobile-App.git
cd Customer-Mobile-App
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### Building

#### Android
```bash
flutter build apk --release
```

#### iOS
```bash
flutter build ios --release
```

#### Web
```bash
flutter build web --release
```

## Testing

Run the test suite:
```bash
flutter test
```

## Project Structure

```
lib/
  ├── main.dart           # Application entry point
android/                  # Android-specific code
ios/                      # iOS-specific code
web/                      # Web-specific code
test/                     # Test files
```

## License

This project is proprietary software for https://mygetwell.app
