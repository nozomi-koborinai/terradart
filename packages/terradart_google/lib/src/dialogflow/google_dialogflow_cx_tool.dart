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

  final List<DialogflowCxToolDataStoreConnections> dataStoreConnections;

  final DialogflowCxToolFallbackPrompt fallbackPrompt;

  @internal
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
final class DialogflowCxToolDataStoreConnections {
  const DialogflowCxToolDataStoreConnections({
    this.dataStore,
    this.dataStoreType,
    this.documentProcessingMode,
  });

  final TfArg<String>? dataStore;

  final DialogflowCxToolDataStoreType? dataStoreType;

  final DialogflowCxToolDocumentProcessingMode? documentProcessingMode;

  @internal
  Map<String, Object?> encode() => {
    'data_store': ?dataStore?.toTfJson(),
    'data_store_type': ?dataStoreType?.toTfJson(),
    'document_processing_mode': ?documentProcessingMode?.toTfJson(),
  };
}

/// `data_store_type` — derived from the provider schema description.
extension type const DialogflowCxToolDataStoreType._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxToolDataStoreType.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxToolDataStoreType.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxToolDataStoreType.arg(TfArg<String> arg) : this._(arg);

  static const publicWeb = DialogflowCxToolDataStoreType._(
    TfArgLiteral('PUBLIC_WEB'),
  );
  static const unstructured = DialogflowCxToolDataStoreType._(
    TfArgLiteral('UNSTRUCTURED'),
  );
  static const structured = DialogflowCxToolDataStoreType._(
    TfArgLiteral('STRUCTURED'),
  );

  static const List<DialogflowCxToolDataStoreType> values = [
    publicWeb,
    unstructured,
    structured,
  ];
}

/// `document_processing_mode` — derived from the provider schema description.
extension type const DialogflowCxToolDocumentProcessingMode._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxToolDocumentProcessingMode.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxToolDocumentProcessingMode.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxToolDocumentProcessingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const documents = DialogflowCxToolDocumentProcessingMode._(
    TfArgLiteral('DOCUMENTS'),
  );
  static const chunks = DialogflowCxToolDocumentProcessingMode._(
    TfArgLiteral('CHUNKS'),
  );

  static const List<DialogflowCxToolDocumentProcessingMode> values = [
    documents,
    chunks,
  ];
}

/// Typed helper for the `data_store_spec.fallback_prompt` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolFallbackPrompt {
  const DialogflowCxToolFallbackPrompt();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `function_spec` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolFunctionSpec {
  const DialogflowCxToolFunctionSpec({this.inputSchema, this.outputSchema});

  final TfArg<String>? inputSchema;

  final TfArg<String>? outputSchema;

  @internal
  Map<String, Object?> encode() => {
    'input_schema': ?inputSchema?.toTfJson(),
    'output_schema': ?outputSchema?.toTfJson(),
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

  final DialogflowCxToolAuthentication? authentication;

  final DialogflowCxToolServiceDirectoryConfig? serviceDirectoryConfig;

  final DialogflowCxToolTlsConfig? tlsConfig;

  @internal
  Map<String, Object?> encode() => {
    'text_schema': textSchema.toTfJson(),
    'authentication': ?authentication?.encode(),
    'service_directory_config': ?serviceDirectoryConfig?.encode(),
    'tls_config': ?tlsConfig?.encode(),
  };
}

/// Typed helper for the `open_api_spec.authentication` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolAuthentication {
  const DialogflowCxToolAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
  });

  final DialogflowCxToolApiKeyConfig? apiKeyConfig;

  final DialogflowCxToolBearerTokenConfig? bearerTokenConfig;

  final DialogflowCxToolOauthConfig? oauthConfig;

  final DialogflowCxToolServiceAgentAuthConfig? serviceAgentAuthConfig;

  @internal
  Map<String, Object?> encode() => {
    'api_key_config': ?apiKeyConfig?.encode(),
    'bearer_token_config': ?bearerTokenConfig?.encode(),
    'oauth_config': ?oauthConfig?.encode(),
    'service_agent_auth_config': ?serviceAgentAuthConfig?.encode(),
  };
}

/// Typed helper for the `open_api_spec.authentication.api_key_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolApiKeyConfig {
  const DialogflowCxToolApiKeyConfig({
    this.apiKey,
    required this.keyName,
    required this.requestLocation,
    this.secretVersionForApiKey,
  });

  final Sensitive<String>? apiKey;

  final TfArg<String> keyName;

  final DialogflowCxToolRequestLocation requestLocation;

  final TfArg<String>? secretVersionForApiKey;

  @internal
  Map<String, Object?> encode() => {
    'api_key': ?apiKey?.toTfJson(),
    'key_name': keyName.toTfJson(),
    'request_location': requestLocation.toTfJson(),
    'secret_version_for_api_key': ?secretVersionForApiKey?.toTfJson(),
  };
}

