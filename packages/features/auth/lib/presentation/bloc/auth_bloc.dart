import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/i_auth_repository.dart';
import '../../domain/entities/user.dart';
import 'package:mvs_core/storage/secure_storage_service.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthState extends Equatable {
  final AuthStatus status;
  final User? user;
  const AuthState({required this.status, this.user});
  AuthState copyWith({AuthStatus? status, User? user}) => AuthState(status: status ?? this.status, user: user ?? this.user);
  @override
  List<Object?> get props => [status, user];
}

abstract class AuthEvent {}
class LoginRequested extends AuthEvent { final String email; final String password; LoginRequested(this.email, this.password);} 
class SignupRequested extends AuthEvent { final String email; final String password; final String name; SignupRequested(this.email, this.password, this.name);} 
class LogoutRequested extends AuthEvent {}
class CheckSession extends AuthEvent {}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _repo;
  final SecureStorageService _storage;
  AuthBloc(this._repo, this._storage) : super(const AuthState(status: AuthStatus.unknown)) {
    on<LoginRequested>(_onLogin);
    on<SignupRequested>(_onSignup);
    on<LogoutRequested>(_onLogout);
    on<CheckSession>(_onCheck);
  }

  Future<void> _onLogin(LoginRequested e, Emitter<AuthState> emit) async {
    await _repo.login(email: e.email, password: e.password);
    final user = await _repo.getCurrentUser();
    emit(AuthState(status: AuthStatus.authenticated, user: user));
  }

  Future<void> _onSignup(SignupRequested e, Emitter<AuthState> emit) async {
    await _repo.signup(email: e.email, password: e.password, name: e.name);
    final user = await _repo.getCurrentUser();
    emit(AuthState(status: AuthStatus.authenticated, user: user));
  }

  Future<void> _onLogout(LogoutRequested e, Emitter<AuthState> emit) async {
    await _repo.logout();
    emit(const AuthState(status: AuthStatus.unauthenticated));
  }

  Future<void> _onCheck(CheckSession e, Emitter<AuthState> emit) async {
    final user = await _repo.getCurrentUser();
    if (user != null) {
      emit(AuthState(status: AuthStatus.authenticated, user: user));
    } else {
      emit(const AuthState(status: AuthStatus.unauthenticated));
    }
  }
}
