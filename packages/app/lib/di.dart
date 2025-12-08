import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mvs_core/env/env_manager.dart';
import 'package:mvs_core/storage/secure_storage_service.dart';
import 'package:mvs_core/tenant/tenant_service.dart';
import 'package:mvs_core/tenant/mock_tenant_service.dart';
import 'package:mvs_core/tenant/i_tenant_service.dart';
import 'package:mvs_core/tenant/tenant_config_cubit.dart';
import 'package:features_auth/presentation/bloc/auth_bloc.dart';
import 'package:features_auth/data/repositories/auth_repository_impl.dart';
import 'package:features_auth/data/datasources/auth_remote_data_source.dart';
import 'package:features_auth/domain/i_auth_repository.dart';
import 'package:features_cart/data/datasources/cart_remote_data_source.dart';
import 'package:features_cart/data/repositories/cart_repository_impl.dart';
import 'package:features_cart/domain/i_cart_repository.dart';
import 'package:features_cart/presentation/bloc/cart_bloc.dart';
import 'router.dart';

Future<void> configureDependencies(EnvManager env) async {
  final sl = GetIt.I;
  sl.registerSingleton<EnvManager>(env);

  final dio = Dio(
    BaseOptions(
      baseUrl: env.baseUrl.isNotEmpty ? env.baseUrl : 'https://api.example.com',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 20),
    ),
  );
  sl.registerSingleton<Dio>(dio);

  final storage = const FlutterSecureStorage();
  sl.registerSingleton<SecureStorageService>(SecureStorageService(storage));

  final ITenantService tenantService =
      env.baseUrl.isEmpty ? MockTenantService() : TenantService(dio);
  sl.registerSingleton<ITenantService>(tenantService);

  final tenantCubit = TenantConfigCubit(tenantService);
  sl.registerSingleton<TenantConfigCubit>(tenantCubit);
  await tenantCubit.load(env.clientId, env.env);

  sl.registerSingleton<AuthRemoteDataSource>(AuthRemoteDataSourceImpl(dio));
  sl.registerSingleton<IAuthRepository>(AuthRepositoryImpl(
      sl<AuthRemoteDataSource>(), sl<SecureStorageService>()));
  final authBloc = AuthBloc(sl<IAuthRepository>())
    ..add(CheckSession()); // Fixed constructor
  sl.registerSingleton<AuthBloc>(authBloc);

  // Cart
  sl.registerSingleton<CartRemoteDataSource>(CartRemoteDataSourceImpl());
  sl.registerSingleton<ICartRepository>(
      CartRepositoryImpl(sl<CartRemoteDataSource>()));
  sl.registerFactory<CartBloc>(() => CartBloc(sl<ICartRepository>()));

  final router = createRouter();
  sl.registerSingleton<GoRouter>(router);
}
