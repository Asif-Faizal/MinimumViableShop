import '../i_auth_repository.dart';
import '../entities/user.dart';

class GetCurrentUserUseCase {
  final IAuthRepository _repo;
  GetCurrentUserUseCase(this._repo);
  Future<User?> call() => _repo.getCurrentUser();
}
