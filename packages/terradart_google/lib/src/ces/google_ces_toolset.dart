// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_toolset`.
const Set<String> _googleCesToolsetSensitive = <String>{};

/// Typed helper for the `connector_toolset` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetConnectorToolset {
  const CesToolsetConnectorToolset({
    required this.connection,
    this.authConfig,
    required this.connectorActions,
  });

  final TfArg<String> connection;

  final CesToolsetConnectorToolsetAuthConfig? authConfig;

  final List<CesToolsetConnectorToolsetConnectorActions> connectorActions;

  Map<String, Object?> encode() => {
    'connection': connection.toTfJson(),
    if (authConfig != null) 'auth_config': authConfig!.encode(),
    'connector_actions': [for (final e in connectorActions) e.encode()],
  };
}

/// Typed helper for the `connector_toolset.auth_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetConnectorToolsetAuthConfig {
  const CesToolsetConnectorToolsetAuthConfig({
    this.oauth2AuthCodeConfig,
    this.oauth2JwtBearerConfig,
  });

  final CesToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig?
  oauth2AuthCodeConfig;

  final CesToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig?
  oauth2JwtBearerConfig;

  Map<String, Object?> encode() => {
    if (oauth2AuthCodeConfig != null)
      'oauth2_auth_code_config': oauth2AuthCodeConfig!.encode(),
    if (oauth2JwtBearerConfig != null)
      'oauth2_jwt_bearer_config': oauth2JwtBearerConfig!.encode(),
  };
}

/// Typed helper for the `connector_toolset.auth_config.oauth2_auth_code_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig {
  const CesToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig({
    required this.oauthToken,
  });

  final TfArg<String> oauthToken;

  Map<String, Object?> encode() => {'oauth_token': oauthToken.toTfJson()};
}

/// Typed helper for the `connector_toolset.auth_config.oauth2_jwt_bearer_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig {
  const CesToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig({
    required this.clientKey,
    required this.issuer,
    required this.subject,
  });

  final TfArg<String> clientKey;

  final TfArg<String> issuer;

  final TfArg<String> subject;

  Map<String, Object?> encode() => {
    'client_key': clientKey.toTfJson(),
    'issuer': issuer.toTfJson(),
    'subject': subject.toTfJson(),
  };
}

/// Typed helper for the `connector_toolset.connector_actions` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetConnectorToolsetConnectorActions {
  const CesToolsetConnectorToolsetConnectorActions({
    this.connectionActionId,
    this.inputFields,
    this.outputFields,
    this.entityOperation,
  });

  final TfArg<String>? connectionActionId;

  final TfArg<List<Object?>>? inputFields;

  final TfArg<List<Object?>>? outputFields;

  final CesToolsetConnectorToolsetConnectorActionsEntityOperation?
  entityOperation;

  Map<String, Object?> encode() => {
    if (connectionActionId != null)
      'connection_action_id': connectionActionId!.toTfJson(),
    if (inputFields != null) 'input_fields': inputFields!.toTfJson(),
    if (outputFields != null) 'output_fields': outputFields!.toTfJson(),
    if (entityOperation != null) 'entity_operation': entityOperation!.encode(),
  };
}

/// Typed helper for the `connector_toolset.connector_actions.entity_operation` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetConnectorToolsetConnectorActionsEntityOperation {
  const CesToolsetConnectorToolsetConnectorActionsEntityOperation({
    required this.entityId,
    required this.operation,
  });

  final TfArg<String> entityId;

  final TfArg<String> operation;

  Map<String, Object?> encode() => {
    'entity_id': entityId.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// Typed helper for the `mcp_toolset` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolset {
  const CesToolsetMcpToolset({
    this.customHeaders,
    required this.serverAddress,
    this.apiAuthentication,
    this.serviceDirectoryConfig,
    this.tlsConfig,
  });

  final TfArg<Map<String, String>>? customHeaders;

  final TfArg<String> serverAddress;

  final CesToolsetMcpToolsetApiAuthentication? apiAuthentication;

  final CesToolsetMcpToolsetServiceDirectoryConfig? serviceDirectoryConfig;

  final CesToolsetMcpToolsetTlsConfig? tlsConfig;

  Map<String, Object?> encode() => {
    if (customHeaders != null) 'custom_headers': customHeaders!.toTfJson(),
    'server_address': serverAddress.toTfJson(),
    if (apiAuthentication != null)
      'api_authentication': apiAuthentication!.encode(),
    if (serviceDirectoryConfig != null)
      'service_directory_config': serviceDirectoryConfig!.encode(),
    if (tlsConfig != null) 'tls_config': tlsConfig!.encode(),
  };
}

