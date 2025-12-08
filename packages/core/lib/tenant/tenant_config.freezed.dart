// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TenantConfig {

 String get clientId; Branding get branding; ThemeConfig get theme; Modules get modules; FeatureFlags get featureFlags;
/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantConfigCopyWith<TenantConfig> get copyWith => _$TenantConfigCopyWithImpl<TenantConfig>(this as TenantConfig, _$identity);

  /// Serializes this TenantConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantConfig&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.branding, branding) || other.branding == branding)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.modules, modules) || other.modules == modules)&&(identical(other.featureFlags, featureFlags) || other.featureFlags == featureFlags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,branding,theme,modules,featureFlags);

@override
String toString() {
  return 'TenantConfig(clientId: $clientId, branding: $branding, theme: $theme, modules: $modules, featureFlags: $featureFlags)';
}


}

/// @nodoc
abstract mixin class $TenantConfigCopyWith<$Res>  {
  factory $TenantConfigCopyWith(TenantConfig value, $Res Function(TenantConfig) _then) = _$TenantConfigCopyWithImpl;
@useResult
$Res call({
 String clientId, Branding branding, ThemeConfig theme, Modules modules, FeatureFlags featureFlags
});


$BrandingCopyWith<$Res> get branding;$ThemeConfigCopyWith<$Res> get theme;$ModulesCopyWith<$Res> get modules;$FeatureFlagsCopyWith<$Res> get featureFlags;

}
/// @nodoc
class _$TenantConfigCopyWithImpl<$Res>
    implements $TenantConfigCopyWith<$Res> {
  _$TenantConfigCopyWithImpl(this._self, this._then);

  final TenantConfig _self;
  final $Res Function(TenantConfig) _then;

/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientId = null,Object? branding = null,Object? theme = null,Object? modules = null,Object? featureFlags = null,}) {
  return _then(_self.copyWith(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,branding: null == branding ? _self.branding : branding // ignore: cast_nullable_to_non_nullable
as Branding,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeConfig,modules: null == modules ? _self.modules : modules // ignore: cast_nullable_to_non_nullable
as Modules,featureFlags: null == featureFlags ? _self.featureFlags : featureFlags // ignore: cast_nullable_to_non_nullable
as FeatureFlags,
  ));
}
/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandingCopyWith<$Res> get branding {
  
  return $BrandingCopyWith<$Res>(_self.branding, (value) {
    return _then(_self.copyWith(branding: value));
  });
}/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThemeConfigCopyWith<$Res> get theme {
  
  return $ThemeConfigCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModulesCopyWith<$Res> get modules {
  
  return $ModulesCopyWith<$Res>(_self.modules, (value) {
    return _then(_self.copyWith(modules: value));
  });
}/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureFlagsCopyWith<$Res> get featureFlags {
  
  return $FeatureFlagsCopyWith<$Res>(_self.featureFlags, (value) {
    return _then(_self.copyWith(featureFlags: value));
  });
}
}


/// Adds pattern-matching-related methods to [TenantConfig].
extension TenantConfigPatterns on TenantConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantConfig value)  $default,){
final _that = this;
switch (_that) {
case _TenantConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantConfig value)?  $default,){
final _that = this;
switch (_that) {
case _TenantConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clientId,  Branding branding,  ThemeConfig theme,  Modules modules,  FeatureFlags featureFlags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantConfig() when $default != null:
return $default(_that.clientId,_that.branding,_that.theme,_that.modules,_that.featureFlags);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clientId,  Branding branding,  ThemeConfig theme,  Modules modules,  FeatureFlags featureFlags)  $default,) {final _that = this;
switch (_that) {
case _TenantConfig():
return $default(_that.clientId,_that.branding,_that.theme,_that.modules,_that.featureFlags);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clientId,  Branding branding,  ThemeConfig theme,  Modules modules,  FeatureFlags featureFlags)?  $default,) {final _that = this;
switch (_that) {
case _TenantConfig() when $default != null:
return $default(_that.clientId,_that.branding,_that.theme,_that.modules,_that.featureFlags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TenantConfig implements TenantConfig {
  const _TenantConfig({required this.clientId, required this.branding, required this.theme, required this.modules, required this.featureFlags});
  factory _TenantConfig.fromJson(Map<String, dynamic> json) => _$TenantConfigFromJson(json);

@override final  String clientId;
@override final  Branding branding;
@override final  ThemeConfig theme;
@override final  Modules modules;
@override final  FeatureFlags featureFlags;

/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantConfigCopyWith<_TenantConfig> get copyWith => __$TenantConfigCopyWithImpl<_TenantConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantConfig&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.branding, branding) || other.branding == branding)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.modules, modules) || other.modules == modules)&&(identical(other.featureFlags, featureFlags) || other.featureFlags == featureFlags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,branding,theme,modules,featureFlags);

