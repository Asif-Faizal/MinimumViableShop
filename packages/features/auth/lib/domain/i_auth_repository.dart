import 'entities/user.dart';
import 'entities/auth_token.dart';

abstract class IAuthRepository {
  Future<AuthToken> login({required String email, required String password});
  Future<AuthToken> signup({required String email, required String password, required String name});
  Future<void> logout();
  Future<User?> getCurrentUser();
}
