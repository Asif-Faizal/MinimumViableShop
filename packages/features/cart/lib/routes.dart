import 'package:go_router/go_router.dart';
import 'screens/cart_screen.dart';

final routes = <RouteBase>[
  GoRoute(path: '/cart', builder: (context, state) => const CartScreen()),
];
