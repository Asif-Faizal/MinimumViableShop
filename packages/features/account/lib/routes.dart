import 'package:go_router/go_router.dart';
import 'screens/account_screen.dart';

final routes = <RouteBase>[
  GoRoute(path: '/account', builder: (context, state) => const AccountScreen()),
];
