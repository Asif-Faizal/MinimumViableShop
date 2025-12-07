import 'tenant_config.dart';
import 'i_tenant_service.dart';

class MockTenantService implements ITenantService {
  @override
  Future<TenantConfig> fetchConfig(String clientId, String env) async {
    return TenantConfig(
      clientId: clientId,
      branding: const Branding(
        primaryColor: '#0055FF',
        secondaryColor: '#FF6600',
        logo: 'https://cdn.example.com/logo.png',
      ),
      theme: const ThemeConfig(
        cardRadius: 16,
        buttonStyle: 'rounded',
      ),
      modules: const Modules(
        wishlist: true,
        offers: false,
        cod: true,
      ),
      featureFlags: const FeatureFlags(
        newHomeLayout: true,
      ),
    );
  }
}
