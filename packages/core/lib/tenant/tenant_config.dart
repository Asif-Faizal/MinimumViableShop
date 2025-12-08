import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant_config.freezed.dart';
part 'tenant_config.g.dart';

@freezed
abstract class TenantConfig with _$TenantConfig {
  const factory TenantConfig({
    required String clientId,
    required Branding branding,
    required ThemeConfig theme,
    required Modules modules,
    required FeatureFlags featureFlags,
  }) = _TenantConfig;

  factory TenantConfig.fromJson(Map<String, dynamic> json) =>
      _$TenantConfigFromJson(json);
}

@freezed
abstract class Branding with _$Branding {
  const factory Branding({
    required String primaryColor,
    required String secondaryColor,
    required String logo,
  }) = _Branding;

  factory Branding.fromJson(Map<String, dynamic> json) =>
      _$BrandingFromJson(json);
}

@freezed
abstract class ThemeConfig with _$ThemeConfig {
  const factory ThemeConfig({
    required int cardRadius,
    required String buttonStyle,
  }) = _ThemeConfig;

  factory ThemeConfig.fromJson(Map<String, dynamic> json) =>
      _$ThemeConfigFromJson(json);
}

@freezed
abstract class Modules with _$Modules {
  const factory Modules({
    required bool wishlist,
    required bool offers,
    required bool cod,
  }) = _Modules;

  factory Modules.fromJson(Map<String, dynamic> json) =>
      _$ModulesFromJson(json);
}

@freezed
abstract class FeatureFlags with _$FeatureFlags {
  const factory FeatureFlags({required bool newHomeLayout}) = _FeatureFlags;

  factory FeatureFlags.fromJson(Map<String, dynamic> json) =>
      _$FeatureFlagsFromJson(json);
}
