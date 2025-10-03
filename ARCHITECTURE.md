# MyGetwell Customer Mobile App - Architecture

## Overview
This is a Flutter-based standalone mobile application for MyGetwell (https://mygetwell.app). The app provides a health and wellness platform for customers.

## Technology Stack
- **Framework**: Flutter
- **Language**: Dart
- **Platforms**: Android, iOS
- **UI**: Material Design 3

## App Structure

```
customer_mobile_app/
├── lib/
│   └── main.dart                  # Main application entry point
├── test/
│   └── widget_test.dart           # Widget tests
├── android/                       # Android-specific code
│   ├── app/
│   │   ├── build.gradle          # Android app configuration
│   │   └── src/main/
│   │       ├── AndroidManifest.xml
│   │       └── kotlin/
│   ├── build.gradle              # Root build configuration
│   ├── settings.gradle           # Gradle settings
│   └── gradle.properties         # Gradle properties
├── ios/                          # iOS-specific code
│   └── Runner/
│       ├── Info.plist           # iOS app configuration
│       ├── AppDelegate.swift    # iOS app delegate
│       └── Assets.xcassets/     # iOS assets
├── pubspec.yaml                 # Flutter dependencies
├── analysis_options.yaml        # Dart analyzer configuration
└── README.md                    # Project documentation
```

## Features
- Cross-platform mobile app (Android & iOS)
- Material Design 3 UI
- Health and wellness tracking
- Clean and maintainable code structure

## App Configuration

### Package Name
- **Android**: `app.mygetwell.customer`
- **iOS**: `app.mygetwell.customer`

### App Name
- Display Name: **MyGetwell**
- Package Name: `customer_mobile_app`

### Version
- Version: 1.0.0
- Build Number: 1

## Development Setup

1. Ensure Flutter is installed (version 3.0.0+)
2. Clone the repository
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the app

## Building for Production

### Android
```bash
flutter build apk --release
# or
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

## Testing
```bash
flutter test
```

## Code Quality
The project uses:
- `flutter_lints` for Dart code analysis
- Consistent code formatting
- Widget tests for UI validation

## Future Enhancements
- API integration with MyGetwell backend
- User authentication
- Health data tracking
- Appointment scheduling
- Medical records management
- Push notifications
- In-app messaging
