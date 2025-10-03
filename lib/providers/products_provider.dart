import 'package:flutter/foundation.dart';
import '../models/product.dart';

class ProductsProvider extends ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: '1',
      name: 'Organic Apples',
      description: 'Fresh organic apples from local farms',
      price: 4.99,
      imageUrl: 'https://via.placeholder.com/300x300?text=Apples',
      category: 'Fruits',
      inStock: true,
    ),
    Product(
      id: '2',
      name: 'Fresh Bananas',
      description: 'Ripe bananas perfect for smoothies',
      price: 2.99,
      imageUrl: 'https://via.placeholder.com/300x300?text=Bananas',
      category: 'Fruits',
      inStock: true,
    ),
    Product(
      id: '3',
      name: 'Whole Milk',
      description: 'Fresh whole milk, 1 gallon',
      price: 3.49,
      imageUrl: 'https://via.placeholder.com/300x300?text=Milk',
      category: 'Dairy',
      inStock: true,
    ),
    Product(
      id: '4',
      name: 'Organic Eggs',
      description: 'Free-range organic eggs, dozen',
      price: 5.99,
      imageUrl: 'https://via.placeholder.com/300x300?text=Eggs',
      category: 'Dairy',
      inStock: true,
    ),
    Product(
      id: '5',
      name: 'Fresh Bread',
      description: 'Artisan whole wheat bread',
      price: 4.49,
      imageUrl: 'https://via.placeholder.com/300x300?text=Bread',
      category: 'Bakery',
      inStock: true,
    ),
  ];

  List<Product> get products => [..._products];

  List<Product> getProductsByCategory(String category) {
    return _products.where((product) => product.category == category).toList();
  }

  Product? findById(String id) {
    try {
      return _products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<void> fetchProducts() async {
    // TODO: Implement API call to fetch products from mygetwell.app
    // For now, using mock data
    notifyListeners();
  }
}
