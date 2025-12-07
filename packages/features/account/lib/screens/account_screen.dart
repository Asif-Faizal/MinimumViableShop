import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:features_auth/presentation/bloc/auth_bloc.dart';
import 'package:mvs_core/tenant/tenant_config_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final authBloc = GetIt.I<AuthBloc>();
    final tenantCubit = GetIt.I<TenantConfigCubit>();
    return Scaffold(
      appBar: AppBar(title: const Text('Account')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<TenantConfigCubit, TenantConfigState>(
              bloc: tenantCubit,
              builder: (context, state) => Text('Client: ${state.config.clientId}'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => authBloc.add(LogoutRequested()),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
