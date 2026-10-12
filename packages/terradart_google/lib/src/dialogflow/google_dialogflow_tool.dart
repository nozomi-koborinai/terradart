// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_tool`.
const Set<String> _googleDialogflowToolSensitive = <String>{
  'open_api_spec.authentication.api_key_config.api_key',
  'open_api_spec.authentication.bearer_token_config.token',
  'open_api_spec.authentication.oauth_config.client_secret',
};

/// Exactly one of `open_api_spec`, `function_spec`, `connector_spec` on `google_dialogflow_tool`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.openApiSpec(...)`.
sealed class DialogflowToolSpecification {
  const DialogflowToolSpecification();

  /// Sets `open_api_spec`.
  const factory DialogflowToolSpecification.openApiSpec(
    DialogflowToolOpenApiSpec openApiSpec,
  ) = DialogflowToolSpecificationOpenApiSpec;

  /// Sets `function_spec`.
  const factory DialogflowToolSpecification.functionSpec(
    DialogflowToolFunctionSpec functionSpec,
  ) = DialogflowToolSpecificationFunctionSpec;

  /// Sets `connector_spec`.
  const factory DialogflowToolSpecification.connectorSpec(
    DialogflowToolConnectorSpec connectorSpec,
  ) = DialogflowToolSpecificationConnectorSpec;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DialogflowToolSpecification.openApiSpec] choice: sets `open_api_spec`.
final class DialogflowToolSpecificationOpenApiSpec
    extends DialogflowToolSpecification {
  const DialogflowToolSpecificationOpenApiSpec(this.openApiSpec);

  final DialogflowToolOpenApiSpec openApiSpec;

  @internal
  @override
  String get blockKey => 'open_api_spec';

  @internal
  @override
  Map<String, Object?> encode() => {'open_api_spec': openApiSpec.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'open_api_spec': TfArg.literal(openApiSpec.encode()),
  };
}

/// The [DialogflowToolSpecification.functionSpec] choice: sets `function_spec`.
final class DialogflowToolSpecificationFunctionSpec
    extends DialogflowToolSpecification {
  const DialogflowToolSpecificationFunctionSpec(this.functionSpec);

  final DialogflowToolFunctionSpec functionSpec;

  @internal
  @override
  String get blockKey => 'function_spec';

  @internal
  @override
  Map<String, Object?> encode() => {'function_spec': functionSpec.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'function_spec': TfArg.literal(functionSpec.encode()),
  };
}

/// The [DialogflowToolSpecification.connectorSpec] choice: sets `connector_spec`.
final class DialogflowToolSpecificationConnectorSpec
    extends DialogflowToolSpecification {
  const DialogflowToolSpecificationConnectorSpec(this.connectorSpec);

  final DialogflowToolConnectorSpec connectorSpec;

  @internal
  @override
  String get blockKey => 'connector_spec';

  @internal
  @override
  Map<String, Object?> encode() => {'connector_spec': connectorSpec.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'connector_spec': TfArg.literal(connectorSpec.encode()),
  };
}

/// Typed helper for the `connector_spec` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolConnectorSpec {
  const DialogflowToolConnectorSpec({
    required this.name,
    required this.actions,
  });

  final TfArg<String> name;

  final List<DialogflowToolActions> actions;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'actions': [for (final e in actions) e.encode()],
  };
}

/// Typed helper for the `connector_spec.actions` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolActions {
  const DialogflowToolActions({
    this.connectionActionId,
    this.inputFields,
    this.outputFields,
    this.entityOperation,
  });

  final TfArg<String>? connectionActionId;

  final TfArg<List<String>>? inputFields;

  final TfArg<List<String>>? outputFields;

  final DialogflowToolEntityOperation? entityOperation;

  @internal
  Map<String, Object?> encode() => {
    'connection_action_id': ?connectionActionId?.toTfJson(),
    'input_fields': ?inputFields?.toTfJson(),
    'output_fields': ?outputFields?.toTfJson(),
    'entity_operation': ?entityOperation?.encode(),
  };
}

