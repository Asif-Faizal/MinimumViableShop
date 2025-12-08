// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TenantConfig _$TenantConfigFromJson(Map<String, dynamic> json) =>
    _TenantConfig(
      clientId: json['clientId'] as String,
      branding: Branding.fromJson(json['branding'] as Map<String, dynamic>),
      theme: ThemeConfig.fromJson(json['theme'] as Map<String, dynamic>),
      modules: Modules.fromJson(json['modules'] as Map<String, dynamic>),
      featureFlags: FeatureFlags.fromJson(
        json['featureFlags'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$TenantConfigToJson(_TenantConfig instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'branding': instance.branding,
      'theme': instance.theme,
      'modules': instance.modules,
      'featureFlags': instance.featureFlags,
    };

_Branding _$BrandingFromJson(Map<String, dynamic> json) => _Branding(
  primaryColor: json['primaryColor'] as String,
  secondaryColor: json['secondaryColor'] as String,
  logo: json['logo'] as String,
);

Map<String, dynamic> _$BrandingToJson(_Branding instance) => <String, dynamic>{
  'primaryColor': instance.primaryColor,
  'secondaryColor': instance.secondaryColor,
  'logo': instance.logo,
};

_ThemeConfig _$ThemeConfigFromJson(Map<String, dynamic> json) => _ThemeConfig(
  cardRadius: (json['cardRadius'] as num).toInt(),
  buttonStyle: json['buttonStyle'] as String,
);

Map<String, dynamic> _$ThemeConfigToJson(_ThemeConfig instance) =>
    <String, dynamic>{
      'cardRadius': instance.cardRadius,
      'buttonStyle': instance.buttonStyle,
    };

_Modules _$ModulesFromJson(Map<String, dynamic> json) => _Modules(
  wishlist: json['wishlist'] as bool,
  offers: json['offers'] as bool,
  cod: json['cod'] as bool,
);

Map<String, dynamic> _$ModulesToJson(_Modules instance) => <String, dynamic>{
  'wishlist': instance.wishlist,
  'offers': instance.offers,
  'cod': instance.cod,
};

_FeatureFlags _$FeatureFlagsFromJson(Map<String, dynamic> json) =>
    _FeatureFlags(newHomeLayout: json['newHomeLayout'] as bool);

Map<String, dynamic> _$FeatureFlagsToJson(_FeatureFlags instance) =>
    <String, dynamic>{'newHomeLayout': instance.newHomeLayout};
