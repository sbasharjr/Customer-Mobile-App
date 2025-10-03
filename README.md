# Customer Mobile App

A Flutter-based customer shopping mobile application for [MyGetwell](https://mygetwell.app).

## Features

- 🏠 **Home Screen**: Browse products by category with an intuitive grid layout
- 🛒 **Shopping Cart**: Add, remove, and manage items in your cart
- 👤 **Profile Management**: User profile with settings and preferences
- 📱 **Bottom Navigation**: Easy navigation between main sections
- 💚 **Material Design 3**: Modern UI with smooth animations
- 🔍 **Product Filtering**: Filter products by categories (Fruits, Dairy, Bakery, etc.)
- 🖼️ **Image Caching**: Optimized image loading with cached_network_image

## Project Structure

```
lib/
├── main.dart                 # App entry point and navigation
├── models/                   # Data models
│   ├── product.dart         # Product model
│   └── cart_item.dart       # Cart item model
├── providers/               # State management (Provider pattern)
│   ├── cart_provider.dart   # Cart state management
│   └── products_provider.dart # Products state management
├── screens/                 # App screens
│   ├── home_screen.dart     # Home/Products screen
│   ├── cart_screen.dart     # Shopping cart screen
│   └── profile_screen.dart  # User profile screen
└── widgets/                 # Reusable widgets
    ├── product_card.dart    # Product display card
    └── cart_item_card.dart  # Cart item display card
```

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / Xcode (for mobile development)

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

## Dependencies

- **flutter**: SDK
- **provider**: State management
- **http**: API communication
- **cached_network_image**: Image caching
- **shared_preferences**: Local storage
- **flutter_svg**: SVG support
- **intl**: Internationalization

## Configuration

The app uses the Provider package for state management. All state is managed through:
- `CartProvider`: Manages shopping cart state
- `ProductsProvider`: Manages product catalog

## Roadmap

- [ ] User authentication
- [ ] API integration with mygetwell.app backend
- [ ] Order history
- [ ] Payment gateway integration
- [ ] Push notifications
- [ ] Product search functionality
- [ ] Wishlist feature
- [ ] Multiple delivery addresses
- [ ] Order tracking

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License.

## Contact

For more information, visit [https://mygetwell.app](https://mygetwell.app)
