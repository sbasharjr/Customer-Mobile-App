# Contributing to GetWell Customer Mobile App

Thank you for your interest in contributing to the GetWell Customer Mobile App!

## Development Setup

1. **Install Flutter**
   - Download and install Flutter SDK from [flutter.dev](https://flutter.dev)
   - Add Flutter to your PATH
   - Run `flutter doctor` to verify installation

2. **Clone the Repository**
   ```bash
   git clone https://github.com/sbasharjr/Customer-Mobile-App.git
   cd Customer-Mobile-App
   ```

3. **Install Dependencies**
   ```bash
   flutter pub get
   ```

4. **Run the App**
   ```bash
   flutter run
   ```

## Development Guidelines

### Code Style
- Follow the [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use `flutter analyze` to check for issues
- All code must pass linting rules defined in `analysis_options.yaml`

### Before Submitting
1. Ensure all tests pass: `flutter test`
2. Run the analyzer: `flutter analyze`
3. Format your code: `flutter format .`
4. Build for all platforms to ensure no breaking changes:
   - `flutter build apk`
   - `flutter build ios`
   - `flutter build web`

### Commit Messages
- Use clear, descriptive commit messages
- Reference issue numbers when applicable
- Keep commits focused on a single change

### Pull Requests
1. Create a feature branch from `main`
2. Make your changes with clear commits
3. Ensure all tests pass
4. Submit a pull request with a clear description

## Testing

- Write widget tests for UI components
- Write unit tests for business logic
- Ensure test coverage remains high

## Questions?

If you have questions, please open an issue or contact the maintainers.
