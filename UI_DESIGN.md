# MyGetwell Mobile App - UI Overview

## Home Screen

The app launches with a clean, modern Material Design interface featuring:

### Layout
```
┌─────────────────────────┐
│      MyGetwell          │  ← App Bar (Blue)
├─────────────────────────┤
│                         │
│                         │
│    ┌─────────────┐     │
│    │   Health    │     │  ← Health Icon (100x100, Blue)
│    │    Icon     │     │
│    └─────────────┘     │
│                         │
│  Welcome to MyGetwell   │  ← Title (24px, Bold)
│                         │
│  Your health and        │  ← Subtitle (16px)
│  wellness companion     │
│                         │
│   ┌───────────────┐    │
│   │ Get Started   │    │  ← Call-to-Action Button
│   └───────────────┘    │
│                         │
│                         │
└─────────────────────────┘
```

### Color Scheme
- **Primary Color**: Blue (Material Design seed color)
- **Background**: White/Light theme
- **Text**: Dark gray for readability
- **App Bar**: Material Design primary color

### UI Elements
1. **App Bar**
   - Title: "MyGetwell"
   - Background: Primary color
   - Elevation: Material Design default

2. **Health Icon**
   - Material Design health_and_safety icon
   - Size: 100x100
   - Color: Blue
   - Centered on screen

3. **Welcome Text**
   - "Welcome to MyGetwell"
   - Font size: 24px
   - Weight: Bold
   - Centered

4. **Subtitle**
   - "Your health and wellness companion"
   - Font size: 16px
   - Weight: Normal
   - Centered

5. **Get Started Button**
   - Material Design ElevatedButton
   - Text: "Get Started"
   - Centered below subtitle
   - Action: TODO - Navigate to main app

### Responsive Design
- Supports portrait and landscape orientations
- Adapts to different screen sizes
- Material Design 3 adaptive layouts

### Platform Support
- ✓ Android (minSdk 21, targetSdk 34)
- ✓ iOS (iOS 11+)
- Material Design on both platforms

## Future Screens (Planned)
- Login/Registration
- Dashboard with health metrics
- Appointment scheduling
- Medical records
- Profile settings
- Notifications
