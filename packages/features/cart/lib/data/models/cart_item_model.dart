import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/cart_item.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
abstract class CartItemModel with _$CartItemModel {
  const CartItemModel._();

  const factory CartItemModel({
    required String id,
    required String title,
    required int quantity,
    required double price,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  CartItem toEntity() =>
      CartItem(id: id, title: title, quantity: quantity, price: price);

  factory CartItemModel.fromEntity(CartItem item) => CartItemModel(
    id: item.id,
    title: item.title,
    quantity: item.quantity,
    price: item.price,
  );
}
