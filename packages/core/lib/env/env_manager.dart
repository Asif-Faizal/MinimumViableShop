class EnvManager {
  final String env;
  final String clientId;
  final String baseUrl;

  const EnvManager({
    required this.env,
    required this.clientId,
    required this.baseUrl,
  });

  static EnvManager fromEnvironment() {
    const env = String.fromEnvironment('ENV', defaultValue: 'dev');
    const clientId = String.fromEnvironment('CLIENT_ID', defaultValue: 'default');
    const baseUrl = String.fromEnvironment('BASE_URL', defaultValue: '');
    return const EnvManager(env: env, clientId: clientId, baseUrl: baseUrl);
  }
}
