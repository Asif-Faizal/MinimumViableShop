import 'package:dartz/dartz.dart';
import 'package:mvs_core/core.dart';
import '../i_auth_repository.dart';
import '../entities/user.dart';

class GetCurrentUserUseCase {
  final IAuthRepository _repo;
  GetCurrentUserUseCase(this._repo);
  Future<Either<Failure, User?>> call() => _repo.getCurrentUser();
}
