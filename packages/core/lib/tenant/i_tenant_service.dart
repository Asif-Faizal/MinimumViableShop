import 'tenant_config.dart';

abstract class ITenantService {
  Future<TenantConfig> fetchConfig(String clientId, String env);
}
