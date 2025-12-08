import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auth_token.dart';

part 'auth_token_model.freezed.dart';
part 'auth_token_model.g.dart';

@freezed
abstract class AuthTokenModel with _$AuthTokenModel {
  const AuthTokenModel._(); // Needed for methods/properties in freezed classes if adding logic

  const factory AuthTokenModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  }) = _AuthTokenModel;

  factory AuthTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenModelFromJson(json);

  AuthToken toEntity() =>
      AuthToken(accessToken: accessToken, refreshToken: refreshToken);
}
