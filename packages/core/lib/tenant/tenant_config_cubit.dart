import 'package:flutter_bloc/flutter_bloc.dart';
import 'tenant_config.dart';
import 'i_tenant_service.dart';

class TenantConfigState {
  final TenantConfig config;
  final bool loading;
  TenantConfigState({required this.config, required this.loading});
  TenantConfigState copyWith({TenantConfig? config, bool? loading}) => TenantConfigState(config: config ?? this.config, loading: loading ?? this.loading);
}

class TenantConfigCubit extends Cubit<TenantConfigState> {
  final ITenantService _service;
  TenantConfigCubit(this._service)
      : super(TenantConfigState(
          config: TenantConfig(
            clientId: '',
            branding: const Branding(primaryColor: '#0055FF', secondaryColor: '#FF6600', logo: ''),
            theme: const ThemeConfig(cardRadius: 12, buttonStyle: 'rounded'),
            modules: const Modules(wishlist: true, offers: true, cod: true),
            featureFlags: const FeatureFlags(newHomeLayout: false),
          ),
          loading: true,
        ));

  Future<void> load(String clientId, String env) async {
    emit(state.copyWith(loading: true));
    final cfg = await _service.fetchConfig(clientId, env);
    emit(state.copyWith(config: cfg, loading: false));
  }
}
