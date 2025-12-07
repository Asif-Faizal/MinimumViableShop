import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mvs_core/tenant/tenant_config_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final tenantCubit = GetIt.I<TenantConfigCubit>();
    return BlocBuilder<TenantConfigCubit, TenantConfigState>(
      bloc: tenantCubit,
      builder: (context, state) {
        final flag = state.config.featureFlags.newHomeLayout;
        return Scaffold(
          appBar: AppBar(title: const Text('Home')),
          body: Center(
            child: flag
                ? const Text('New Home Layout Enabled')
                : const Text('Standard Home Layout'),
          ),
        );
      },
    );
  }
}
