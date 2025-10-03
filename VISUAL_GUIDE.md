# MyGetwell Customer Mobile App - Visual Guide

## App Flow Diagram

```
┌─────────────────────────────────────────────────────┐
│                   MyGetwell App                      │
│                (Main Navigation)                     │
└──────────────┬──────────────┬────────────┬──────────┘
               │              │            │
      ┌────────▼───────┐  ┌───▼──────┐  ┌─▼─────────┐
      │  Home Screen   │  │   Cart   │  │  Profile  │
      │   (Products)   │  │  Screen  │  │  Screen   │
      └────────┬───────┘  └────┬─────┘  └─────┬─────┘
               │               │              │
               │               │              │
      ┌────────▼─────────┐    │              │
      │ Product Grid     │    │              │
      │ ┌─────┬─────┐   │    │              │
      │ │Prod1│Prod2│   │    │              │
      │ ├─────┼─────┤   │    │              │
      │ │Prod3│Prod4│   │    │              │
      │ └─────┴─────┘   │    │              │
      └──────────────────┘    │              │
                              │              │
                     ┌────────▼──────────┐  │
                     │ Cart Items List   │  │
                     │ ┌───────────────┐ │  │
                     │ │ Item 1   [+-] │ │  │
                     │ │ Item 2   [+-] │ │  │
                     │ └───────────────┘ │  │
                     │ Total: $XX.XX     │  │
                     │ [Checkout Button] │  │
                     └───────────────────┘  │
                                            │
                                    ┌───────▼───────┐
                                    │ Profile Menu  │
                                    │ - Edit        │
                                    │ - Addresses   │
                                    │ - Orders      │
                                    │ - Settings    │
                                    │ - About       │
                                    └───────────────┘
```

## State Management Flow

```
┌──────────────────────────────────────────────────────┐
│                   MultiProvider                       │
│  ┌────────────────────┐  ┌─────────────────────┐    │
│  │  CartProvider      │  │ ProductsProvider    │    │
│  │  - items           │  │ - products          │    │
│  │  - itemCount       │  │ - categories        │    │
│  │  - totalAmount     │  │ - fetchProducts()   │    │
│  │  - addItem()       │  │ - findById()        │    │
│  │  - removeItem()    │  │                     │    │
│  └──────┬─────────────┘  └──────┬──────────────┘    │
│         │                       │                    │
└─────────┼───────────────────────┼────────────────────┘
          │                       │
          │                       │
    ┌─────▼───────┐      ┌────────▼────────┐
    │ CartScreen  │      │  HomeScreen     │
    │ (Consumer)  │      │  (Consumer)     │
    └─────────────┘      └─────────────────┘
```

## Screen Wireframes (Text-based)

### Home Screen
```
┌─────────────────────────────────────┐
│ ≡  MyGetwell              🛒 [2]   │
├─────────────────────────────────────┤
│ [All][Fruits][Dairy][Bakery][Veg]  │
├─────────────────────────────────────┤
│ ┌───────┐  ┌───────┐               │
│ │ 🍎    │  │ 🍌    │               │
│ │Apples │  │Banana │               │
│ │$4.99  │  │$2.99  │               │
│ │  [+]  │  │  [+]  │               │
│ └───────┘  └───────┘               │
│ ┌───────┐  ┌───────┐               │
│ │ 🥛    │  │ 🥚    │               │
│ │Milk   │  │Eggs   │               │
│ │$3.49  │  │$5.99  │               │
│ │  [+]  │  │  [+]  │               │
│ └───────┘  └───────┘               │
│                                     │
├─────────────────────────────────────┤
│ [🏠 Home] [🛒 Cart] [👤 Profile]   │
└─────────────────────────────────────┘
```

### Cart Screen
```
┌─────────────────────────────────────┐
│ ←  Shopping Cart                    │
├─────────────────────────────────────┤
│ ┌─────────────────────────────────┐ │
│ │ 🍎 Apples              $4.99    │ │
│ │ Fresh organic apples            │ │
│ │ [-] 2 [+]          Total: $9.98 │ │
│ │                            [🗑️]  │ │
│ └─────────────────────────────────┘ │
│ ┌─────────────────────────────────┐ │
│ │ 🍌 Bananas             $2.99    │ │
│ │ Ripe bananas                    │ │
│ │ [-] 1 [+]          Total: $2.99 │ │
│ │                            [🗑️]  │ │
│ └─────────────────────────────────┘ │
│                                     │
│                                     │
├─────────────────────────────────────┤
│ Total:                      $12.97  │
│ ┌─────────────────────────────────┐ │
│ │    Proceed to Checkout          │ │
│ └─────────────────────────────────┘ │
├─────────────────────────────────────┤
│ [🏠 Home] [🛒 Cart] [👤 Profile]   │
└─────────────────────────────────────┘
```

