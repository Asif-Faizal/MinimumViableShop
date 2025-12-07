import 'package:go_router/go_router.dart';
import 'screens/home_screen.dart';

final routes = <RouteBase>[
  GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
];
