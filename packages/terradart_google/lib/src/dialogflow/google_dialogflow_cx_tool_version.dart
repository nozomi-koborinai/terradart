// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_tool_version`.
const Set<String> _googleDialogflowCxToolVersionSensitive = <String>{
  'tool.open_api_spec.authentication.api_key_config.api_key',
  'tool.open_api_spec.authentication.bearer_token_config.token',
  'tool.open_api_spec.authentication.oauth_config.client_secret',
};

/// Typed helper for the `tool` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionTool {
  const DialogflowCxToolVersionTool({
    required this.description,
    required this.displayName,
    this.dataStoreSpec,
    this.functionSpec,
    this.openApiSpec,
  });

  final TfArg<String> description;

  final TfArg<String> displayName;

  final DialogflowCxToolVersionToolDataStoreSpec? dataStoreSpec;

  final DialogflowCxToolVersionToolFunctionSpec? functionSpec;

  final DialogflowCxToolVersionToolOpenApiSpec? openApiSpec;

  Map<String, Object?> encode() => {
    'description': description.toTfJson(),
    'display_name': displayName.toTfJson(),
    'data_store_spec': ?dataStoreSpec?.encode(),
    'function_spec': ?functionSpec?.encode(),
    'open_api_spec': ?openApiSpec?.encode(),
  };
}

/// Typed helper for the `tool.data_store_spec` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolDataStoreSpec {
  const DialogflowCxToolVersionToolDataStoreSpec({
    required this.dataStoreConnections,
    required this.fallbackPrompt,
  });

  final List<DialogflowCxToolVersionToolDataStoreSpecDataStoreConnections>
  dataStoreConnections;

  final DialogflowCxToolVersionToolDataStoreSpecFallbackPrompt fallbackPrompt;

  Map<String, Object?> encode() => {
    'data_store_connections': [
      for (final e in dataStoreConnections) e.encode(),
    ],
    'fallback_prompt': fallbackPrompt.encode(),
  };
}

/// Typed helper for the `tool.data_store_spec.data_store_connections` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolDataStoreSpecDataStoreConnections {
  const DialogflowCxToolVersionToolDataStoreSpecDataStoreConnections({
    this.dataStore,
    this.dataStoreType,
    this.documentProcessingMode,
  });

  final TfArg<String>? dataStore;

  final TfArg<String>? dataStoreType;

  final TfArg<String>? documentProcessingMode;

  Map<String, Object?> encode() => {
    'data_store': ?dataStore?.toTfJson(),
    'data_store_type': ?dataStoreType?.toTfJson(),
    'document_processing_mode': ?documentProcessingMode?.toTfJson(),
  };
}

/// Typed helper for the `tool.data_store_spec.fallback_prompt` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolDataStoreSpecFallbackPrompt {
  const DialogflowCxToolVersionToolDataStoreSpecFallbackPrompt();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `tool.function_spec` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolFunctionSpec {
  const DialogflowCxToolVersionToolFunctionSpec({
    this.inputSchema,
    this.outputSchema,
  });

  final TfArg<String>? inputSchema;

  final TfArg<String>? outputSchema;

  Map<String, Object?> encode() => {
    'input_schema': ?inputSchema?.toTfJson(),
    'output_schema': ?outputSchema?.toTfJson(),
  };
}

/// Typed helper for the `tool.open_api_spec` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolOpenApiSpec {
  const DialogflowCxToolVersionToolOpenApiSpec({
    required this.textSchema,
    this.authentication,
    this.serviceDirectoryConfig,
    this.tlsConfig,
  });

  final TfArg<String> textSchema;

  final DialogflowCxToolVersionToolOpenApiSpecAuthentication? authentication;

  final DialogflowCxToolVersionToolOpenApiSpecServiceDirectoryConfig?
  serviceDirectoryConfig;

  final DialogflowCxToolVersionToolOpenApiSpecTlsConfig? tlsConfig;

  Map<String, Object?> encode() => {
    'text_schema': textSchema.toTfJson(),
    'authentication': ?authentication?.encode(),
    'service_directory_config': ?serviceDirectoryConfig?.encode(),
    'tls_config': ?tlsConfig?.encode(),
  };
}

