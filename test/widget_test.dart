import 'package:flutter_test/flutter_test.dart';
import 'package:customer_mobile_app/models/product.dart';
import 'package:customer_mobile_app/models/cart_item.dart';
import 'package:customer_mobile_app/providers/cart_provider.dart';

void main() {
  group('Product Model Tests', () {
    test('Product should be created with correct values', () {
      final product = Product(
        id: '1',
        name: 'Test Product',
        description: 'Test Description',
        price: 9.99,
        imageUrl: 'https://example.com/image.jpg',
        category: 'Test',
      );

      expect(product.id, '1');
      expect(product.name, 'Test Product');
      expect(product.price, 9.99);
      expect(product.inStock, true);
    });

    test('Product should convert to and from JSON', () {
      final product = Product(
        id: '1',
        name: 'Test Product',
        description: 'Test Description',
        price: 9.99,
        imageUrl: 'https://example.com/image.jpg',
        category: 'Test',
      );

      final json = product.toJson();
      final productFromJson = Product.fromJson(json);

      expect(productFromJson.id, product.id);
      expect(productFromJson.name, product.name);
      expect(productFromJson.price, product.price);
    });
  });

  group('CartProvider Tests', () {
    test('Cart should start empty', () {
      final cart = CartProvider();
      expect(cart.itemCount, 0);
      expect(cart.totalAmount, 0.0);
    });

    test('Adding item to cart should increase item count', () {
      final cart = CartProvider();
      final product = Product(
        id: '1',
        name: 'Test Product',
        description: 'Test Description',
        price: 9.99,
        imageUrl: 'https://example.com/image.jpg',
        category: 'Test',
      );

      cart.addItem(product);
      expect(cart.itemCount, 1);
      expect(cart.totalAmount, 9.99);
    });

    test('Adding same item twice should increase quantity', () {
      final cart = CartProvider();
      final product = Product(
        id: '1',
        name: 'Test Product',
        description: 'Test Description',
        price: 9.99,
        imageUrl: 'https://example.com/image.jpg',
        category: 'Test',
      );

      cart.addItem(product);
      cart.addItem(product);
      
      expect(cart.itemCount, 1);
      expect(cart.items['1']?.quantity, 2);
      expect(cart.totalAmount, 19.98);
    });

    test('Removing item should clear it from cart', () {
      final cart = CartProvider();
      final product = Product(
        id: '1',
        name: 'Test Product',
        description: 'Test Description',
        price: 9.99,
        imageUrl: 'https://example.com/image.jpg',
        category: 'Test',
      );

      cart.addItem(product);
      cart.removeItem('1');
      
      expect(cart.itemCount, 0);
      expect(cart.totalAmount, 0.0);
    });

    test('Decreasing quantity should reduce by one', () {
      final cart = CartProvider();
      final product = Product(
        id: '1',
        name: 'Test Product',
        description: 'Test Description',
        price: 9.99,
        imageUrl: 'https://example.com/image.jpg',
        category: 'Test',
      );

      cart.addItem(product);
      cart.addItem(product);
      cart.decreaseQuantity('1');
      
      expect(cart.items['1']?.quantity, 1);
      expect(cart.totalAmount, 9.99);
    });

    test('Decreasing quantity of single item should remove it', () {
      final cart = CartProvider();
      final product = Product(
        id: '1',
        name: 'Test Product',
        description: 'Test Description',
        price: 9.99,
        imageUrl: 'https://example.com/image.jpg',
        category: 'Test',
      );

      cart.addItem(product);
      cart.decreaseQuantity('1');
      
      expect(cart.itemCount, 0);
    });

    test('Clear should empty the cart', () {
      final cart = CartProvider();
      final product = Product(
        id: '1',
        name: 'Test Product',
        description: 'Test Description',
        price: 9.99,
        imageUrl: 'https://example.com/image.jpg',
        category: 'Test',
      );

      cart.addItem(product);
      cart.clear();
      
      expect(cart.itemCount, 0);
      expect(cart.totalAmount, 0.0);
    });
  });
}
