# Customer-Mobile-App
A Flutter standalone mobile app for https://mygetwell.app

## Getting Started

This is a Flutter mobile application for the MyGetWell platform. Follow the instructions below to get started with development.

### Prerequisites

- Flutter SDK (>=3.0.0 <4.0.0)
- Dart SDK
- Android Studio (for Android development)
- Xcode (for iOS development, macOS only)

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

### Running Tests

To run the test suite:
```bash
flutter test
```

### Building for Production

**Android:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

## Project Structure

```
lib/
  main.dart           # Application entry point
android/              # Android-specific files
ios/                  # iOS-specific files
test/                 # Test files
```

## Features

- Cross-platform mobile app (Android & iOS)
- Material Design 3 UI
- Welcome screen for MyGetWell customers

## License

This project is proprietary software for MyGetWell.