/// Typed helper for the `tool.open_api_spec.authentication` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolOpenApiSpecAuthentication {
  const DialogflowCxToolVersionToolOpenApiSpecAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
  });

  final DialogflowCxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig?
  apiKeyConfig;

  final DialogflowCxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig?
  bearerTokenConfig;

  final DialogflowCxToolVersionToolOpenApiSpecAuthenticationOauthConfig?
  oauthConfig;

  final DialogflowCxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig?
  serviceAgentAuthConfig;

  Map<String, Object?> encode() => {
    'api_key_config': ?apiKeyConfig?.encode(),
    'bearer_token_config': ?bearerTokenConfig?.encode(),
    'oauth_config': ?oauthConfig?.encode(),
    'service_agent_auth_config': ?serviceAgentAuthConfig?.encode(),
  };
}

/// Typed helper for the `tool.open_api_spec.authentication.api_key_config` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig {
  const DialogflowCxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig({
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
    'api_key': ?apiKey?.toTfJson(),
    'key_name': keyName.toTfJson(),
    'request_location': requestLocation.toTfJson(),
    'secret_version_for_api_key': ?secretVersionForApiKey?.toTfJson(),
  };
}

/// Typed helper for the `tool.open_api_spec.authentication.bearer_token_config` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig {
  const DialogflowCxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig({
    this.secretVersionForToken,
    this.token,
  });

  final TfArg<String>? secretVersionForToken;

  final TfArg<String>? token;

  Map<String, Object?> encode() => {
    'secret_version_for_token': ?secretVersionForToken?.toTfJson(),
    'token': ?token?.toTfJson(),
  };
}

/// Typed helper for the `tool.open_api_spec.authentication.oauth_config` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolOpenApiSpecAuthenticationOauthConfig {
  const DialogflowCxToolVersionToolOpenApiSpecAuthenticationOauthConfig({
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

  final TfArg<List<String>>? scopes;

  final TfArg<String>? secretVersionForClientSecret;

  final TfArg<String> tokenEndpoint;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'oauth_grant_type': oauthGrantType.toTfJson(),
    'scopes': ?scopes?.toTfJson(),
    'secret_version_for_client_secret': ?secretVersionForClientSecret
        ?.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
  };
}

/// Typed helper for the `tool.open_api_spec.authentication.service_agent_auth_config` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig {
  const DialogflowCxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig({
    this.serviceAgentAuth,
  });

  final TfArg<String>? serviceAgentAuth;

  Map<String, Object?> encode() => {
    'service_agent_auth': ?serviceAgentAuth?.toTfJson(),
  };
}

/// Typed helper for the `tool.open_api_spec.service_directory_config` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolOpenApiSpecServiceDirectoryConfig {
  const DialogflowCxToolVersionToolOpenApiSpecServiceDirectoryConfig({
    required this.service,
  });

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `tool.open_api_spec.tls_config` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolOpenApiSpecTlsConfig {
  const DialogflowCxToolVersionToolOpenApiSpecTlsConfig({
    required this.caCerts,
  });

  final List<DialogflowCxToolVersionToolOpenApiSpecTlsConfigCaCerts> caCerts;

  Map<String, Object?> encode() => {
    'ca_certs': [for (final e in caCerts) e.encode()],
  };
}

/// Typed helper for the `tool.open_api_spec.tls_config.ca_certs` block of
/// `google_dialogflow_cx_tool_version` (derived from provider schema).
@immutable
final class DialogflowCxToolVersionToolOpenApiSpecTlsConfigCaCerts {
  const DialogflowCxToolVersionToolOpenApiSpecTlsConfigCaCerts({
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

/// Factory wrapper for `google_dialogflow_cx_tool_version`.
///
/// Tool version is a snapshot of the tool at certain timestamp.
///
/// Dialogflow CX **tool version** — versioned snapshot of a CX tool.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: tool versions sit on the
/// never_apply [GoogleDialogflowCxAgent] / tool path. **Never** wire
/// into apply-smoke.
final class GoogleDialogflowCxToolVersion extends Resource {
  static const String tfType = 'google_dialogflow_cx_tool_version';

  GoogleDialogflowCxToolVersion({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> parent,
    required DialogflowCxToolVersionTool tool,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'parent': parent,
           'tool': TfArg.literal(tool.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxToolVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxToolVersion>`.
  RefTo<GoogleDialogflowCxToolVersion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
