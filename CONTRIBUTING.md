# Contributing to MyGetwell Customer Mobile App

Thank you for your interest in contributing to the MyGetwell Customer Mobile App!

## Development Setup

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart SDK (included with Flutter)
- Android Studio or Xcode
- Git

### Getting Started

1. **Clone the repository**
```bash
git clone https://github.com/sbasharjr/Customer-Mobile-App.git
cd Customer-Mobile-App
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Verify your setup**
```bash
flutter doctor
```

4. **Run the app**
```bash
flutter run
```

## Development Workflow

### Code Style
- Follow Dart style guide
- Use `flutter format` to format code
- Run `flutter analyze` before committing
- Keep code clean and well-documented

### Making Changes

1. Create a new branch for your feature
```bash
git checkout -b feature/your-feature-name
```

2. Make your changes
3. Test your changes
```bash
flutter test
```

4. Format your code
```bash
flutter format .
```

5. Analyze your code
```bash
flutter analyze
```

6. Commit your changes
```bash
git add .
git commit -m "Description of changes"
```

7. Push to your branch
```bash
git push origin feature/your-feature-name
```

### Testing

- Write tests for new features
- Ensure all tests pass before submitting
- Maintain or improve code coverage

```bash
flutter test
```

### Building

#### Android
```bash
flutter build apk --debug
flutter build apk --release
```

#### iOS
```bash
flutter build ios --debug
flutter build ios --release
```

## Project Structure

```
lib/
  main.dart           # Application entry point
test/
  widget_test.dart    # Widget tests
android/              # Android platform code
ios/                  # iOS platform code
```

## Code Quality

We use:
- `flutter_lints` for Dart linting
- Consistent naming conventions
- Clear and concise comments
- Meaningful variable and function names

## Pull Request Process

1. Ensure your code follows the project style
2. Update documentation if needed
3. Add tests for new features
4. Ensure all tests pass
5. Submit a pull request with a clear description

## Questions?

If you have questions, please open an issue on GitHub.

## License

By contributing, you agree that your contributions will be part of the MyGetwell project.
