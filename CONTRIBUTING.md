# Contributing to MyGetwell Customer Mobile App

Thank you for your interest in contributing to the MyGetwell Customer Mobile App! This document provides guidelines and instructions for contributing.

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/YOUR_USERNAME/Customer-Mobile-App.git`
3. Create a new branch: `git checkout -b feature/your-feature-name`
4. Make your changes
5. Test your changes
6. Commit your changes: `git commit -m "Add your commit message"`
7. Push to your fork: `git push origin feature/your-feature-name`
8. Create a Pull Request

## Development Setup

### Prerequisites
- Flutter SDK 3.0.0 or higher
- Dart SDK 3.0.0 or higher
- Android Studio or VS Code with Flutter extensions
- iOS development: Xcode (macOS only)

### Installation
```bash
# Clone the repository
git clone https://github.com/sbasharjr/Customer-Mobile-App.git
cd Customer-Mobile-App

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## Code Style Guidelines

### Dart Code Style
- Follow the official [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use `flutter analyze` to check for issues
- Use `dart format` to format your code
- Follow the linting rules defined in `analysis_options.yaml`

### Key Conventions
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused
- Use const constructors where possible
- Prefer single quotes for strings
- Use trailing commas for better formatting

### Example
```dart
// Good
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(product.name),
    );
  }
}

// Bad
class productcard extends StatelessWidget {
  productcard({Key? k, this.prod}) : super(key: k);
  
  var prod;

  @override
  Widget build(BuildContext c) {
    return Card(child: Text(prod.name));
  }
}
```

## Project Structure

- `lib/main.dart` - App entry point
- `lib/models/` - Data models
- `lib/providers/` - State management
- `lib/screens/` - Screen widgets
- `lib/widgets/` - Reusable components
- `lib/services/` - API and business logic
- `test/` - Unit and widget tests

## Making Changes

### Adding a New Feature
1. Create a new branch from `main`
2. Implement your feature following the project structure
3. Add tests for your feature
4. Update documentation if needed
5. Submit a pull request

### Fixing a Bug
1. Create a new branch from `main`
2. Write a test that reproduces the bug
3. Fix the bug
4. Ensure all tests pass
5. Submit a pull request

## Testing

### Running Tests
```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run a specific test file
flutter test test/widget_test.dart
```

### Writing Tests
- Write unit tests for models and providers
- Write widget tests for UI components
- Aim for high test coverage
- Keep tests simple and focused

### Test Example
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:customer_mobile_app/providers/cart_provider.dart';

void main() {
  test('Adding item increases cart count', () {
    final cart = CartProvider();
    final product = Product(/* ... */);
    
    cart.addItem(product);
    
    expect(cart.itemCount, 1);
  });
}
```

## Pull Request Process

1. **Update your branch** with the latest main branch
   ```bash
   git checkout main
   git pull origin main
   git checkout your-branch
   git merge main
   ```

2. **Ensure all tests pass**
   ```bash
   flutter test
   ```

3. **Run code analysis**
   ```bash
   flutter analyze
   ```

4. **Format your code**
   ```bash
   dart format .
   ```

5. **Write a clear PR description**
   - What does this PR do?
   - Why is this change needed?
   - How has it been tested?
   - Screenshots (for UI changes)

6. **Link related issues**
   - Use "Fixes #123" or "Closes #123" in the PR description

## Commit Message Guidelines

Follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

- `feat:` A new feature
- `fix:` A bug fix
- `docs:` Documentation changes
- `style:` Code style changes (formatting, etc.)
- `refactor:` Code refactoring
- `test:` Adding or updating tests
- `chore:` Maintenance tasks

### Examples
```
feat: add product search functionality
fix: resolve cart total calculation issue
docs: update README with installation instructions
style: format code according to dart style guide
refactor: extract product card to separate widget
test: add tests for cart provider
chore: update dependencies
```

## Code Review Process

- All submissions require review
- Reviewers will check for:
  - Code quality and style
  - Test coverage
  - Documentation
  - Performance implications
  - Security considerations
- Address review comments promptly
- Be open to feedback and suggestions

## Reporting Issues

### Bug Reports
When reporting bugs, include:
- Flutter version (`flutter --version`)
- Device/OS information
- Steps to reproduce
- Expected behavior
- Actual behavior
- Screenshots if applicable
- Error messages or logs

### Feature Requests
When requesting features, include:
- Clear description of the feature
- Use case and benefits
- Mockups or examples if available
- Willingness to contribute

## Community Guidelines

- Be respectful and inclusive
- Provide constructive feedback
- Help others when possible
- Follow the code of conduct
- Keep discussions on topic

## Questions?

If you have questions:
- Check existing issues and discussions
- Review the documentation
- Ask in a new issue or discussion
- Contact the maintainers

## License

By contributing, you agree that your contributions will be licensed under the same license as the project (MIT License).

## Thank You!

Your contributions help make this project better for everyone. We appreciate your time and effort! 🎉
