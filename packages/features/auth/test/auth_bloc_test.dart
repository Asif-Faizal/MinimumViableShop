import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:features_auth/presentation/bloc/auth_bloc.dart';
import 'package:features_auth/domain/i_auth_repository.dart';
import 'package:features_auth/domain/entities/user.dart';
import 'package:mvs_core/storage/secure_storage_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FakeRepo implements IAuthRepository {
  @override
  Future<void> logout() async {}

  @override
  Future<User?> getCurrentUser() async => const User(id: 'u1', email: 'a@b.com', name: 'A');

  @override
  Future login({required String email, required String password}) async => Future.value();

  @override
  Future signup({required String email, required String password, required String name}) async => Future.value();
}

void main() {
  group('AuthBloc', () {
    blocTest<AuthBloc, AuthState>(
      'CheckSession authenticates when user exists',
      build: () => AuthBloc(FakeRepo(), SecureStorageService(const FlutterSecureStorage())),
      act: (bloc) => bloc.add(CheckSession()),
      expect: () => [isA<AuthState>().having((s) => s.status, 'status', AuthStatus.authenticated)],
    );
  });
}
