import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mvs_core/core.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/i_cart_repository.dart';

class CartState extends Equatable {
  final List<CartItem> items;
  final double total;
  final Failure? failure;
  const CartState({required this.items, required this.total, this.failure});
  CartState copyWith({
    List<CartItem>? items,
    double? total,
    Failure? failure,
  }) => CartState(
    items: items ?? this.items,
    total: total ?? this.total,
    failure: failure ?? this.failure,
  );
  @override
  List<Object?> get props => [items, total, failure];
}

abstract class CartEvent {}

class AddItem extends CartEvent {
  final CartItem item;
  AddItem(this.item);
}

class RemoveItem extends CartEvent {
  final String id;
  RemoveItem(this.id);
}

class UpdateQuantity extends CartEvent {
  final String id;
  final int quantity;
  UpdateQuantity(this.id, this.quantity);
}

class ClearCart extends CartEvent {}

class CartBloc extends Bloc<CartEvent, CartState> {
  final ICartRepository _repo;

  CartBloc(this._repo) : super(const CartState(items: [], total: 0)) {
    on<AddItem>(_onAdd);
    on<RemoveItem>(_onRemove);
    on<UpdateQuantity>(_onUpdate);
    on<ClearCart>(_onClear);
  }

  double _calcTotal(List<CartItem> items) =>
      items.fold(0, (sum, i) => sum + i.price * i.quantity);

  Future<void> _onAdd(AddItem e, Emitter<CartState> emit) async {
    final result = await _repo.addToCart(e.item);
    result.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (items) => emit(
        state.copyWith(items: items, total: _calcTotal(items), failure: null),
      ),
    );
  }

  Future<void> _onRemove(RemoveItem e, Emitter<CartState> emit) async {
    final result = await _repo.removeFromCart(e.id);
    result.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (items) => emit(
        state.copyWith(items: items, total: _calcTotal(items), failure: null),
      ),
    );
  }

  Future<void> _onUpdate(UpdateQuantity e, Emitter<CartState> emit) async {
    final result = await _repo.updateQuantity(e.id, e.quantity);
    result.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (items) => emit(
        state.copyWith(items: items, total: _calcTotal(items), failure: null),
      ),
    );
  }

  Future<void> _onClear(ClearCart e, Emitter<CartState> emit) async {
    final result = await _repo.clearCart();
    result.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (items) => emit(state.copyWith(items: items, total: 0, failure: null)),
    );
  }
}