@override
String toString() {
  return 'TenantConfig(clientId: $clientId, branding: $branding, theme: $theme, modules: $modules, featureFlags: $featureFlags)';
}


}

/// @nodoc
abstract mixin class _$TenantConfigCopyWith<$Res> implements $TenantConfigCopyWith<$Res> {
  factory _$TenantConfigCopyWith(_TenantConfig value, $Res Function(_TenantConfig) _then) = __$TenantConfigCopyWithImpl;
@override @useResult
$Res call({
 String clientId, Branding branding, ThemeConfig theme, Modules modules, FeatureFlags featureFlags
});


@override $BrandingCopyWith<$Res> get branding;@override $ThemeConfigCopyWith<$Res> get theme;@override $ModulesCopyWith<$Res> get modules;@override $FeatureFlagsCopyWith<$Res> get featureFlags;

}
/// @nodoc
class __$TenantConfigCopyWithImpl<$Res>
    implements _$TenantConfigCopyWith<$Res> {
  __$TenantConfigCopyWithImpl(this._self, this._then);

  final _TenantConfig _self;
  final $Res Function(_TenantConfig) _then;

/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientId = null,Object? branding = null,Object? theme = null,Object? modules = null,Object? featureFlags = null,}) {
  return _then(_TenantConfig(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,branding: null == branding ? _self.branding : branding // ignore: cast_nullable_to_non_nullable
as Branding,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeConfig,modules: null == modules ? _self.modules : modules // ignore: cast_nullable_to_non_nullable
as Modules,featureFlags: null == featureFlags ? _self.featureFlags : featureFlags // ignore: cast_nullable_to_non_nullable
as FeatureFlags,
  ));
}

/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandingCopyWith<$Res> get branding {
  
  return $BrandingCopyWith<$Res>(_self.branding, (value) {
    return _then(_self.copyWith(branding: value));
  });
}/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThemeConfigCopyWith<$Res> get theme {
  
  return $ThemeConfigCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModulesCopyWith<$Res> get modules {
  
  return $ModulesCopyWith<$Res>(_self.modules, (value) {
    return _then(_self.copyWith(modules: value));
  });
}/// Create a copy of TenantConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureFlagsCopyWith<$Res> get featureFlags {
  
  return $FeatureFlagsCopyWith<$Res>(_self.featureFlags, (value) {
    return _then(_self.copyWith(featureFlags: value));
  });
}
}


/// @nodoc
mixin _$Branding {

 String get primaryColor; String get secondaryColor; String get logo;
/// Create a copy of Branding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandingCopyWith<Branding> get copyWith => _$BrandingCopyWithImpl<Branding>(this as Branding, _$identity);

  /// Serializes this Branding to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Branding&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.secondaryColor, secondaryColor) || other.secondaryColor == secondaryColor)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primaryColor,secondaryColor,logo);

@override
String toString() {
  return 'Branding(primaryColor: $primaryColor, secondaryColor: $secondaryColor, logo: $logo)';
}


}

