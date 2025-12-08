import '../models/cart_item_model.dart';

abstract class CartRemoteDataSource {
  Future<List<CartItemModel>> getCart();
  Future<List<CartItemModel>> addToCart(CartItemModel item);
  Future<List<CartItemModel>> removeFromCart(String itemId);
  Future<List<CartItemModel>> updateQuantity(String itemId, int quantity);
  Future<List<CartItemModel>> clearCart();
}

// Mock implementation for now as we don't have a real backend
class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final List<CartItemModel> _items = [];

  @override
  Future<List<CartItemModel>> getCart() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 100));
    return List.from(_items);
  }

  @override
  Future<List<CartItemModel>> addToCart(CartItemModel item) async {
    await Future.delayed(const Duration(milliseconds: 100));
    final index = _items.indexWhere((i) => i.id == item.id);
    if (index >= 0) {
      final existing = _items[index];
      _items[index] = existing.copyWith(
        quantity: existing.quantity + item.quantity,
      );
    } else {
      _items.add(item);
    }
    return List.from(_items);
  }

  @override
  Future<List<CartItemModel>> removeFromCart(String itemId) async {
    await Future.delayed(const Duration(milliseconds: 100));
    _items.removeWhere((i) => i.id == itemId);
    return List.from(_items);
  }

  @override
  Future<List<CartItemModel>> updateQuantity(
    String itemId,
    int quantity,
  ) async {
    await Future.delayed(const Duration(milliseconds: 100));
    final index = _items.indexWhere((i) => i.id == itemId);
    if (index >= 0) {
      if (quantity <= 0) {
        _items.removeAt(index);
      } else {
        _items[index] = _items[index].copyWith(quantity: quantity);
      }
    }
    return List.from(_items);
  }

  @override
  Future<List<CartItemModel>> clearCart() async {
    await Future.delayed(const Duration(milliseconds: 100));
    _items.clear();
    return [];
  }
}
