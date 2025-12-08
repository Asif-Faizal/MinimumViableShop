import 'package:dartz/dartz.dart';
import 'package:mvs_core/core.dart'; // For Failure
import 'entities/user.dart';
import 'entities/auth_token.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthToken>> login({
    required String email,
    required String password,
  });
  Future<Either<Failure, AuthToken>> signup({
    required String email,
    required String password,
    required String name,
  });
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, User?>> getCurrentUser();
}