/// Typed helper for the `connector_spec.actions.entity_operation` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolEntityOperation {
  const DialogflowToolEntityOperation({
    required this.entityId,
    required this.operation,
  });

  final TfArg<String> entityId;

  final DialogflowToolOperation operation;

  @internal
  Map<String, Object?> encode() => {
    'entity_id': entityId.toTfJson(),
    'operation': operation.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
extension type const DialogflowToolOperation._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowToolOperation.variable(String name) : this._(TfArg.variable(name));
  DialogflowToolOperation.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowToolOperation.arg(TfArg<String> arg) : this._(arg);

  static const list = DialogflowToolOperation._(TfArgLiteral('LIST'));
  static const get = DialogflowToolOperation._(TfArgLiteral('GET'));
  static const create = DialogflowToolOperation._(TfArgLiteral('CREATE'));
  static const update = DialogflowToolOperation._(TfArgLiteral('UPDATE'));
  static const delete = DialogflowToolOperation._(TfArgLiteral('DELETE'));

  static const List<DialogflowToolOperation> values = [
    list,
    get,
    create,
    update,
    delete,
  ];
}

/// Typed helper for the `function_spec` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolFunctionSpec {
  const DialogflowToolFunctionSpec({
    this.inputSchema,
    this.methodType,
    this.outputSchema,
  });

  final TfArg<String>? inputSchema;

  final DialogflowToolMethodType? methodType;

  final TfArg<String>? outputSchema;

  @internal
  Map<String, Object?> encode() => {
    'input_schema': ?inputSchema?.toTfJson(),
    'method_type': ?methodType?.toTfJson(),
    'output_schema': ?outputSchema?.toTfJson(),
  };
}

/// `method_type` — derived from the provider schema description.
extension type const DialogflowToolMethodType._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowToolMethodType.variable(String name) : this._(TfArg.variable(name));
  DialogflowToolMethodType.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowToolMethodType.arg(TfArg<String> arg) : this._(arg);

  static const get = DialogflowToolMethodType._(TfArgLiteral('GET'));
  static const post = DialogflowToolMethodType._(TfArgLiteral('POST'));
  static const put = DialogflowToolMethodType._(TfArgLiteral('PUT'));
  static const delete = DialogflowToolMethodType._(TfArgLiteral('DELETE'));
  static const patch = DialogflowToolMethodType._(TfArgLiteral('PATCH'));

  static const List<DialogflowToolMethodType> values = [
    get,
    post,
    put,
    delete,
    patch,
  ];
}

/// Typed helper for the `open_api_spec` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolOpenApiSpec {
  const DialogflowToolOpenApiSpec({
    required this.textSchema,
    this.authentication,
    this.serviceDirectoryConfig,
    this.tlsConfig,
  });

  final TfArg<String> textSchema;

  final DialogflowToolAuthentication? authentication;

  final DialogflowToolServiceDirectoryConfig? serviceDirectoryConfig;

  final DialogflowToolTlsConfig? tlsConfig;

  @internal
  Map<String, Object?> encode() => {
    'text_schema': textSchema.toTfJson(),
    'authentication': ?authentication?.encode(),
    'service_directory_config': ?serviceDirectoryConfig?.encode(),
    'tls_config': ?tlsConfig?.encode(),
  };
}

/// Typed helper for the `open_api_spec.authentication` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolAuthentication {
  const DialogflowToolAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
  });

  final DialogflowToolApiKeyConfig? apiKeyConfig;

  final DialogflowToolBearerTokenConfig? bearerTokenConfig;

  final DialogflowToolOauthConfig? oauthConfig;

  final DialogflowToolServiceAgentAuthConfig? serviceAgentAuthConfig;

  @internal
  Map<String, Object?> encode() => {
    'api_key_config': ?apiKeyConfig?.encode(),
    'bearer_token_config': ?bearerTokenConfig?.encode(),
    'oauth_config': ?oauthConfig?.encode(),
    'service_agent_auth_config': ?serviceAgentAuthConfig?.encode(),
  };
}

/// Typed helper for the `open_api_spec.authentication.api_key_config` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolApiKeyConfig {
  const DialogflowToolApiKeyConfig({
    this.apiKey,
    required this.keyName,
    required this.requestLocation,
    this.secretVersionForApiKey,
  });

  final Sensitive<String>? apiKey;

  final TfArg<String> keyName;

  final DialogflowToolRequestLocation requestLocation;

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
extension type const DialogflowToolRequestLocation._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowToolRequestLocation.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowToolRequestLocation.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowToolRequestLocation.arg(TfArg<String> arg) : this._(arg);

  static const header = DialogflowToolRequestLocation._(TfArgLiteral('HEADER'));
  static const queryString = DialogflowToolRequestLocation._(
    TfArgLiteral('QUERY_STRING'),
  );

  static const List<DialogflowToolRequestLocation> values = [
    header,
    queryString,
  ];
}

