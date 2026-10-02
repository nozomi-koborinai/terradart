/// Credential arguments a provider class leaves out on purpose.
///
/// A migrated configuration never copies these into Dart or into the
/// leftover sidecar. Apply reads them from the provider's environment
/// instead.
const droppedProviderArguments = <String, Set<String>>{
  'google': {'credentials', 'access_token'},
  'google-beta': {'credentials', 'access_token'},
  'aws': {'access_key', 'secret_key', 'token', 'assume_role_with_web_identity'},
  'cloudflare': {'api_token', 'api_key', 'api_user_service_key'},
  'appwrite': {'api_key', 'organization_api_key'},
};
