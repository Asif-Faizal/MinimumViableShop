import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvs_core/core.dart';
import '../../domain/i_auth_repository.dart';
import '../../domain/entities/user.dart';
// import 'package:mvs_core/storage/secure_storage_service.dart'; // This import is no longer needed if SecureStorageService is not used

enum AuthStatus { unknown, authenticated, unauthenticated, failure }

class AuthState extends Equatable {
  final AuthStatus status;
  final User? user;
  final Failure? failure;
  const AuthState({required this.status, this.user, this.failure});
  AuthState copyWith({AuthStatus? status, User? user, Failure? failure}) =>
      AuthState(
        status: status ?? this.status,
        user: user ?? this.user,
        failure: failure ?? this.failure,
      );
  @override
  List<Object?> get props => [status, user, failure];
}

abstract class AuthEvent {}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;
  LoginRequested(this.email, this.password);
}

class SignupRequested extends AuthEvent {
  final String email;
  final String password;
  final String name;
  SignupRequested(this.email, this.password, this.name);
}

class LogoutRequested extends AuthEvent {}

class CheckSession extends AuthEvent {}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _repo;
  // final SecureStorageService _storage; // Removed unused field
  AuthBloc(this._repo) // Removed _storage from constructor
    : super(const AuthState(status: AuthStatus.unknown)) {
    on<LoginRequested>(_onLogin);
    on<SignupRequested>(_onSignup);
    on<LogoutRequested>(_onLogout);
    on<CheckSession>(_onCheck);
  }

  Future<void> _onLogin(LoginRequested e, Emitter<AuthState> emit) async {
    final result = await _repo.login(email: e.email, password: e.password);
    await result.fold(
      (failure) async =>
          emit(state.copyWith(status: AuthStatus.failure, failure: failure)),
      (token) async {
        final userResult = await _repo.getCurrentUser();
        userResult.fold(
          (failure) => emit(
            state.copyWith(status: AuthStatus.failure, failure: failure),
          ),
          (user) =>
              emit(AuthState(status: AuthStatus.authenticated, user: user)),
        );
      },
    );
  }

  Future<void> _onSignup(SignupRequested e, Emitter<AuthState> emit) async {
    final result = await _repo.signup(
      email: e.email,
      password: e.password,
      name: e.name,
    );
    await result.fold(
      (failure) async =>
          emit(state.copyWith(status: AuthStatus.failure, failure: failure)),
      (token) async {
        final userResult = await _repo.getCurrentUser();
        userResult.fold(
          (failure) => emit(
            state.copyWith(status: AuthStatus.failure, failure: failure),
          ),
          (user) =>
              emit(AuthState(status: AuthStatus.authenticated, user: user)),
        );
      },
    );
  }

  Future<void> _onLogout(LogoutRequested e, Emitter<AuthState> emit) async {
    final result = await _repo.logout();
    result.fold(
      (failure) =>
          emit(state.copyWith(status: AuthStatus.failure, failure: failure)),
      (_) => emit(const AuthState(status: AuthStatus.unauthenticated)),
    );
  }

  Future<void> _onCheck(CheckSession e, Emitter<AuthState> emit) async {
    final result = await _repo.getCurrentUser();
    result.fold(
      (failure) {
        // If checking session fails, are we unauthenticated or is it an error?
        // Usually unauthenticated if it was just a check. But if it's a network error?
        // For simplicity, let's say unauthenticated if it fails (or we could expose failure).
        // If token is invalid (401), we get failure? Protocol currently catches all exceptions as failures.
        // Assuming unauthenticated for now to default to login screen.
        emit(const AuthState(status: AuthStatus.unauthenticated));
      },
      (user) {
        if (user != null) {
          emit(AuthState(status: AuthStatus.authenticated, user: user));
        } else {
          emit(const AuthState(status: AuthStatus.unauthenticated));
        }
      },
    );
  }
}
