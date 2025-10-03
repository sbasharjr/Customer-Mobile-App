# MyGetwell Customer Mobile App - Technical Documentation

## Overview
This is a complete Flutter mobile application for customer shopping at MyGetwell (https://mygetwell.app). The app follows modern Flutter best practices and implements a clean architecture with state management using the Provider pattern.

## App Structure

### Architecture Pattern
The app uses the **Provider pattern** for state management, which is recommended by the Flutter team for medium-sized applications.

### Key Components

#### 1. Main Entry Point (`lib/main.dart`)
- Initializes the app with MultiProvider for state management
- Sets up Material Design 3 theme with green color scheme
- Implements bottom navigation for three main screens

#### 2. Models (`lib/models/`)
- **Product**: Represents a product with id, name, description, price, image, category, and stock status
- **CartItem**: Wraps a Product with quantity information and calculates total price

#### 3. Providers (`lib/providers/`)
- **CartProvider**: Manages shopping cart state
  - Add/remove items
  - Update quantities
  - Calculate total amount
- **ProductsProvider**: Manages product catalog
  - Fetch products (currently using mock data)
  - Filter by category
  - Find product by ID

#### 4. Screens (`lib/screens/`)
- **HomeScreen**: Main shopping interface
  - Grid view of products
  - Category filter chips (All, Fruits, Dairy, Bakery, Vegetables)
  - Cart badge showing item count
  - Product cards with add-to-cart functionality
  
- **CartScreen**: Shopping cart management
  - List of cart items with images
  - Quantity controls (+/-)
  - Remove item functionality
  - Total price calculation
  - Checkout button (placeholder)
  
- **ProfileScreen**: User profile and settings
  - User information display
  - Navigation to various sections (Edit Profile, Addresses, Order History, etc.)
  - About dialog
  - Logout button (placeholder)

#### 5. Widgets (`lib/widgets/`)
- **ProductCard**: Reusable product display component
  - Product image with fallback
  - Product name and description
  - Price display
  - Add to cart button
  - Out of stock overlay
  
- **CartItemCard**: Cart item display component
  - Product image thumbnail
  - Quantity controls
  - Price per item and total
  - Remove button

## Features Implemented

### ✅ Core Features
1. **Product Browsing**
   - Grid layout for better mobile UX
   - Category-based filtering
   - Product cards with images and details
   - Out-of-stock indication

2. **Shopping Cart**
   - Add items to cart with snackbar confirmation
   - Update quantities
   - Remove items
   - Real-time total calculation
   - Empty cart state

3. **Navigation**
   - Bottom navigation bar
   - Three main sections (Home, Cart, Profile)
   - Badge showing cart item count

4. **State Management**
   - Provider pattern for reactive updates
   - Separated concerns (Cart, Products)
   - Efficient rebuilds using Consumer widgets

5. **UI/UX**
   - Material Design 3
   - Green color scheme matching brand
   - Responsive layouts
   - Loading states with placeholders
   - Error handling for images
   - Snackbar notifications

### 🔄 Mock Data
Currently, the app uses mock product data with placeholder images. The structure is ready for API integration.

### 🧪 Testing
Unit tests included for:
- Product model serialization
- Cart provider operations
- Business logic validation

## Technical Stack

### Dependencies
```yaml
dependencies:
  flutter: SDK
  provider: ^6.0.5           # State management
  http: ^1.1.0               # API calls (ready for integration)
  cached_network_image: ^3.3.0  # Image caching
  shared_preferences: ^2.2.2     # Local storage
  flutter_svg: ^2.0.9           # SVG support
  intl: ^0.18.1                 # Internationalization
  cupertino_icons: ^1.0.2       # iOS-style icons
```

### Platform Support
- ✅ Android (minSdk 21+)
- ✅ iOS (iOS 11+)
- ✅ Web

## Code Quality

### Linting
- Uses `flutter_lints` package
- Enforces const constructors where possible
- Prefers single quotes
- Custom rules in `analysis_options.yaml`

### Best Practices Followed
1. **Separation of Concerns**: Models, Providers, Screens, Widgets are clearly separated
2. **Reusability**: Common widgets extracted (ProductCard, CartItemCard)
3. **Type Safety**: Proper typing throughout the codebase
4. **Null Safety**: Fully null-safe code
5. **Immutability**: Using const constructors where appropriate
6. **Error Handling**: Graceful fallbacks for images and errors

## Future Enhancements (Roadmap)

### Phase 1 - Backend Integration
- [ ] Connect to mygetwell.app API
- [ ] User authentication (login/register)
- [ ] Real product data fetching
- [ ] Order placement

### Phase 2 - Enhanced Features
- [ ] Product search functionality
- [ ] Product detail screen with reviews
- [ ] Wishlist/favorites
- [ ] Order history
- [ ] Multiple delivery addresses
- [ ] Payment gateway integration

### Phase 3 - Advanced Features
- [ ] Push notifications for orders
- [ ] Real-time order tracking
- [ ] Product recommendations
- [ ] Social sharing
- [ ] Dark mode support
- [ ] Multi-language support

## Getting Started for Developers

### Prerequisites
```bash
flutter --version  # Should be 3.0.0+
dart --version     # Should be 3.0.0+
```

### Setup
```bash
# Clone the repository
git clone https://github.com/sbasharjr/Customer-Mobile-App.git
cd Customer-Mobile-App

# Install dependencies
flutter pub get

# Run on connected device/simulator
flutter run

# Run tests
flutter test

# Build for production
flutter build apk --release  # Android
flutter build ios --release  # iOS
```

### Development Workflow
1. Make changes to source files
2. Hot reload automatically applies changes (Ctrl+S or Cmd+S)
3. Run tests to verify functionality
4. Build and test on real devices

## File Organization

```
lib/
├── main.dart                    # App entry point
├── models/                      # Data models
│   ├── product.dart            # Product entity
│   └── cart_item.dart          # Cart item entity
├── providers/                   # State management
│   ├── cart_provider.dart      # Cart state
│   └── products_provider.dart  # Products state
├── screens/                     # App screens
│   ├── home_screen.dart        # Home/Products
│   ├── cart_screen.dart        # Shopping cart
│   └── profile_screen.dart     # User profile
└── widgets/                     # Reusable widgets
    ├── product_card.dart       # Product display
    └── cart_item_card.dart     # Cart item display
```

## Configuration Files

- `pubspec.yaml`: Project dependencies and assets
- `analysis_options.yaml`: Linting rules
- `android/`: Android-specific configuration
- `ios/`: iOS-specific configuration
- `web/`: Web-specific configuration

## Contributing

When contributing to this project:
1. Follow the existing code style
2. Add tests for new features
3. Update documentation
4. Ensure all tests pass
5. Submit a pull request

## License

This project is licensed under the MIT License.

## Contact

For questions or support, visit [https://mygetwell.app](https://mygetwell.app)
