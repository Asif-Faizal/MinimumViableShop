import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:mvs_shared_ui/theme/theme_builder.dart';
import 'package:mvs_core/tenant/tenant_config.dart';

void main() {
  test('Theme builder sets card radius from config', () {
    final cfg = TenantConfig(
      clientId: 'c1',
      branding: const Branding(primaryColor: '#000000', secondaryColor: '#FFFFFF', logo: ''),
      theme: const ThemeConfig(cardRadius: 24, buttonStyle: 'rounded'),
      modules: const Modules(wishlist: true, offers: true, cod: true),
      featureFlags: const FeatureFlags(newHomeLayout: false),
    );
    final theme = buildTheme(cfg);
    final shape = theme.cardTheme.shape as RoundedRectangleBorder?;
    expect(shape?.borderRadius, BorderRadius.circular(24));
  });
}
