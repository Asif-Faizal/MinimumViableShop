import 'package:dio/dio.dart';
import 'tenant_config.dart';
import 'i_tenant_service.dart';

class TenantService implements ITenantService {
  final Dio _dio;
  TenantService(this._dio);

  @override
  Future<TenantConfig> fetchConfig(String clientId, String env) async {
    final res = await _dio.get('/config/mobile', queryParameters: {
      'clientId': clientId,
      'env': env,
    });
    return TenantConfig.fromJson(res.data as Map<String, dynamic>);
  }
}