/// Typed helper for the `mcp_toolset.api_authentication` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolsetApiAuthentication {
  const CesToolsetMcpToolsetApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
    this.serviceAgentIdTokenAuthConfig,
  });

  final CesToolsetMcpToolsetApiAuthenticationApiKeyConfig? apiKeyConfig;

  final CesToolsetMcpToolsetApiAuthenticationBearerTokenConfig?
  bearerTokenConfig;

  final CesToolsetMcpToolsetApiAuthenticationOauthConfig? oauthConfig;

  final CesToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfig?
  serviceAccountAuthConfig;

  final CesToolsetMcpToolsetApiAuthenticationServiceAgentIdTokenAuthConfig?
  serviceAgentIdTokenAuthConfig;

  Map<String, Object?> encode() => {
    if (apiKeyConfig != null) 'api_key_config': apiKeyConfig!.encode(),
    if (bearerTokenConfig != null)
      'bearer_token_config': bearerTokenConfig!.encode(),
    if (oauthConfig != null) 'oauth_config': oauthConfig!.encode(),
    if (serviceAccountAuthConfig != null)
      'service_account_auth_config': serviceAccountAuthConfig!.encode(),
    if (serviceAgentIdTokenAuthConfig != null)
      'service_agent_id_token_auth_config': serviceAgentIdTokenAuthConfig!
          .encode(),
  };
}

/// Typed helper for the `mcp_toolset.api_authentication.api_key_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolsetApiAuthenticationApiKeyConfig {
  const CesToolsetMcpToolsetApiAuthenticationApiKeyConfig({
    required this.apiKeySecretVersion,
    required this.keyName,
    required this.requestLocation,
  });

  final TfArg<String> apiKeySecretVersion;

  final TfArg<String> keyName;

  final TfArg<String> requestLocation;

  Map<String, Object?> encode() => {
    'api_key_secret_version': apiKeySecretVersion.toTfJson(),
    'key_name': keyName.toTfJson(),
    'request_location': requestLocation.toTfJson(),
  };
}

/// Typed helper for the `mcp_toolset.api_authentication.bearer_token_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolsetApiAuthenticationBearerTokenConfig {
  const CesToolsetMcpToolsetApiAuthenticationBearerTokenConfig({this.token});

  final TfArg<String>? token;

  Map<String, Object?> encode() => {
    if (token != null) 'token': token!.toTfJson(),
  };
}

/// Typed helper for the `mcp_toolset.api_authentication.oauth_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolsetApiAuthenticationOauthConfig {
  const CesToolsetMcpToolsetApiAuthenticationOauthConfig({
    required this.clientId,
    required this.clientSecretVersion,
    required this.oauthGrantType,
    this.scopes,
    required this.tokenEndpoint,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecretVersion;

  final TfArg<String> oauthGrantType;

  final TfArg<List<Object?>>? scopes;

  final TfArg<String> tokenEndpoint;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret_version': clientSecretVersion.toTfJson(),
    'oauth_grant_type': oauthGrantType.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
  };
}

/// Typed helper for the `mcp_toolset.api_authentication.service_account_auth_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfig {
  const CesToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfig({
    this.scopes,
    required this.serviceAccount,
  });

  final TfArg<List<Object?>>? scopes;

  final TfArg<String> serviceAccount;

  Map<String, Object?> encode() => {
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    'service_account': serviceAccount.toTfJson(),
  };
}

/// Typed helper for the `mcp_toolset.api_authentication.service_agent_id_token_auth_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolsetApiAuthenticationServiceAgentIdTokenAuthConfig {
  const CesToolsetMcpToolsetApiAuthenticationServiceAgentIdTokenAuthConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `mcp_toolset.service_directory_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolsetServiceDirectoryConfig {
  const CesToolsetMcpToolsetServiceDirectoryConfig({required this.service});

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `mcp_toolset.tls_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolsetTlsConfig {
  const CesToolsetMcpToolsetTlsConfig({required this.caCerts});

  final List<CesToolsetMcpToolsetTlsConfigCaCerts> caCerts;

  Map<String, Object?> encode() => {
    'ca_certs': [for (final e in caCerts) e.encode()],
  };
}

