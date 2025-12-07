import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mvs_core/tenant/tenant_config_cubit.dart';
import 'package:mvs_shared_ui/theme/theme_builder.dart';
import 'router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final tenantCubit = GetIt.I<TenantConfigCubit>();
    final router = GetIt.I<GoRouter>();
    return BlocBuilder<TenantConfigCubit, TenantConfigState>(
      bloc: tenantCubit,
      builder: (context, state) {
        final theme = buildTheme(state.config);
        return MaterialApp.router(
          routerConfig: router,
          theme: theme,
        );
      },
    );
  }
}