### Profile Screen
```
┌─────────────────────────────────────┐
│           Profile                   │
├─────────────────────────────────────┤
│             ┌───┐                   │
│             │👤│                    │
│             └───┘                   │
│          Guest User                 │
│      guest@mygetwell.app            │
├─────────────────────────────────────┤
│ 👤 Edit Profile              →      │
│ ─────────────────────────────────── │
│ 📍 Delivery Addresses        →      │
│ ─────────────────────────────────── │
│ 📦 Order History             →      │
│ ─────────────────────────────────── │
│ 💳 Payment Methods           →      │
│ ─────────────────────────────────── │
│ 🔔 Notifications             →      │
│ ─────────────────────────────────── │
│ ❓ Help & Support            →      │
│ ─────────────────────────────────── │
│ ℹ️  About                     →      │
│ ─────────────────────────────────── │
│                                     │
│ ┌─────────────────────────────────┐ │
│ │         Logout                  │ │
│ └─────────────────────────────────┘ │
├─────────────────────────────────────┤
│ [🏠 Home] [🛒 Cart] [👤 Profile]   │
└─────────────────────────────────────┘
```

## Component Hierarchy

```
MyGetwellApp (MaterialApp)
│
└── MultiProvider
    ├── CartProvider
    └── ProductsProvider
    │
    └── MainNavigationScreen
        ├── BottomNavigationBar
        │
        ├── HomeScreen
        │   ├── AppBar
        │   ├── Category Filter (ChoiceChips)
        │   └── Product Grid
        │       └── ProductCard (multiple)
        │           ├── CachedNetworkImage
        │           ├── Product Info
        │           └── Add to Cart Button
        │
        ├── CartScreen
        │   ├── AppBar
        │   ├── Cart Items List
        │   │   └── CartItemCard (multiple)
        │   │       ├── Product Image
        │   │       ├── Quantity Controls
        │   │       └── Remove Button
        │   └── Checkout Section
        │       ├── Total Display
        │       └── Checkout Button
        │
        └── ProfileScreen
            ├── AppBar
            ├── User Info Header
            └── Menu Items List
                └── ListTile (multiple)
```

## Data Flow

```
User Action → Widget → Provider → Update State → Notify Listeners → UI Updates

Example: Adding item to cart
1. User taps [+] button on ProductCard
2. ProductCard calls cart.addItem(product)
3. CartProvider updates _items map
4. CartProvider calls notifyListeners()
5. All Consumer<CartProvider> widgets rebuild
6. UI shows updated cart count and items
```

## Key Interactions

### Adding Product to Cart
```
ProductCard
    ↓ (user tap)
IconButton (add_shopping_cart)
    ↓
cart.addItem(product)
    ↓
CartProvider._items[id] = CartItem
    ↓
notifyListeners()
    ↓
UI Updates (badge, cart screen)
    ↓
SnackBar appears with "Product added"
```

### Updating Cart Quantity
```
CartItemCard
    ↓ (user tap + or -)
InkWell (+ or -)
    ↓
cart.addItem() or cart.decreaseQuantity()
    ↓
CartProvider updates quantity
    ↓
notifyListeners()
    ↓
UI Updates (quantity, total)
```

## Color Scheme

- **Primary Color**: Green (#4CAF50)
- **Accent**: Light Green
- **Background**: White / Light Gray (#F5F5F5)
- **Text**: Dark Gray / Black
- **Error**: Red
- **Success**: Green

## Typography

- **App Title**: 20sp, Bold
- **Screen Titles**: 24sp, Bold
- **Product Name**: 14sp, Bold
- **Product Description**: 12sp, Regular
- **Price**: 16sp, Bold, Green
- **Body Text**: 14sp, Regular
- **Small Text**: 12sp, Regular

## Icons Used

- 🏠 Home: Icons.home
- 🛒 Cart: Icons.shopping_cart
- 👤 Profile: Icons.person
- ➕ Add: Icons.add_shopping_cart
- ➖ Decrease: Icons.remove
- ➕ Increase: Icons.add
- 🗑️ Delete: Icons.delete_outline
- → Navigate: Icons.chevron_right

## Responsive Design

The app uses Flutter's responsive widgets:
- GridView with fixed cross axis count (2 columns)
- Flexible and Expanded for dynamic sizing
- MediaQuery for screen size adaptations
- SafeArea for notch/status bar handling