/// @nodoc
abstract mixin class $BrandingCopyWith<$Res>  {
  factory $BrandingCopyWith(Branding value, $Res Function(Branding) _then) = _$BrandingCopyWithImpl;
@useResult
$Res call({
 String primaryColor, String secondaryColor, String logo
});




}
/// @nodoc
class _$BrandingCopyWithImpl<$Res>
    implements $BrandingCopyWith<$Res> {
  _$BrandingCopyWithImpl(this._self, this._then);

  final Branding _self;
  final $Res Function(Branding) _then;

/// Create a copy of Branding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? primaryColor = null,Object? secondaryColor = null,Object? logo = null,}) {
  return _then(_self.copyWith(
primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String,secondaryColor: null == secondaryColor ? _self.secondaryColor : secondaryColor // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Branding].
extension BrandingPatterns on Branding {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Branding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Branding() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Branding value)  $default,){
final _that = this;
switch (_that) {
case _Branding():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Branding value)?  $default,){
final _that = this;
switch (_that) {
case _Branding() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String primaryColor,  String secondaryColor,  String logo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Branding() when $default != null:
return $default(_that.primaryColor,_that.secondaryColor,_that.logo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String primaryColor,  String secondaryColor,  String logo)  $default,) {final _that = this;
switch (_that) {
case _Branding():
return $default(_that.primaryColor,_that.secondaryColor,_that.logo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String primaryColor,  String secondaryColor,  String logo)?  $default,) {final _that = this;
switch (_that) {
case _Branding() when $default != null:
return $default(_that.primaryColor,_that.secondaryColor,_that.logo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Branding implements Branding {
  const _Branding({required this.primaryColor, required this.secondaryColor, required this.logo});
  factory _Branding.fromJson(Map<String, dynamic> json) => _$BrandingFromJson(json);

@override final  String primaryColor;
@override final  String secondaryColor;
@override final  String logo;

/// Create a copy of Branding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandingCopyWith<_Branding> get copyWith => __$BrandingCopyWithImpl<_Branding>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Branding&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.secondaryColor, secondaryColor) || other.secondaryColor == secondaryColor)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primaryColor,secondaryColor,logo);

@override
String toString() {
  return 'Branding(primaryColor: $primaryColor, secondaryColor: $secondaryColor, logo: $logo)';
}


}

/// @nodoc
abstract mixin class _$BrandingCopyWith<$Res> implements $BrandingCopyWith<$Res> {
  factory _$BrandingCopyWith(_Branding value, $Res Function(_Branding) _then) = __$BrandingCopyWithImpl;
@override @useResult
$Res call({
 String primaryColor, String secondaryColor, String logo
});




}
/// @nodoc
class __$BrandingCopyWithImpl<$Res>
    implements _$BrandingCopyWith<$Res> {
  __$BrandingCopyWithImpl(this._self, this._then);

  final _Branding _self;
  final $Res Function(_Branding) _then;

/// Create a copy of Branding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? primaryColor = null,Object? secondaryColor = null,Object? logo = null,}) {
  return _then(_Branding(
primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String,secondaryColor: null == secondaryColor ? _self.secondaryColor : secondaryColor // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ThemeConfig {

 int get cardRadius; String get buttonStyle;
/// Create a copy of ThemeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeConfigCopyWith<ThemeConfig> get copyWith => _$ThemeConfigCopyWithImpl<ThemeConfig>(this as ThemeConfig, _$identity);

  /// Serializes this ThemeConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeConfig&&(identical(other.cardRadius, cardRadius) || other.cardRadius == cardRadius)&&(identical(other.buttonStyle, buttonStyle) || other.buttonStyle == buttonStyle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardRadius,buttonStyle);

@override
String toString() {
  return 'ThemeConfig(cardRadius: $cardRadius, buttonStyle: $buttonStyle)';
}


}

/// @nodoc
abstract mixin class $ThemeConfigCopyWith<$Res>  {
  factory $ThemeConfigCopyWith(ThemeConfig value, $Res Function(ThemeConfig) _then) = _$ThemeConfigCopyWithImpl;
@useResult
$Res call({
 int cardRadius, String buttonStyle
});




}
/// @nodoc
class _$ThemeConfigCopyWithImpl<$Res>
    implements $ThemeConfigCopyWith<$Res> {
  _$ThemeConfigCopyWithImpl(this._self, this._then);

  final ThemeConfig _self;
  final $Res Function(ThemeConfig) _then;

/// Create a copy of ThemeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardRadius = null,Object? buttonStyle = null,}) {
  return _then(_self.copyWith(
cardRadius: null == cardRadius ? _self.cardRadius : cardRadius // ignore: cast_nullable_to_non_nullable
as int,buttonStyle: null == buttonStyle ? _self.buttonStyle : buttonStyle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeConfig].
extension ThemeConfigPatterns on ThemeConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThemeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemeConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThemeConfig value)  $default,){
final _that = this;
switch (_that) {
case _ThemeConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThemeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ThemeConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int cardRadius,  String buttonStyle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemeConfig() when $default != null:
return $default(_that.cardRadius,_that.buttonStyle);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int cardRadius,  String buttonStyle)  $default,) {final _that = this;
switch (_that) {
case _ThemeConfig():
return $default(_that.cardRadius,_that.buttonStyle);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int cardRadius,  String buttonStyle)?  $default,) {final _that = this;
switch (_that) {
case _ThemeConfig() when $default != null:
return $default(_that.cardRadius,_that.buttonStyle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThemeConfig implements ThemeConfig {
  const _ThemeConfig({required this.cardRadius, required this.buttonStyle});
  factory _ThemeConfig.fromJson(Map<String, dynamic> json) => _$ThemeConfigFromJson(json);

@override final  int cardRadius;
@override final  String buttonStyle;

/// Create a copy of ThemeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeConfigCopyWith<_ThemeConfig> get copyWith => __$ThemeConfigCopyWithImpl<_ThemeConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThemeConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeConfig&&(identical(other.cardRadius, cardRadius) || other.cardRadius == cardRadius)&&(identical(other.buttonStyle, buttonStyle) || other.buttonStyle == buttonStyle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardRadius,buttonStyle);

@override
String toString() {
  return 'ThemeConfig(cardRadius: $cardRadius, buttonStyle: $buttonStyle)';
}


}

/// @nodoc
abstract mixin class _$ThemeConfigCopyWith<$Res> implements $ThemeConfigCopyWith<$Res> {
  factory _$ThemeConfigCopyWith(_ThemeConfig value, $Res Function(_ThemeConfig) _then) = __$ThemeConfigCopyWithImpl;
@override @useResult
$Res call({
 int cardRadius, String buttonStyle
});




}
/// @nodoc
class __$ThemeConfigCopyWithImpl<$Res>
    implements _$ThemeConfigCopyWith<$Res> {
  __$ThemeConfigCopyWithImpl(this._self, this._then);

  final _ThemeConfig _self;
  final $Res Function(_ThemeConfig) _then;

/// Create a copy of ThemeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardRadius = null,Object? buttonStyle = null,}) {
  return _then(_ThemeConfig(
cardRadius: null == cardRadius ? _self.cardRadius : cardRadius // ignore: cast_nullable_to_non_nullable
as int,buttonStyle: null == buttonStyle ? _self.buttonStyle : buttonStyle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Modules {

 bool get wishlist; bool get offers; bool get cod;
/// Create a copy of Modules
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModulesCopyWith<Modules> get copyWith => _$ModulesCopyWithImpl<Modules>(this as Modules, _$identity);

  /// Serializes this Modules to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Modules&&(identical(other.wishlist, wishlist) || other.wishlist == wishlist)&&(identical(other.offers, offers) || other.offers == offers)&&(identical(other.cod, cod) || other.cod == cod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wishlist,offers,cod);

@override
String toString() {
  return 'Modules(wishlist: $wishlist, offers: $offers, cod: $cod)';
}


}

/// @nodoc
abstract mixin class $ModulesCopyWith<$Res>  {
  factory $ModulesCopyWith(Modules value, $Res Function(Modules) _then) = _$ModulesCopyWithImpl;
@useResult
$Res call({
 bool wishlist, bool offers, bool cod
});




}
/// @nodoc
class _$ModulesCopyWithImpl<$Res>
    implements $ModulesCopyWith<$Res> {
  _$ModulesCopyWithImpl(this._self, this._then);

  final Modules _self;
  final $Res Function(Modules) _then;

/// Create a copy of Modules
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wishlist = null,Object? offers = null,Object? cod = null,}) {
  return _then(_self.copyWith(
wishlist: null == wishlist ? _self.wishlist : wishlist // ignore: cast_nullable_to_non_nullable
as bool,offers: null == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as bool,cod: null == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Modules].
extension ModulesPatterns on Modules {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Modules value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Modules() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Modules value)  $default,){
final _that = this;
switch (_that) {
case _Modules():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Modules value)?  $default,){
final _that = this;
switch (_that) {
case _Modules() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool wishlist,  bool offers,  bool cod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Modules() when $default != null:
return $default(_that.wishlist,_that.offers,_that.cod);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool wishlist,  bool offers,  bool cod)  $default,) {final _that = this;
switch (_that) {
case _Modules():
return $default(_that.wishlist,_that.offers,_that.cod);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool wishlist,  bool offers,  bool cod)?  $default,) {final _that = this;
switch (_that) {
case _Modules() when $default != null:
return $default(_that.wishlist,_that.offers,_that.cod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Modules implements Modules {
  const _Modules({required this.wishlist, required this.offers, required this.cod});
  factory _Modules.fromJson(Map<String, dynamic> json) => _$ModulesFromJson(json);

@override final  bool wishlist;
@override final  bool offers;
@override final  bool cod;

/// Create a copy of Modules
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModulesCopyWith<_Modules> get copyWith => __$ModulesCopyWithImpl<_Modules>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModulesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Modules&&(identical(other.wishlist, wishlist) || other.wishlist == wishlist)&&(identical(other.offers, offers) || other.offers == offers)&&(identical(other.cod, cod) || other.cod == cod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wishlist,offers,cod);

@override
String toString() {
  return 'Modules(wishlist: $wishlist, offers: $offers, cod: $cod)';
}


}

/// @nodoc
abstract mixin class _$ModulesCopyWith<$Res> implements $ModulesCopyWith<$Res> {
  factory _$ModulesCopyWith(_Modules value, $Res Function(_Modules) _then) = __$ModulesCopyWithImpl;
@override @useResult
$Res call({
 bool wishlist, bool offers, bool cod
});




}
/// @nodoc
class __$ModulesCopyWithImpl<$Res>
    implements _$ModulesCopyWith<$Res> {
  __$ModulesCopyWithImpl(this._self, this._then);

  final _Modules _self;
  final $Res Function(_Modules) _then;

/// Create a copy of Modules
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wishlist = null,Object? offers = null,Object? cod = null,}) {
  return _then(_Modules(
wishlist: null == wishlist ? _self.wishlist : wishlist // ignore: cast_nullable_to_non_nullable
as bool,offers: null == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as bool,cod: null == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$FeatureFlags {

 bool get newHomeLayout;
/// Create a copy of FeatureFlags
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeatureFlagsCopyWith<FeatureFlags> get copyWith => _$FeatureFlagsCopyWithImpl<FeatureFlags>(this as FeatureFlags, _$identity);

  /// Serializes this FeatureFlags to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeatureFlags&&(identical(other.newHomeLayout, newHomeLayout) || other.newHomeLayout == newHomeLayout));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newHomeLayout);

@override
String toString() {
  return 'FeatureFlags(newHomeLayout: $newHomeLayout)';
}


}

/// @nodoc
abstract mixin class $FeatureFlagsCopyWith<$Res>  {
  factory $FeatureFlagsCopyWith(FeatureFlags value, $Res Function(FeatureFlags) _then) = _$FeatureFlagsCopyWithImpl;
@useResult
$Res call({
 bool newHomeLayout
});




}
/// @nodoc
class _$FeatureFlagsCopyWithImpl<$Res>
    implements $FeatureFlagsCopyWith<$Res> {
  _$FeatureFlagsCopyWithImpl(this._self, this._then);

  final FeatureFlags _self;
  final $Res Function(FeatureFlags) _then;

/// Create a copy of FeatureFlags
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newHomeLayout = null,}) {
  return _then(_self.copyWith(
newHomeLayout: null == newHomeLayout ? _self.newHomeLayout : newHomeLayout // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FeatureFlags].
extension FeatureFlagsPatterns on FeatureFlags {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeatureFlags value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeatureFlags() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeatureFlags value)  $default,){
final _that = this;
switch (_that) {
case _FeatureFlags():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeatureFlags value)?  $default,){
final _that = this;
switch (_that) {
case _FeatureFlags() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool newHomeLayout)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeatureFlags() when $default != null:
return $default(_that.newHomeLayout);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool newHomeLayout)  $default,) {final _that = this;
switch (_that) {
case _FeatureFlags():
return $default(_that.newHomeLayout);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool newHomeLayout)?  $default,) {final _that = this;
switch (_that) {
case _FeatureFlags() when $default != null:
return $default(_that.newHomeLayout);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeatureFlags implements FeatureFlags {
  const _FeatureFlags({required this.newHomeLayout});
  factory _FeatureFlags.fromJson(Map<String, dynamic> json) => _$FeatureFlagsFromJson(json);

@override final  bool newHomeLayout;

/// Create a copy of FeatureFlags
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeatureFlagsCopyWith<_FeatureFlags> get copyWith => __$FeatureFlagsCopyWithImpl<_FeatureFlags>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeatureFlagsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeatureFlags&&(identical(other.newHomeLayout, newHomeLayout) || other.newHomeLayout == newHomeLayout));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newHomeLayout);

@override
String toString() {
  return 'FeatureFlags(newHomeLayout: $newHomeLayout)';
}


}

/// @nodoc
abstract mixin class _$FeatureFlagsCopyWith<$Res> implements $FeatureFlagsCopyWith<$Res> {
  factory _$FeatureFlagsCopyWith(_FeatureFlags value, $Res Function(_FeatureFlags) _then) = __$FeatureFlagsCopyWithImpl;
@override @useResult
$Res call({
 bool newHomeLayout
});




}
/// @nodoc
class __$FeatureFlagsCopyWithImpl<$Res>
    implements _$FeatureFlagsCopyWith<$Res> {
  __$FeatureFlagsCopyWithImpl(this._self, this._then);

  final _FeatureFlags _self;
  final $Res Function(_FeatureFlags) _then;

/// Create a copy of FeatureFlags
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newHomeLayout = null,}) {
  return _then(_FeatureFlags(
newHomeLayout: null == newHomeLayout ? _self.newHomeLayout : newHomeLayout // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
