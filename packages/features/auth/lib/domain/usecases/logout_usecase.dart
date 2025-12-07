import '../i_auth_repository.dart';

class LogoutUseCase {
  final IAuthRepository _repo;
  LogoutUseCase(this._repo);
  Future<void> call() => _repo.logout();
}
