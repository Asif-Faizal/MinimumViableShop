import 'package:dartz/dartz.dart';
import 'package:mvs_core/core.dart';
import 'entities/cart_item.dart';

abstract class ICartRepository {
  Future<Either<Failure, List<CartItem>>> getCart();
  Future<Either<Failure, List<CartItem>>> addToCart(CartItem item);
  Future<Either<Failure, List<CartItem>>> removeFromCart(String itemId);
  Future<Either<Failure, List<CartItem>>> updateQuantity(
    String itemId,
    int quantity,
  );
  Future<Either<Failure, List<CartItem>>> clearCart();
}