/// Typed helper for the `mcp_toolset.tls_config.ca_certs` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetMcpToolsetTlsConfigCaCerts {
  const CesToolsetMcpToolsetTlsConfigCaCerts({
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

/// Typed helper for the `open_api_toolset` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolset {
  const CesToolsetOpenApiToolset({
    this.ignoreUnknownFields,
    required this.openApiSchema,
    this.apiAuthentication,
    this.serviceDirectoryConfig,
    this.tlsConfig,
  });

  final TfArg<bool>? ignoreUnknownFields;

  final TfArg<String> openApiSchema;

  final CesToolsetOpenApiToolsetApiAuthentication? apiAuthentication;

  final CesToolsetOpenApiToolsetServiceDirectoryConfig? serviceDirectoryConfig;

  final CesToolsetOpenApiToolsetTlsConfig? tlsConfig;

  Map<String, Object?> encode() => {
    if (ignoreUnknownFields != null)
      'ignore_unknown_fields': ignoreUnknownFields!.toTfJson(),
    'open_api_schema': openApiSchema.toTfJson(),
    if (apiAuthentication != null)
      'api_authentication': apiAuthentication!.encode(),
    if (serviceDirectoryConfig != null)
      'service_directory_config': serviceDirectoryConfig!.encode(),
    if (tlsConfig != null) 'tls_config': tlsConfig!.encode(),
  };
}

/// Typed helper for the `open_api_toolset.api_authentication` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolsetApiAuthentication {
  const CesToolsetOpenApiToolsetApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
    this.serviceAgentIdTokenAuthConfig,
  });

  final CesToolsetOpenApiToolsetApiAuthenticationApiKeyConfig? apiKeyConfig;

  final CesToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig?
  bearerTokenConfig;

  final CesToolsetOpenApiToolsetApiAuthenticationOauthConfig? oauthConfig;

  final CesToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig?
  serviceAccountAuthConfig;

  final CesToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfig?
  serviceAgentIdTokenAuthConfig;

  Map<String, Object?> encode() => {
    if (apiKeyConfig != null) 'api_key_config': apiKeyConfig!.encode(),
    if (bearerTokenConfig != null)
      'bearer_token_config': bearerTokenConfig!.encode(),
    if (oauthConfig != null) 'oauth_config': oauthConfig!.encode(),
    if (serviceAccountAuthConfig != null)
      'service_account_auth_config': serviceAccountAuthConfig!.encode(),
    if (serviceAgentIdTokenAuthConfig != null)
      'service_agent_id_token_auth_config': serviceAgentIdTokenAuthConfig!
          .encode(),
  };
}

/// Typed helper for the `open_api_toolset.api_authentication.api_key_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolsetApiAuthenticationApiKeyConfig {
  const CesToolsetOpenApiToolsetApiAuthenticationApiKeyConfig({
    required this.apiKeySecretVersion,
    required this.keyName,
    required this.requestLocation,
  });

  final TfArg<String> apiKeySecretVersion;

  final TfArg<String> keyName;

  final TfArg<String> requestLocation;

  Map<String, Object?> encode() => {
    'api_key_secret_version': apiKeySecretVersion.toTfJson(),
    'key_name': keyName.toTfJson(),
    'request_location': requestLocation.toTfJson(),
  };
}

/// Typed helper for the `open_api_toolset.api_authentication.bearer_token_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig {
  const CesToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig({
    this.token,
  });

  final TfArg<String>? token;

  Map<String, Object?> encode() => {
    if (token != null) 'token': token!.toTfJson(),
  };
}

/// Typed helper for the `open_api_toolset.api_authentication.oauth_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolsetApiAuthenticationOauthConfig {
  const CesToolsetOpenApiToolsetApiAuthenticationOauthConfig({
    required this.clientId,
    required this.clientSecretVersion,
    required this.oauthGrantType,
    this.scopes,
    required this.tokenEndpoint,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecretVersion;

  final TfArg<String> oauthGrantType;

  final TfArg<List<Object?>>? scopes;

  final TfArg<String> tokenEndpoint;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret_version': clientSecretVersion.toTfJson(),
    'oauth_grant_type': oauthGrantType.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
  };
}