/// Typed helper for the `open_api_spec.authentication.bearer_token_config` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolBearerTokenConfig {
  const DialogflowToolBearerTokenConfig({
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
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolOauthConfig {
  const DialogflowToolOauthConfig({
    required this.clientId,
    this.clientSecret,
    required this.oauthGrantType,
    this.scopes,
    this.secretVersionForClientSecret,
    required this.tokenEndpoint,
  });

  final TfArg<String> clientId;

  final Sensitive<String>? clientSecret;

  final TfArg<String> oauthGrantType;

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

/// Typed helper for the `open_api_spec.authentication.service_agent_auth_config` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolServiceAgentAuthConfig {
  const DialogflowToolServiceAgentAuthConfig({this.serviceAgentAuth});

  final DialogflowToolServiceAgentAuth? serviceAgentAuth;

  @internal
  Map<String, Object?> encode() => {
    'service_agent_auth': ?serviceAgentAuth?.toTfJson(),
  };
}

/// `service_agent_auth` — derived from the provider schema description.
extension type const DialogflowToolServiceAgentAuth._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowToolServiceAgentAuth.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowToolServiceAgentAuth.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowToolServiceAgentAuth.arg(TfArg<String> arg) : this._(arg);

  static const idToken = DialogflowToolServiceAgentAuth._(
    TfArgLiteral('ID_TOKEN'),
  );
  static const accessToken = DialogflowToolServiceAgentAuth._(
    TfArgLiteral('ACCESS_TOKEN'),
  );

  static const List<DialogflowToolServiceAgentAuth> values = [
    idToken,
    accessToken,
  ];
}

/// Typed helper for the `open_api_spec.service_directory_config` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolServiceDirectoryConfig {
  const DialogflowToolServiceDirectoryConfig({required this.service});

  final TfArg<String> service;

  @internal
  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `open_api_spec.tls_config` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolTlsConfig {
  const DialogflowToolTlsConfig({required this.caCerts});

  final List<DialogflowToolCaCerts> caCerts;

  @internal
  Map<String, Object?> encode() => {
    'ca_certs': [for (final e in caCerts) e.encode()],
  };
}

/// Typed helper for the `open_api_spec.tls_config.ca_certs` block of
/// `google_dialogflow_tool` (derived from provider schema).
@immutable
final class DialogflowToolCaCerts {
  const DialogflowToolCaCerts({required this.cert, required this.displayName});

  final TfArg<String> cert;

  final TfArg<String> displayName;

  @internal
  Map<String, Object?> encode() => {
    'cert': cert.toTfJson(),
    'display_name': displayName.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_tool`.
///
/// Provides a list of actions available to a Generator (e.g., OpenAPI call,
/// Function call, Connector call).
final class GoogleDialogflowTool extends Resource {
  static const String tfType = 'google_dialogflow_tool';

  GoogleDialogflowTool(
    super.localName, {
    TfArg<Map<String, String>>? actionConfirmationRequirement,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<String>? toolId,
    required TfArg<String> toolKey,
    required DialogflowToolSpecification specification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action_confirmation_requirement': ?actionConfirmationRequirement,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'location': location,
           'project': ?project,
           'tool_id': ?toolId,
           'tool_key': toolKey,
           ...specification.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowToolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowTool>`.
  RefTo<GoogleDialogflowTool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `satisfies_pzi` attribute.
  TfRef<bool> get satisfiesPzi => TfRef.attribute<bool>(this, 'satisfies_pzi');

  /// Reference to `satisfies_pzs` attribute.
  TfRef<bool> get satisfiesPzs => TfRef.attribute<bool>(this, 'satisfies_pzs');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `action_confirmation_requirement` attribute.
  TfRef<Map<String, String>> get actionConfirmationRequirement =>
      TfRef.attribute<Map<String, String>>(
        this,
        'action_confirmation_requirement',
      );

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `tool_id` attribute.
  TfRef<String> get toolId => TfRef.attribute<String>(this, 'tool_id');

  /// Reference to `tool_key` attribute.
  TfRef<String> get toolKey => TfRef.attribute<String>(this, 'tool_key');
}
