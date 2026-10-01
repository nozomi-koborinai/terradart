// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

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

  final CesToolsetAuthConfig? authConfig;

  final List<CesToolsetConnectorActions> connectorActions;

  Map<String, Object?> encode() => {
    'connection': connection.toTfJson(),
    'auth_config': ?authConfig?.encode(),
    'connector_actions': [for (final e in connectorActions) e.encode()],
  };
}

/// Typed helper for the `connector_toolset.auth_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetAuthConfig {
  const CesToolsetAuthConfig({
    this.oauth2AuthCodeConfig,
    this.oauth2JwtBearerConfig,
  });

  final CesToolsetOauth2AuthCodeConfig? oauth2AuthCodeConfig;

  final CesToolsetOauth2JwtBearerConfig? oauth2JwtBearerConfig;

  Map<String, Object?> encode() => {
    'oauth2_auth_code_config': ?oauth2AuthCodeConfig?.encode(),
    'oauth2_jwt_bearer_config': ?oauth2JwtBearerConfig?.encode(),
  };
}

/// Typed helper for the `connector_toolset.auth_config.oauth2_auth_code_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOauth2AuthCodeConfig {
  const CesToolsetOauth2AuthCodeConfig({required this.oauthToken});

  final TfArg<String> oauthToken;

  Map<String, Object?> encode() => {'oauth_token': oauthToken.toTfJson()};
}

/// Typed helper for the `connector_toolset.auth_config.oauth2_jwt_bearer_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetOauth2JwtBearerConfig {
  const CesToolsetOauth2JwtBearerConfig({
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
final class CesToolsetConnectorActions {
  const CesToolsetConnectorActions({
    this.connectionActionId,
    this.inputFields,
    this.outputFields,
    this.entityOperation,
  });

  final TfArg<String>? connectionActionId;

  final TfArg<List<String>>? inputFields;

  final TfArg<List<String>>? outputFields;

  final CesToolsetEntityOperation? entityOperation;

  Map<String, Object?> encode() => {
    'connection_action_id': ?connectionActionId?.toTfJson(),
    'input_fields': ?inputFields?.toTfJson(),
    'output_fields': ?outputFields?.toTfJson(),
    'entity_operation': ?entityOperation?.encode(),
  };
}

/// Typed helper for the `connector_toolset.connector_actions.entity_operation` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetEntityOperation {
  const CesToolsetEntityOperation({
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
    this.toolOverrides,
  });

  final TfArg<Map<String, String>>? customHeaders;

  final TfArg<String> serverAddress;

  final CesToolsetApiAuthentication? apiAuthentication;

  final CesToolsetServiceDirectoryConfig? serviceDirectoryConfig;

  final CesToolsetTlsConfig? tlsConfig;

  final List<CesToolsetToolOverrides>? toolOverrides;

  Map<String, Object?> encode() => {
    'custom_headers': ?customHeaders?.toTfJson(),
    'server_address': serverAddress.toTfJson(),
    'api_authentication': ?apiAuthentication?.encode(),
    'service_directory_config': ?serviceDirectoryConfig?.encode(),
    'tls_config': ?tlsConfig?.encode(),
    if (toolOverrides != null)
      'tool_overrides': [for (final e in toolOverrides!) e.encode()],
  };
}

/// Typed helper for the `mcp_toolset.api_authentication` block of
/// `google_ces_toolset` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolsetApiAuthentication {
  const CesToolsetApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
    this.serviceAgentIdTokenAuthConfig,
  });

  final CesToolsetApiKeyConfig? apiKeyConfig;

  final CesToolsetBearerTokenConfig? bearerTokenConfig;

  final CesToolsetOauthConfig? oauthConfig;

  final CesToolsetServiceAccountAuthConfig? serviceAccountAuthConfig;

  final CesToolsetServiceAgentIdTokenAuthConfig? serviceAgentIdTokenAuthConfig;

  Map<String, Object?> encode() => {
    'api_key_config': ?apiKeyConfig?.encode(),
    'bearer_token_config': ?bearerTokenConfig?.encode(),
    'oauth_config': ?oauthConfig?.encode(),
    'service_account_auth_config': ?serviceAccountAuthConfig?.encode(),
    'service_agent_id_token_auth_config': ?serviceAgentIdTokenAuthConfig
        ?.encode(),
  };
}

