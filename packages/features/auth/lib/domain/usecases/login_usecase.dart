import 'package:dartz/dartz.dart';
import 'package:mvs_core/core.dart';
import '../i_auth_repository.dart';
import '../entities/auth_token.dart';

class LoginUseCase {
  final IAuthRepository _repo;
  LoginUseCase(this._repo);
  Future<Either<Failure, AuthToken>> call(String email, String password) =>
      _repo.login(email: email, password: password);
}