/// `request_location` — derived from the provider schema description.
extension type const DialogflowCxToolRequestLocation._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxToolRequestLocation.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxToolRequestLocation.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxToolRequestLocation.arg(TfArg<String> arg) : this._(arg);

  static const header = DialogflowCxToolRequestLocation._(
    TfArgLiteral('HEADER'),
  );
  static const queryString = DialogflowCxToolRequestLocation._(
    TfArgLiteral('QUERY_STRING'),
  );

  static const List<DialogflowCxToolRequestLocation> values = [
    header,
    queryString,
  ];
}

/// Typed helper for the `open_api_spec.authentication.bearer_token_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolBearerTokenConfig {
  const DialogflowCxToolBearerTokenConfig({
    this.secretVersionForToken,
    this.token,
  });

  final TfArg<String>? secretVersionForToken;

  final Sensitive<String>? token;

  @internal
  Map<String, Object?> encode() => {
    'secret_version_for_token': ?secretVersionForToken?.toTfJson(),
    'token': ?token?.toTfJson(),
  };
}

/// Typed helper for the `open_api_spec.authentication.oauth_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolOauthConfig {
  const DialogflowCxToolOauthConfig({
    required this.clientId,
    this.clientSecret,
    required this.oauthGrantType,
    this.scopes,
    this.secretVersionForClientSecret,
    required this.tokenEndpoint,
  });

  final TfArg<String> clientId;

  final Sensitive<String>? clientSecret;

  final DialogflowCxToolOauthGrantType oauthGrantType;

  final TfArg<List<String>>? scopes;

  final TfArg<String>? secretVersionForClientSecret;

  final TfArg<String> tokenEndpoint;

  @internal
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

/// `oauth_grant_type` — derived from the provider schema description.
extension type const DialogflowCxToolOauthGrantType._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxToolOauthGrantType.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxToolOauthGrantType.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxToolOauthGrantType.arg(TfArg<String> arg) : this._(arg);

  static const clientCredential = DialogflowCxToolOauthGrantType._(
    TfArgLiteral('CLIENT_CREDENTIAL'),
  );

  static const List<DialogflowCxToolOauthGrantType> values = [clientCredential];
}

/// Typed helper for the `open_api_spec.authentication.service_agent_auth_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolServiceAgentAuthConfig {
  const DialogflowCxToolServiceAgentAuthConfig({this.serviceAgentAuth});

  final DialogflowCxToolServiceAgentAuth? serviceAgentAuth;

  @internal
  Map<String, Object?> encode() => {
    'service_agent_auth': ?serviceAgentAuth?.toTfJson(),
  };
}

/// `service_agent_auth` — derived from the provider schema description.
extension type const DialogflowCxToolServiceAgentAuth._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxToolServiceAgentAuth.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxToolServiceAgentAuth.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxToolServiceAgentAuth.arg(TfArg<String> arg) : this._(arg);

  static const idToken = DialogflowCxToolServiceAgentAuth._(
    TfArgLiteral('ID_TOKEN'),
  );
  static const accessToken = DialogflowCxToolServiceAgentAuth._(
    TfArgLiteral('ACCESS_TOKEN'),
  );

  static const List<DialogflowCxToolServiceAgentAuth> values = [
    idToken,
    accessToken,
  ];
}

/// Typed helper for the `open_api_spec.service_directory_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolServiceDirectoryConfig {
  const DialogflowCxToolServiceDirectoryConfig({required this.service});

  final TfArg<String> service;

  @internal
  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `open_api_spec.tls_config` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolTlsConfig {
  const DialogflowCxToolTlsConfig({required this.caCerts});

  final List<DialogflowCxToolCaCerts> caCerts;

  @internal
  Map<String, Object?> encode() => {
    'ca_certs': [for (final e in caCerts) e.encode()],
  };
}

/// Typed helper for the `open_api_spec.tls_config.ca_certs` block of
/// `google_dialogflow_cx_tool` (derived from provider schema).
@immutable
final class DialogflowCxToolCaCerts {
  const DialogflowCxToolCaCerts({
    required this.cert,
    required this.displayName,
  });

  final TfArg<String> cert;

  final TfArg<String> displayName;

  @internal
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

  GoogleDialogflowCxTool(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> description,
    TfArg<String>? parent,
    DialogflowCxToolOpenApiSpec? openApiSpec,
    DialogflowCxToolFunctionSpec? functionSpec,
    DialogflowCxToolDataStoreSpec? dataStoreSpec,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'description': description,
           'parent': ?parent,
           if (openApiSpec != null)
             'open_api_spec': TfArg.literal(openApiSpec.encode()),
           if (functionSpec != null)
             'function_spec': TfArg.literal(functionSpec.encode()),
           if (dataStoreSpec != null)
             'data_store_spec': TfArg.literal(dataStoreSpec.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxToolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxTool>`.
  RefTo<GoogleDialogflowCxTool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tool_type` attribute.
  TfRef<String> get toolType => TfRef.attribute<String>(this, 'tool_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
