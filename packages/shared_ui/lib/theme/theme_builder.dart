import 'package:flutter/material.dart';
import 'package:mvs_core/tenant/tenant_config.dart';

Color _parseColor(String hex) {
  final cleaned = hex.replaceAll('#', '');
  final value = int.parse('FF$cleaned', radix: 16);
  return Color(value);
}

ThemeData buildTheme(TenantConfig? config) {
  final primary = _parseColor(config?.branding.primaryColor ?? '#0055FF');
  final secondary = _parseColor(config?.branding.secondaryColor ?? '#FF6600');
  final radius = config?.theme.cardRadius ?? 12;
  final isRounded = (config?.theme.buttonStyle ?? 'rounded') == 'rounded';

  final base = ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: primary));
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(secondary: secondary),
    cardTheme: CardThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius.toDouble()))),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: isRounded ? const StadiumBorder() : const RoundedRectangleBorder(),
      ),
    ),
  );
}
