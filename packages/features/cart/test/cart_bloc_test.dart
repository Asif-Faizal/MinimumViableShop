import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:features_cart/presentation/bloc/cart_bloc.dart';
import 'package:features_cart/domain/entities/cart_item.dart';

void main() {
  group('CartBloc', () {
    blocTest<CartBloc, CartState>(
      'adds item and updates total',
      build: () => CartBloc(),
      act: (bloc) => bloc.add(AddItem(const CartItem(id: '1', title: 'P1', quantity: 2, price: 10))),
      expect: () => [isA<CartState>().having((s) => s.total, 'total', 20)],
    );
  });
}
