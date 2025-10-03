# GetWell Customer Mobile App - Technical Overview

## Application Structure

### Entry Point
The app starts in `lib/main.dart` with the `main()` function that runs `MyGetWellApp`.

### Widget Hierarchy
```
MyGetWellApp (MaterialApp)
└── HomePage (Scaffold)
    ├── AppBar
    │   └── Title: "GetWell"
    └── Body (Center)
        └── Column
            ├── Health Icon (Icons.health_and_safety)
            ├── Title: "Welcome to GetWell"
            ├── Subtitle: "Your Health, Our Priority"
            └── Button: "Browse Services"
```

## UI/UX Design

### Home Screen Layout
```
┌─────────────────────────────┐
│     ☰  GetWell             │  ← AppBar (Blue)
├─────────────────────────────┤
│                             │
│                             │
│          🏥                 │  ← Health Icon (100px, Blue)
│                             │
│                             │
│   Welcome to GetWell        │  ← Title (24px, Bold)
│                             │
│  Your Health, Our Priority  │  ← Subtitle (16px, Grey)
│                             │
│                             │
│  ┌─────────────────────┐   │
│  │ 🏥 Browse Services  │   │  ← Action Button
│  └─────────────────────┘   │
│                             │
│                             │
└─────────────────────────────┘
```

## Color Scheme
- **Primary Color**: Blue (Material Design)
- **Theme**: Material Design 3
- **Accent**: Health and medical related icons

## Platform Support

### Android
- Minimum SDK: 21 (Android 5.0)
- Target SDK: 34 (Android 14)
- Kotlin-based MainActivity
- Material Design components

### iOS
- Swift-based AppDelegate
- Support for iPhone and iPad orientations
- Standard iOS launch screen

### Web
- Progressive Web App (PWA) support
- Responsive design
- Offline capability via service workers

## Testing

The app includes widget tests that verify:
- Correct display of welcome text
- Presence of health and medical icons
- Button rendering

## Future Enhancements

The current implementation provides a foundation for:
1. User authentication and profiles
2. Service browsing and booking
3. Appointment management
4. Health records access
5. Notifications and reminders
6. Payment integration

## Development Notes

- Uses Flutter SDK 3.0.0 or higher
- Material Design 3 for modern UI
- Follows Flutter best practices and linting rules
- Structured for easy expansion and feature addition
