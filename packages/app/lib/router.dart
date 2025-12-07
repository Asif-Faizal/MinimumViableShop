import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:features_auth/routes.dart' as auth_routes;
import 'package:features_home/routes.dart' as home_routes;
import 'package:features_catalog/routes.dart' as catalog_routes;
import 'package:features_cart/routes.dart' as cart_routes;
import 'package:features_checkout/routes.dart' as checkout_routes;
import 'package:features_orders/routes.dart' as orders_routes;
import 'package:features_account/routes.dart' as account_routes;
import 'package:features_auth/presentation/bloc/auth_bloc.dart';

class _StreamListenable<T> extends ChangeNotifier {
  late final StreamSubscription _sub;
  _StreamListenable(Stream<T> stream) {
    _sub = stream.listen((_) => notifyListeners());
  }
  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}

GoRouter createRouter() {
  final authBloc = GetIt.I<AuthBloc>();
  final routes = <RouteBase>[
    ...auth_routes.routes,
    ...home_routes.routes,
    ...catalog_routes.routes,
    ...cart_routes.routes,
    ...checkout_routes.routes,
    ...orders_routes.routes,
    ...account_routes.routes,
  ];

  return GoRouter(
    routes: routes,
    initialLocation: '/home',
    refreshListenable: _StreamListenable(authBloc.stream),
    redirect: (context, state) {
      final authenticated = authBloc.state.status == AuthStatus.authenticated;
      final loggingIn = state.matchedLocation == '/login' || state.matchedLocation == '/signup';
      if (!authenticated && !loggingIn) {
        return '/login';
      }
      if (authenticated && loggingIn) {
        return '/home';
      }
      return null;
    },
  );
}
