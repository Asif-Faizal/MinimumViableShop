import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:mvs_core/core.dart'; // For Failure and SecureStorage
import '../../domain/entities/auth_token.dart';
import '../../domain/entities/user.dart';
import '../../domain/i_auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final SecureStorageService _storage;

  static const _kAccess = 'access_token';
  static const _kRefresh = 'refresh_token';

  AuthRepositoryImpl(this._remoteDataSource, this._storage);

  @override
  Future<Either<Failure, AuthToken>> login({
    required String email,
    required String password,
  }) async {
    try {
      final tokenModel = await _remoteDataSource.login(
        email: email,
        password: password,
      );
      final token = tokenModel.toEntity();
      await _persistToken(token);
      return Right(token);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, AuthToken>> signup({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final tokenModel = await _remoteDataSource.signup(
        email: email,
        password: password,
        name: name,
      );
      final token = tokenModel.toEntity();
      await _persistToken(token);
      return Right(token);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await _storage.delete(_kAccess);
      await _storage.delete(_kRefresh);
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, User?>> getCurrentUser() async {
    try {
      final access = await _storage.read(_kAccess);
      if (access == null) return const Right(null);
      final userModel = await _remoteDataSource.getCurrentUser(access);
      return Right(userModel.toEntity());
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  Future<void> _persistToken(AuthToken token) async {
    await _storage.write(_kAccess, token.accessToken);
    if (token.refreshToken != null) {
      await _storage.write(_kRefresh, token.refreshToken!);
    }
  }

  Failure _handleError(dynamic error) {
    if (error is DioException) {
      return ServerFailure(error.message ?? 'Unknown Dio Error');
    }
    return ServerFailure(error.toString());
  }
}
