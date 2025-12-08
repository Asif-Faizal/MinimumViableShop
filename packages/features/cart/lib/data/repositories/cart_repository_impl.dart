import 'package:dartz/dartz.dart';
import 'package:mvs_core/core.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/i_cart_repository.dart';
import '../datasources/cart_remote_data_source.dart';
import '../models/cart_item_model.dart';

class CartRepositoryImpl implements ICartRepository {
  final CartRemoteDataSource _dataSource;

  CartRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<CartItem>>> getCart() async {
    try {
      final models = await _dataSource.getCart();
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CartItem>>> addToCart(CartItem item) async {
    try {
      final model = CartItemModel.fromEntity(item);
      final models = await _dataSource.addToCart(model);
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CartItem>>> removeFromCart(String itemId) async {
    try {
      final models = await _dataSource.removeFromCart(itemId);
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CartItem>>> updateQuantity(
    String itemId,
    int quantity,
  ) async {
    try {
      final models = await _dataSource.updateQuantity(itemId, quantity);
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CartItem>>> clearCart() async {
    try {
      final models = await _dataSource.clearCart();
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