/// Typed helper for the `mcp_toolset.api_authentication.api_key_config` block of
/// `google_ces_toolset` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolsetApiKeyConfig {
  const CesToolsetApiKeyConfig({
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
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolsetBearerTokenConfig {
  const CesToolsetBearerTokenConfig({this.token});

  final TfArg<String>? token;

  Map<String, Object?> encode() => {'token': ?token?.toTfJson()};
}

/// Typed helper for the `mcp_toolset.api_authentication.oauth_config` block of
/// `google_ces_toolset` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolsetOauthConfig {
  const CesToolsetOauthConfig({
    required this.clientId,
    required this.clientSecretVersion,
    required this.oauthGrantType,
    this.scopes,
    required this.tokenEndpoint,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecretVersion;

  final TfArg<String> oauthGrantType;

  final TfArg<List<String>>? scopes;

  final TfArg<String> tokenEndpoint;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret_version': clientSecretVersion.toTfJson(),
    'oauth_grant_type': oauthGrantType.toTfJson(),
    'scopes': ?scopes?.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
  };
}

/// Typed helper for the `mcp_toolset.api_authentication.service_account_auth_config` block of
/// `google_ces_toolset` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolsetServiceAccountAuthConfig {
  const CesToolsetServiceAccountAuthConfig({
    this.scopes,
    required this.serviceAccount,
  });

  final TfArg<List<String>>? scopes;

  final RefTo<GoogleServiceAccount> serviceAccount;

  Map<String, Object?> encode() => {
    'scopes': ?scopes?.toTfJson(),
    'service_account': serviceAccount.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `mcp_toolset.api_authentication.service_agent_id_token_auth_config` block of
/// `google_ces_toolset` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolsetServiceAgentIdTokenAuthConfig {
  const CesToolsetServiceAgentIdTokenAuthConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `mcp_toolset.service_directory_config` block of
/// `google_ces_toolset` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolsetServiceDirectoryConfig {
  const CesToolsetServiceDirectoryConfig({required this.service});

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `mcp_toolset.tls_config` block of
/// `google_ces_toolset` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolsetTlsConfig {
  const CesToolsetTlsConfig({required this.caCerts});

  final List<CesToolsetCaCerts> caCerts;

  Map<String, Object?> encode() => {
    'ca_certs': [for (final e in caCerts) e.encode()],
  };
}

/// Typed helper for the `mcp_toolset.tls_config.ca_certs` block of
/// `google_ces_toolset` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolsetCaCerts {
  const CesToolsetCaCerts({required this.cert, required this.displayName});

  final TfArg<String> cert;

  final TfArg<String> displayName;

  Map<String, Object?> encode() => {
    'cert': cert.toTfJson(),
    'display_name': displayName.toTfJson(),
  };
}

/// Typed helper for the `mcp_toolset.tool_overrides` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetToolOverrides {
  const CesToolsetToolOverrides({
    this.descriptionOverride,
    this.nameOverride,
    required this.tool,
  });

  final TfArg<String>? descriptionOverride;

  final TfArg<String>? nameOverride;

  final TfArg<String> tool;

  Map<String, Object?> encode() => {
    'description_override': ?descriptionOverride?.toTfJson(),
    'name_override': ?nameOverride?.toTfJson(),
    'tool': tool.toTfJson(),
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

  final CesToolsetApiAuthentication? apiAuthentication;

  final CesToolsetServiceDirectoryConfig? serviceDirectoryConfig;

  final CesToolsetTlsConfig? tlsConfig;

  Map<String, Object?> encode() => {
    'ignore_unknown_fields': ?ignoreUnknownFields?.toTfJson(),
    'open_api_schema': openApiSchema.toTfJson(),
    'api_authentication': ?apiAuthentication?.encode(),
    'service_directory_config': ?serviceDirectoryConfig?.encode(),
    'tls_config': ?tlsConfig?.encode(),
  };
}

/// Typed helper for the `tool_fake_config` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetToolFakeConfig {
  const CesToolsetToolFakeConfig({this.enableFakeMode, this.codeBlock});

  final TfArg<bool>? enableFakeMode;

  final CesToolsetCodeBlock? codeBlock;

  Map<String, Object?> encode() => {
    'enable_fake_mode': ?enableFakeMode?.toTfJson(),
    'code_block': ?codeBlock?.encode(),
  };
}

/// Typed helper for the `tool_fake_config.code_block` block of
/// `google_ces_toolset` (derived from provider schema).
@immutable
final class CesToolsetCodeBlock {
  const CesToolsetCodeBlock({required this.pythonCode});

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
    TfArg<String>? timeout,
    CesToolsetConnectorToolset? connectorToolset,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'toolset_id': toolsetId,
           'display_name': ?displayName,
           'description': ?description,
           'execution_type': ?executionType,
           if (openApiToolset != null)
             'open_api_toolset': TfArg.literal(openApiToolset.encode()),
           if (mcpToolset != null)
             'mcp_toolset': TfArg.literal(mcpToolset.encode()),
           if (toolFakeConfig != null)
             'tool_fake_config': TfArg.literal(toolFakeConfig.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'timeout': ?timeout,
           if (connectorToolset != null)
             'connector_toolset': TfArg.literal(connectorToolset.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesToolsetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesToolset>`.
  RefTo<GoogleCesToolset> get ref => RefTo.of(this);

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

  /// Reference to `app` attribute.
  TfRef<String> get appRef => TfRef.attribute<String>(this, 'app');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `execution_type` attribute.
  TfRef<String> get executionTypeRef =>
      TfRef.attribute<String>(this, 'execution_type');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `timeout` attribute.
  TfRef<String> get timeoutRef => TfRef.attribute<String>(this, 'timeout');

  /// Reference to `toolset_id` (set this on create so agents can bind it).
  TfRef<String> get toolsetIdRef => TfRef.attribute<String>(this, 'toolset_id');
}
