import 'package:dio/dio.dart';
import 'package:mvs_core/storage/secure_storage_service.dart';
import '../domain/i_auth_repository.dart';
import '../domain/entities/user.dart';
import '../domain/entities/auth_token.dart';

class AuthRepository implements IAuthRepository {
  final Dio _dio;
  final SecureStorageService _storage;
  static const _kAccess = 'access_token';
  static const _kRefresh = 'refresh_token';

  AuthRepository(this._dio, this._storage);

  @override
  Future<AuthToken> login({required String email, required String password}) async {
    final res = await _dio.post('/auth/login', data: {'email': email, 'password': password});
    final token = AuthToken.fromJson(res.data as Map<String, dynamic>);
    await _persistToken(token);
    return token;
  }

  @override
  Future<AuthToken> signup({required String email, required String password, required String name}) async {
    final res = await _dio.post('/auth/signup', data: {'email': email, 'password': password, 'name': name});
    final token = AuthToken.fromJson(res.data as Map<String, dynamic>);
    await _persistToken(token);
    return token;
  }

  @override
  Future<void> logout() async {
    await _storage.delete(_kAccess);
    await _storage.delete(_kRefresh);
  }

  @override
  Future<User?> getCurrentUser() async {
    final access = await _storage.read(_kAccess);
    if (access == null) return null;
    final res = await _dio.get('/auth/me', options: Options(headers: {'Authorization': 'Bearer $access'}));
    return User.fromJson(res.data as Map<String, dynamic>);
  }

  Future<void> _persistToken(AuthToken token) async {
    await _storage.write(_kAccess, token.accessToken);
    if (token.refreshToken != null) {
      await _storage.write(_kRefresh, token.refreshToken!);
    }
  }
}
