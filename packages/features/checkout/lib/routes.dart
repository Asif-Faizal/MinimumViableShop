import 'package:go_router/go_router.dart';
import 'screens/checkout_screen.dart';

final routes = <RouteBase>[
  GoRoute(path: '/checkout', builder: (context, state) => const CheckoutScreen()),
];
