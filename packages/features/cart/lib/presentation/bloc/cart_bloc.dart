import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/cart_item.dart';

class CartState extends Equatable {
  final List<CartItem> items;
  final double total;
  const CartState({required this.items, required this.total});
  CartState copyWith({List<CartItem>? items, double? total}) => CartState(items: items ?? this.items, total: total ?? this.total);
  @override
  List<Object?> get props => [items, total];
}

abstract class CartEvent {}
class AddItem extends CartEvent { final CartItem item; AddItem(this.item); }
class RemoveItem extends CartEvent { final String id; RemoveItem(this.id); }
class UpdateQuantity extends CartEvent { final String id; final int quantity; UpdateQuantity(this.id, this.quantity); }
class ClearCart extends CartEvent {}

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState(items: [], total: 0)) {
    on<AddItem>(_onAdd);
    on<RemoveItem>(_onRemove);
    on<UpdateQuantity>(_onUpdate);
    on<ClearCart>(_onClear);
  }

  double _calcTotal(List<CartItem> items) => items.fold(0, (sum, i) => sum + i.price * i.quantity);

  void _onAdd(AddItem e, Emitter<CartState> emit) {
    final existing = state.items.where((i) => i.id == e.item.id).toList();
    List<CartItem> next;
    if (existing.isEmpty) {
      next = [...state.items, e.item];
    } else {
      next = state.items.map((i) => i.id == e.item.id ? i.copyWith(quantity: i.quantity + e.item.quantity) : i).toList();
    }
    emit(state.copyWith(items: next, total: _calcTotal(next)));
  }

  void _onRemove(RemoveItem e, Emitter<CartState> emit) {
    final next = state.items.where((i) => i.id != e.id).toList();
    emit(state.copyWith(items: next, total: _calcTotal(next)));
  }

  void _onUpdate(UpdateQuantity e, Emitter<CartState> emit) {
    final next = state.items.map((i) => i.id == e.id ? i.copyWith(quantity: e.quantity) : i).toList();
    emit(state.copyWith(items: next, total: _calcTotal(next)));
  }

  void _onClear(ClearCart e, Emitter<CartState> emit) {
    emit(const CartState(items: [], total: 0));
  }
}
