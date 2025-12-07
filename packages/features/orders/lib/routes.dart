import 'package:go_router/go_router.dart';
import 'screens/orders_screen.dart';
import 'screens/order_detail_screen.dart';

final routes = <RouteBase>[
  GoRoute(path: '/orders', builder: (context, state) => const OrdersScreen()),
  GoRoute(path: '/orders/:id', builder: (context, state) => OrderDetailScreen(id: state.pathParameters['id']!)),
];
