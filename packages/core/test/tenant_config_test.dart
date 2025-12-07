import 'package:flutter_test/flutter_test.dart';
import 'package:mvs_core/tenant/tenant_config.dart';

void main() {
  test('TenantConfig parses from JSON', () {
    final json = {
      'clientId': 'client_a',
      'branding': {
        'primaryColor': '#0055FF',
        'secondaryColor': '#FF6600',
        'logo': 'https://cdn/logo.png'
      },
      'theme': {'cardRadius': 16, 'buttonStyle': 'rounded'},
      'modules': {'wishlist': true, 'offers': false, 'cod': true},
      'featureFlags': {'newHomeLayout': true},
    };
    final cfg = TenantConfig.fromJson(json);
    expect(cfg.clientId, 'client_a');
    expect(cfg.branding.primaryColor, '#0055FF');
    expect(cfg.theme.cardRadius, 16);
    expect(cfg.modules.cod, true);
    expect(cfg.featureFlags.newHomeLayout, true);
  });
}