/// Typed helper for the `open_api_toolset.api_authentication.service_account_auth_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig {
  const CesToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig({
    this.scopes,
    required this.serviceAccount,
  });

  final TfArg<List<Object?>>? scopes;

  final TfArg<String> serviceAccount;

  Map<String, Object?> encode() => {
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    'service_account': serviceAccount.toTfJson(),
  };
}

/// Typed helper for the `open_api_toolset.api_authentication.service_agent_id_token_auth_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfig {
  const CesToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `open_api_toolset.service_directory_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolsetServiceDirectoryConfig {
  const CesToolsetOpenApiToolsetServiceDirectoryConfig({required this.service});

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `open_api_toolset.tls_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolsetTlsConfig {
  const CesToolsetOpenApiToolsetTlsConfig({required this.caCerts});

  final List<CesToolsetOpenApiToolsetTlsConfigCaCerts> caCerts;

  Map<String, Object?> encode() => {
    'ca_certs': [for (final e in caCerts) e.encode()],
  };
}

/// Typed helper for the `open_api_toolset.tls_config.ca_certs` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOpenApiToolsetTlsConfigCaCerts {
  const CesToolsetOpenApiToolsetTlsConfigCaCerts({
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

/// Typed helper for the `tool_fake_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetToolFakeConfig {
  const CesToolsetToolFakeConfig({this.enableFakeMode, this.codeBlock});

  final TfArg<bool>? enableFakeMode;

  final CesToolsetToolFakeConfigCodeBlock? codeBlock;

  Map<String, Object?> encode() => {
    if (enableFakeMode != null) 'enable_fake_mode': enableFakeMode!.toTfJson(),
    if (codeBlock != null) 'code_block': codeBlock!.encode(),
  };
}

/// Typed helper for the `tool_fake_config.code_block` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetToolFakeConfigCodeBlock {
  const CesToolsetToolFakeConfigCodeBlock({required this.pythonCode});

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {'python_code': pythonCode.toTfJson()};
}

/// Factory wrapper for `google_ces_toolset`.
///
/// Description
///
/// Customer Engagement Suite **toolset** — OpenAPI or MCP tools bound
/// to a [GoogleCesApp]. Pass the parent app's `app_id` as [app]. Pick
/// one of [openApiToolset] or [mcpToolset] (no MM `exactly_one_of`;
/// the API rejects both).
///
/// **Cost:** gcp-cost: Customer Engagement Suite `383B-7930-9BC4` Chat
/// sessions for CX Agent Studio `40A1-7B02-5EF6` **$0.50/count** (Voice
/// sessions `AC3D-5A20-CF66` **$0.50/count**; Voice overages
/// `9B47-D9B2-C9CB` **$0.0025/s**). billing-behavior: a toolset is
/// design-time config — session SKUs fire only on CX Agent Studio
/// chat/voice sessions. Enable `ces.googleapis.com` via [Apis.enable]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleCesToolset(
///   localName: 'openapi',
///   location: TfArg.ref(app.locationRef),
///   app: TfArg.ref(app.appIdRef),
///   toolsetId: TfArg.literal('terradart-ces-toolset'),
///   displayName: TfArg.literal('terradart-ces-toolset'),
///   openApiToolset: CesToolsetOpenApiToolset(
///     openApiSchema: TfArg.literal(
///       'openapi: 3.0.0\ninfo:\n  title: smoke\n  version: 1.0.0\npaths: {}\n',
///     ),
///   ),
/// );
/// ```
final class GoogleCesToolset extends Resource {
  static const String tfType = 'google_ces_toolset';

  GoogleCesToolset({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> app,
    required TfArg<String> toolsetId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? executionType,
    CesToolsetOpenApiToolset? openApiToolset,
    CesToolsetMcpToolset? mcpToolset,
    CesToolsetToolFakeConfig? toolFakeConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'toolset_id': toolsetId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (executionType != null) 'execution_type': executionType,
           if (openApiToolset != null)
             'open_api_toolset': TfArg.literal(openApiToolset.encode()),
           if (mcpToolset != null)
             'mcp_toolset': TfArg.literal(mcpToolset.encode()),
           if (toolFakeConfig != null)
             'tool_fake_config': TfArg.literal(toolFakeConfig.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesToolsetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `toolset_id` (set this on create so agents can bind it).
  TfRef<String> get toolsetIdRef => TfRef.attribute<String>(this, 'toolset_id');
}
