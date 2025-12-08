import 'package:dartz/dartz.dart';
import 'package:mvs_core/core.dart';
import '../i_auth_repository.dart';
import '../entities/auth_token.dart';

class SignupUseCase {
  final IAuthRepository _repo;
  SignupUseCase(this._repo);
  Future<Either<Failure, AuthToken>> call(
    String email,
    String password,
    String name,
  ) => _repo.signup(email: email, password: password, name: name);
}
