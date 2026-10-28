const _armClientCredentials = <String>{
  'client_id',
  'client_id_file_path',
  'client_certificate',
  'client_certificate_path',
  'client_certificate_password',
  'client_secret',
  'client_secret_file_path',
  'oidc_request_token',
  'oidc_request_url',
  'oidc_token',
  'oidc_token_file_path',
  'ado_pipeline_service_connection_id',
};

const droppedProviderArguments = <String, Set<String>>{
  'google': {'credentials', 'access_token', 'external_credentials'},
  'google-beta': {'credentials', 'access_token', 'external_credentials'},
  'aws': {'access_key', 'secret_key', 'token', 'assume_role_with_web_identity'},
  'azurerm': {..._armClientCredentials, 'access_key', 'sas_token'},
  'azuread': _armClientCredentials,
  'cloudflare': {'api_token', 'api_key', 'api_user_service_key'},
  'appwrite': {'api_key', 'organization_api_key'},
};
