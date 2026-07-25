// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_tool`.
const Set<String> _googleDialogflowCxToolSensitive = <String>{
  'open_api_spec.authentication.api_key_config.api_key',
  'open_api_spec.authentication.bearer_token_config.token',
  'open_api_spec.authentication.oauth_config.client_secret',
};

/// Typed helper for the `data_store_spec` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolDataStoreSpec {
  const DialogflowCxToolDataStoreSpec({
    required this.dataStoreConnections,
    required this.fallbackPrompt,
  });

  final List<DialogflowCxToolDataStoreSpecDataStoreConnections>
  dataStoreConnections;

  final DialogflowCxToolDataStoreSpecFallbackPrompt fallbackPrompt;

  Map<String, Object?> encode() => {
    'data_store_connections': [
      for (final e in dataStoreConnections) e.encode(),
    ],
    'fallback_prompt': fallbackPrompt.encode(),
  };
}

/// Typed helper for the `data_store_spec.data_store_connections` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolDataStoreSpecDataStoreConnections {
  const DialogflowCxToolDataStoreSpecDataStoreConnections({
    this.dataStore,
    this.dataStoreType,
    this.documentProcessingMode,
  });

  final TfArg<String>? dataStore;

  final TfArg<String>? dataStoreType;

  final TfArg<String>? documentProcessingMode;

  Map<String, Object?> encode() => {
    if (dataStore != null) 'data_store': dataStore!.toTfJson(),
    if (dataStoreType != null) 'data_store_type': dataStoreType!.toTfJson(),
    if (documentProcessingMode != null)
      'document_processing_mode': documentProcessingMode!.toTfJson(),
  };
}

/// Typed helper for the `data_store_spec.fallback_prompt` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolDataStoreSpecFallbackPrompt {
  const DialogflowCxToolDataStoreSpecFallbackPrompt();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `function_spec` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolFunctionSpec {
  const DialogflowCxToolFunctionSpec({this.inputSchema, this.outputSchema});

  final TfArg<String>? inputSchema;

  final TfArg<String>? outputSchema;

  Map<String, Object?> encode() => {
    if (inputSchema != null) 'input_schema': inputSchema!.toTfJson(),
    if (outputSchema != null) 'output_schema': outputSchema!.toTfJson(),
  };
}

/// Typed helper for the `open_api_spec` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOpenApiSpec {
  const DialogflowCxToolOpenApiSpec({
    required this.textSchema,
    this.authentication,
    this.serviceDirectoryConfig,
    this.tlsConfig,
  });

  final TfArg<String> textSchema;

  final DialogflowCxToolOpenApiSpecAuthentication? authentication;

  final DialogflowCxToolOpenApiSpecServiceDirectoryConfig?
  serviceDirectoryConfig;

  final DialogflowCxToolOpenApiSpecTlsConfig? tlsConfig;

  Map<String, Object?> encode() => {
    'text_schema': textSchema.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
    if (serviceDirectoryConfig != null)
      'service_directory_config': serviceDirectoryConfig!.encode(),
    if (tlsConfig != null) 'tls_config': tlsConfig!.encode(),
  };
}

/// Typed helper for the `open_api_spec.authentication` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOpenApiSpecAuthentication {
  const DialogflowCxToolOpenApiSpecAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
  });

  final DialogflowCxToolOpenApiSpecAuthenticationApiKeyConfig? apiKeyConfig;

  final DialogflowCxToolOpenApiSpecAuthenticationBearerTokenConfig?
  bearerTokenConfig;

  final DialogflowCxToolOpenApiSpecAuthenticationOauthConfig? oauthConfig;

  final DialogflowCxToolOpenApiSpecAuthenticationServiceAgentAuthConfig?
  serviceAgentAuthConfig;

  Map<String, Object?> encode() => {
    if (apiKeyConfig != null) 'api_key_config': apiKeyConfig!.encode(),
    if (bearerTokenConfig != null)
      'bearer_token_config': bearerTokenConfig!.encode(),
    if (oauthConfig != null) 'oauth_config': oauthConfig!.encode(),
    if (serviceAgentAuthConfig != null)
      'service_agent_auth_config': serviceAgentAuthConfig!.encode(),
  };
}

/// Typed helper for the `open_api_spec.authentication.api_key_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOpenApiSpecAuthenticationApiKeyConfig {
  const DialogflowCxToolOpenApiSpecAuthenticationApiKeyConfig({
    this.apiKey,
    required this.keyName,
    required this.requestLocation,
    this.secretVersionForApiKey,
  });

  final TfArg<String>? apiKey;

  final TfArg<String> keyName;

  final TfArg<String> requestLocation;

  final TfArg<String>? secretVersionForApiKey;

  Map<String, Object?> encode() => {
    if (apiKey != null) 'api_key': apiKey!.toTfJson(),
    'key_name': keyName.toTfJson(),
    'request_location': requestLocation.toTfJson(),
    if (secretVersionForApiKey != null)
      'secret_version_for_api_key': secretVersionForApiKey!.toTfJson(),
  };
}

