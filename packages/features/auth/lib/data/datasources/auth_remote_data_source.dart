import 'package:dio/dio.dart';
import '../models/auth_token_model.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthTokenModel> login({
    required String email,
    required String password,
  });
  Future<AuthTokenModel> signup({
    required String email,
    required String password,
    required String name,
  });
  Future<UserModel> getCurrentUser(String accessToken);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<AuthTokenModel> login({
    required String email,
    required String password,
  }) async {
    // Assuming the API returns the token directly in the data or wrapped.
    // Based on previous repo: res.data as Map<String, dynamic>
    final response = await _dio.post(
      '/auth/login',
      data: {'email': email, 'password': password},
    );
    return AuthTokenModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<AuthTokenModel> signup({
    required String email,
    required String password,
    required String name,
  }) async {
    final response = await _dio.post(
      '/auth/signup',
      data: {'email': email, 'password': password, 'name': name},
    );
    return AuthTokenModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<UserModel> getCurrentUser(String accessToken) async {
    final response = await _dio.get(
      '/auth/me',
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
    );
    return UserModel.fromJson(response.data as Map<String, dynamic>);
  }
}
