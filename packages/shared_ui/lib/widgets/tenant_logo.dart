import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvs_core/tenant/tenant_config_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TenantLogo extends StatelessWidget {
  const TenantLogo({super.key, this.size = 48});
  final double size;
  @override
  Widget build(BuildContext context) {
    final cubit = GetIt.I<TenantConfigCubit>();
    return BlocBuilder<TenantConfigCubit, TenantConfigState>(
      bloc: cubit,
      builder: (context, state) {
        final logo = state.config.branding.logo;
        if (logo.isEmpty) {
          return Icon(Icons.store, size: size);
        }
        return Image.network(logo, height: size, errorBuilder: (_, __, ___) => Icon(Icons.store, size: size));
      },
    );
  }
}