/// Typed helper for the `open_api_spec.authentication.bearer_token_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOpenApiSpecAuthenticationBearerTokenConfig {
  const DialogflowCxToolOpenApiSpecAuthenticationBearerTokenConfig({
    this.secretVersionForToken,
    this.token,
  });

  final TfArg<String>? secretVersionForToken;

  final TfArg<String>? token;

  Map<String, Object?> encode() => {
    if (secretVersionForToken != null)
      'secret_version_for_token': secretVersionForToken!.toTfJson(),
    if (token != null) 'token': token!.toTfJson(),
  };
}

/// Typed helper for the `open_api_spec.authentication.oauth_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOpenApiSpecAuthenticationOauthConfig {
  const DialogflowCxToolOpenApiSpecAuthenticationOauthConfig({
    required this.clientId,
    this.clientSecret,
    required this.oauthGrantType,
    this.scopes,
    this.secretVersionForClientSecret,
    required this.tokenEndpoint,
  });

  final TfArg<String> clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String> oauthGrantType;

  final TfArg<List<Object?>>? scopes;

  final TfArg<String>? secretVersionForClientSecret;

  final TfArg<String> tokenEndpoint;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    'oauth_grant_type': oauthGrantType.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    if (secretVersionForClientSecret != null)
      'secret_version_for_client_secret': secretVersionForClientSecret!
          .toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
  };
}

/// Typed helper for the `open_api_spec.authentication.service_agent_auth_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOpenApiSpecAuthenticationServiceAgentAuthConfig {
  const DialogflowCxToolOpenApiSpecAuthenticationServiceAgentAuthConfig({
    this.serviceAgentAuth,
  });

  final TfArg<String>? serviceAgentAuth;

  Map<String, Object?> encode() => {
    if (serviceAgentAuth != null)
      'service_agent_auth': serviceAgentAuth!.toTfJson(),
  };
}

/// Typed helper for the `open_api_spec.service_directory_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOpenApiSpecServiceDirectoryConfig {
  const DialogflowCxToolOpenApiSpecServiceDirectoryConfig({
    required this.service,
  });

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `open_api_spec.tls_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOpenApiSpecTlsConfig {
  const DialogflowCxToolOpenApiSpecTlsConfig({required this.caCerts});

  final List<DialogflowCxToolOpenApiSpecTlsConfigCaCerts> caCerts;

  Map<String, Object?> encode() => {
    'ca_certs': [for (final e in caCerts) e.encode()],
  };
}

/// Typed helper for the `open_api_spec.tls_config.ca_certs` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOpenApiSpecTlsConfigCaCerts {
  const DialogflowCxToolOpenApiSpecTlsConfigCaCerts({
    required this.cert,
    required this.displayName,
  });

  final TfArg<String> cert;

  final TfArg<String> displayName;

  Map<String, Object?> encode() => {
    'cert': cert.toTfJson(),
    'display_name': displayName.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_tool`.
///
/// A tool provides a list of actions which are available to the Playbook to
/// attain its goal. A Tool consists of a description of the tool's usage and a
/// specification of the tool which contains the schema and authentication
/// information.
///
/// Dialogflow CX **tool** — OpenAPI / function / data-store tool bound to
/// a CX agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session. billing-behavior: tools
/// extend never_apply [GoogleDialogflowCxAgent] session paths; not
/// applyable without that agent on `terradart-validate`. **Never** wire
/// into apply-smoke.
final class GoogleDialogflowCxTool extends Resource {
  static const String tfType = 'google_dialogflow_cx_tool';

  GoogleDialogflowCxTool({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> description,
    TfArg<String>? parent,
    DialogflowCxToolOpenApiSpec? openApiSpec,
    DialogflowCxToolFunctionSpec? functionSpec,
    DialogflowCxToolDataStoreSpec? dataStoreSpec,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'description': description,
           if (parent != null) 'parent': parent,
           if (openApiSpec != null)
             'open_api_spec': TfArg.literal(openApiSpec.encode()),
           if (functionSpec != null)
             'function_spec': TfArg.literal(functionSpec.encode()),
           if (dataStoreSpec != null)
             'data_store_spec': TfArg.literal(dataStoreSpec.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxToolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tool_type` attribute.
  TfRef<String> get toolType => TfRef.attribute<String>(this, 'tool_type');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
