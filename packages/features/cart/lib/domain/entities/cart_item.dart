import 'package:equatable/equatable.dart';

class CartItem extends Equatable {
  final String id;
  final String title;
  final int quantity;
  final double price;
  const CartItem({required this.id, required this.title, required this.quantity, required this.price});
  CartItem copyWith({String? id, String? title, int? quantity, double? price}) => CartItem(id: id ?? this.id, title: title ?? this.title, quantity: quantity ?? this.quantity, price: price ?? this.price);
  @override
  List<Object?> get props => [id, title, quantity, price];
}
