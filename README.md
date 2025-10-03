# Customer-Mobile-App
Customer mobile app for https://mygetwell.app

## Getting Started

This is a Flutter standalone mobile application for MyGetwell.

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK
- Android Studio / Xcode for platform-specific development
- Android SDK (for Android development)
- iOS development tools (for iOS development, macOS only)

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
# For Android
flutter run -d android

# For iOS (macOS only)
flutter run -d ios

# For Web
flutter run -d chrome
```

### Building

To build a release version:

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS (requires macOS and Xcode)
flutter build ios --release
```

### Testing

Run the tests with:

```bash
flutter test
```

### Project Structure

```
lib/
  main.dart           # Main application entry point
test/
  widget_test.dart    # Widget tests
android/              # Android platform-specific code
ios/                  # iOS platform-specific code
```

### Features

- Material Design UI
- Cross-platform support (Android & iOS)
- Health and wellness tracking
- User-friendly interface

### License

This project is part of the MyGetwell ecosystem.
