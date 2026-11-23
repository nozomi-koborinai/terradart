// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_agent_identity_auth_provider`.
const Set<String> _googleAgentIdentityAuthProviderSensitive = <String>{
  'auth_provider_type_params.api_key.api_key',
  'auth_provider_type_params.three_legged_oauth.client_secret',
  'auth_provider_type_params.two_legged_oauth.client_secret',
  'auth_provider_type_params.xaa_auth_provider.client_secret_auth.client_secret',
};

/// Exactly one of `api_key`, `connector_reference_auth_provider`, `three_legged_oauth`, `two_legged_oauth`, `xaa_auth_provider` on the `auth_provider_type_params` block of `google_agent_identity_auth_provider`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.apiKey(...)`.
sealed class AgentIdentityAuthProviderTypeParams {
  const AgentIdentityAuthProviderTypeParams();

  /// Sets `api_key`.
  const factory AgentIdentityAuthProviderTypeParams.apiKey(
    AgentIdentityAuthProviderApiKey apiKey,
  ) = AgentIdentityAuthProviderTypeParamsApiKey;

  /// Sets `connector_reference_auth_provider`.
  const factory AgentIdentityAuthProviderTypeParams.connectorReferenceAuthProvider(
    AgentIdentityAuthProviderConnectorReferenceAuthProvider
    connectorReferenceAuthProvider,
  ) = AgentIdentityAuthProviderTypeParamsConnectorReferenceAuthProvider;

  /// Sets `three_legged_oauth`.
  const factory AgentIdentityAuthProviderTypeParams.threeLeggedOauth(
    AgentIdentityAuthProviderThreeLeggedOauth threeLeggedOauth,
  ) = AgentIdentityAuthProviderTypeParamsThreeLeggedOauth;

  /// Sets `two_legged_oauth`.
  const factory AgentIdentityAuthProviderTypeParams.twoLeggedOauth(
    AgentIdentityAuthProviderTwoLeggedOauth twoLeggedOauth,
  ) = AgentIdentityAuthProviderTypeParamsTwoLeggedOauth;

  /// Sets `xaa_auth_provider`.
  const factory AgentIdentityAuthProviderTypeParams.xaaAuthProvider(
    AgentIdentityAuthProviderXaaAuthProvider xaaAuthProvider,
  ) = AgentIdentityAuthProviderTypeParamsXaaAuthProvider;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AgentIdentityAuthProviderTypeParams.apiKey] choice: sets `api_key`.
final class AgentIdentityAuthProviderTypeParamsApiKey
    extends AgentIdentityAuthProviderTypeParams {
  const AgentIdentityAuthProviderTypeParamsApiKey(this.apiKey);

  final AgentIdentityAuthProviderApiKey apiKey;

  @internal
  @override
  String get blockKey => 'api_key';

  @internal
  @override
  Map<String, Object?> encode() => {'api_key': apiKey.encode()};
}

/// The [AgentIdentityAuthProviderTypeParams.connectorReferenceAuthProvider] choice: sets `connector_reference_auth_provider`.
final class AgentIdentityAuthProviderTypeParamsConnectorReferenceAuthProvider
    extends AgentIdentityAuthProviderTypeParams {
  const AgentIdentityAuthProviderTypeParamsConnectorReferenceAuthProvider(
    this.connectorReferenceAuthProvider,
  );

  final AgentIdentityAuthProviderConnectorReferenceAuthProvider
  connectorReferenceAuthProvider;

  @internal
  @override
  String get blockKey => 'connector_reference_auth_provider';

  @internal
  @override
  Map<String, Object?> encode() => {
    'connector_reference_auth_provider': connectorReferenceAuthProvider
        .encode(),
  };
}

/// The [AgentIdentityAuthProviderTypeParams.threeLeggedOauth] choice: sets `three_legged_oauth`.
final class AgentIdentityAuthProviderTypeParamsThreeLeggedOauth
    extends AgentIdentityAuthProviderTypeParams {
  const AgentIdentityAuthProviderTypeParamsThreeLeggedOauth(
    this.threeLeggedOauth,
  );

  final AgentIdentityAuthProviderThreeLeggedOauth threeLeggedOauth;

  @internal
  @override
  String get blockKey => 'three_legged_oauth';

  @internal
  @override
  Map<String, Object?> encode() => {
    'three_legged_oauth': threeLeggedOauth.encode(),
  };
}

/// The [AgentIdentityAuthProviderTypeParams.twoLeggedOauth] choice: sets `two_legged_oauth`.
final class AgentIdentityAuthProviderTypeParamsTwoLeggedOauth
    extends AgentIdentityAuthProviderTypeParams {
  const AgentIdentityAuthProviderTypeParamsTwoLeggedOauth(this.twoLeggedOauth);

  final AgentIdentityAuthProviderTwoLeggedOauth twoLeggedOauth;

  @internal
  @override
  String get blockKey => 'two_legged_oauth';

  @internal
  @override
  Map<String, Object?> encode() => {
    'two_legged_oauth': twoLeggedOauth.encode(),
  };
}

/// The [AgentIdentityAuthProviderTypeParams.xaaAuthProvider] choice: sets `xaa_auth_provider`.
final class AgentIdentityAuthProviderTypeParamsXaaAuthProvider
    extends AgentIdentityAuthProviderTypeParams {
  const AgentIdentityAuthProviderTypeParamsXaaAuthProvider(
    this.xaaAuthProvider,
  );

  final AgentIdentityAuthProviderXaaAuthProvider xaaAuthProvider;

  @internal
  @override
  String get blockKey => 'xaa_auth_provider';

  @internal
  @override
  Map<String, Object?> encode() => {
    'xaa_auth_provider': xaaAuthProvider.encode(),
  };
}

/// Typed helper for the `auth_provider_type_params.api_key` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderApiKey {
  const AgentIdentityAuthProviderApiKey({this.apiKey});

  final Sensitive<String>? apiKey;

  @internal
  Map<String, Object?> encode() => {'api_key': ?apiKey?.toTfJson()};
}

/// Typed helper for the `auth_provider_type_params.connector_reference_auth_provider` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderConnectorReferenceAuthProvider {
  const AgentIdentityAuthProviderConnectorReferenceAuthProvider({
    this.authorizationDetails,
    required this.connector,
  });

  final TfArg<String>? authorizationDetails;

  final TfArg<String> connector;

  @internal
  Map<String, Object?> encode() => {
    'authorization_details': ?authorizationDetails?.toTfJson(),
    'connector': connector.toTfJson(),
  };
}

/// Typed helper for the `auth_provider_type_params.three_legged_oauth` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderThreeLeggedOauth {
  const AgentIdentityAuthProviderThreeLeggedOauth({
    this.authorizationUrl,
    this.clientId,
    this.clientSecret,
    this.clientSecretWoVersion,
    this.defaultContinueUri,
    this.enablePkce,
    this.tokenUrl,
  });

  final TfArg<String>? authorizationUrl;

  final TfArg<String>? clientId;

  final AgentIdentityAuthProviderThreeLeggedOauthClientSecret? clientSecret;

  final TfArg<String>? clientSecretWoVersion;

  final TfArg<String>? defaultContinueUri;

  final TfArg<bool>? enablePkce;

  final TfArg<String>? tokenUrl;

  @internal
  Map<String, Object?> encode() => {
    'authorization_url': ?authorizationUrl?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    ...?clientSecret?.encode(),
    'client_secret_wo_version': ?clientSecretWoVersion?.toTfJson(),
    'default_continue_uri': ?defaultContinueUri?.toTfJson(),
    'enable_pkce': ?enablePkce?.toTfJson(),
    'token_url': ?tokenUrl?.toTfJson(),
  };
}

/// At most one of `client_secret`, `client_secret_wo` on the `auth_provider_type_params.three_legged_oauth` block of `google_agent_identity_auth_provider`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class AgentIdentityAuthProviderThreeLeggedOauthClientSecret {
  const AgentIdentityAuthProviderThreeLeggedOauthClientSecret();

  /// Sets `client_secret`.
  const factory AgentIdentityAuthProviderThreeLeggedOauthClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = AgentIdentityAuthProviderThreeLeggedOauthClientSecretChoice;

  /// Sets `client_secret_wo`.
  const factory AgentIdentityAuthProviderThreeLeggedOauthClientSecret.clientSecretWo(
    TfArg<String> clientSecretWo,
  ) = AgentIdentityAuthProviderThreeLeggedOauthClientSecretWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AgentIdentityAuthProviderThreeLeggedOauthClientSecret.clientSecret] choice: sets `client_secret`.
final class AgentIdentityAuthProviderThreeLeggedOauthClientSecretChoice
    extends AgentIdentityAuthProviderThreeLeggedOauthClientSecret {
  const AgentIdentityAuthProviderThreeLeggedOauthClientSecretChoice(
    this.clientSecret,
  );

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [AgentIdentityAuthProviderThreeLeggedOauthClientSecret.clientSecretWo] choice: sets `client_secret_wo`.
final class AgentIdentityAuthProviderThreeLeggedOauthClientSecretWo
    extends AgentIdentityAuthProviderThreeLeggedOauthClientSecret {
  const AgentIdentityAuthProviderThreeLeggedOauthClientSecretWo(
    this.clientSecretWo,
  );

  final TfArg<String> clientSecretWo;

  @internal
  @override
  String get blockKey => 'client_secret_wo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_wo': clientSecretWo.toTfJson(),
  };
}

/// Typed helper for the `auth_provider_type_params.two_legged_oauth` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderTwoLeggedOauth {
  const AgentIdentityAuthProviderTwoLeggedOauth({
    this.clientId,
    this.clientSecret,
    this.clientSecretWoVersion,
    this.tokenUrl,
  });

  final TfArg<String>? clientId;

  final AgentIdentityAuthProviderTwoLeggedOauthClientSecret? clientSecret;

  final TfArg<String>? clientSecretWoVersion;

  final TfArg<String>? tokenUrl;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    ...?clientSecret?.encode(),
    'client_secret_wo_version': ?clientSecretWoVersion?.toTfJson(),
    'token_url': ?tokenUrl?.toTfJson(),
  };
}

/// At most one of `client_secret`, `client_secret_wo` on the `auth_provider_type_params.two_legged_oauth` block of `google_agent_identity_auth_provider`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class AgentIdentityAuthProviderTwoLeggedOauthClientSecret {
  const AgentIdentityAuthProviderTwoLeggedOauthClientSecret();

  /// Sets `client_secret`.
  const factory AgentIdentityAuthProviderTwoLeggedOauthClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = AgentIdentityAuthProviderTwoLeggedOauthClientSecretChoice;

  /// Sets `client_secret_wo`.
  const factory AgentIdentityAuthProviderTwoLeggedOauthClientSecret.clientSecretWo(
    TfArg<String> clientSecretWo,
  ) = AgentIdentityAuthProviderTwoLeggedOauthClientSecretWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AgentIdentityAuthProviderTwoLeggedOauthClientSecret.clientSecret] choice: sets `client_secret`.
final class AgentIdentityAuthProviderTwoLeggedOauthClientSecretChoice
    extends AgentIdentityAuthProviderTwoLeggedOauthClientSecret {
  const AgentIdentityAuthProviderTwoLeggedOauthClientSecretChoice(
    this.clientSecret,
  );

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};
}

/// The [AgentIdentityAuthProviderTwoLeggedOauthClientSecret.clientSecretWo] choice: sets `client_secret_wo`.
final class AgentIdentityAuthProviderTwoLeggedOauthClientSecretWo
    extends AgentIdentityAuthProviderTwoLeggedOauthClientSecret {
  const AgentIdentityAuthProviderTwoLeggedOauthClientSecretWo(
    this.clientSecretWo,
  );

  final TfArg<String> clientSecretWo;

  @internal
  @override
  String get blockKey => 'client_secret_wo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_wo': clientSecretWo.toTfJson(),
  };
}

/// Typed helper for the `auth_provider_type_params.xaa_auth_provider` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderXaaAuthProvider {
  const AgentIdentityAuthProviderXaaAuthProvider({
    this.additionalParameters,
    this.client,
    this.customIssuer,
    this.idTokenInput,
  });

  final TfArg<Map<String, String>>? additionalParameters;

  final AgentIdentityAuthProviderClient? client;

  final AgentIdentityAuthProviderCustomIssuer? customIssuer;

  final AgentIdentityAuthProviderIdTokenInput? idTokenInput;

  @internal
  Map<String, Object?> encode() => {
    'additional_parameters': ?additionalParameters?.toTfJson(),
    ...?client?.encode(),
    'custom_issuer': ?customIssuer?.encode(),
    'id_token_input': ?idTokenInput?.encode(),
  };
}

/// At most one of `client_assertion_jwt_auth`, `client_secret_auth` on the `auth_provider_type_params.xaa_auth_provider` block of `google_agent_identity_auth_provider`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientAssertionJwtAuth(...)`.
sealed class AgentIdentityAuthProviderClient {
  const AgentIdentityAuthProviderClient();

  /// Sets `client_assertion_jwt_auth`.
  const factory AgentIdentityAuthProviderClient.clientAssertionJwtAuth(
    AgentIdentityAuthProviderClientAssertionJwtAuth clientAssertionJwtAuth,
  ) = AgentIdentityAuthProviderClientAssertionJwtAuthChoice;

  /// Sets `client_secret_auth`.
  const factory AgentIdentityAuthProviderClient.clientSecretAuth(
    AgentIdentityAuthProviderClientSecretAuth clientSecretAuth,
  ) = AgentIdentityAuthProviderClientSecretAuthChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AgentIdentityAuthProviderClient.clientAssertionJwtAuth] choice: sets `client_assertion_jwt_auth`.
final class AgentIdentityAuthProviderClientAssertionJwtAuthChoice
    extends AgentIdentityAuthProviderClient {
  const AgentIdentityAuthProviderClientAssertionJwtAuthChoice(
    this.clientAssertionJwtAuth,
  );

  final AgentIdentityAuthProviderClientAssertionJwtAuth clientAssertionJwtAuth;

  @internal
  @override
  String get blockKey => 'client_assertion_jwt_auth';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_assertion_jwt_auth': clientAssertionJwtAuth.encode(),
  };
}

/// The [AgentIdentityAuthProviderClient.clientSecretAuth] choice: sets `client_secret_auth`.
final class AgentIdentityAuthProviderClientSecretAuthChoice
    extends AgentIdentityAuthProviderClient {
  const AgentIdentityAuthProviderClientSecretAuthChoice(this.clientSecretAuth);

  final AgentIdentityAuthProviderClientSecretAuth clientSecretAuth;

  @internal
  @override
  String get blockKey => 'client_secret_auth';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_auth': clientSecretAuth.encode(),
  };
}

/// Typed helper for the `auth_provider_type_params.xaa_auth_provider.client_assertion_jwt_auth` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderClientAssertionJwtAuth {
  const AgentIdentityAuthProviderClientAssertionJwtAuth({
    required this.clientId,
  });

  final TfArg<String> clientId;

  @internal
  Map<String, Object?> encode() => {'client_id': clientId.toTfJson()};
}

/// Typed helper for the `auth_provider_type_params.xaa_auth_provider.client_secret_auth` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderClientSecretAuth {
  const AgentIdentityAuthProviderClientSecretAuth({
    required this.clientId,
    required this.clientSecret,
  });

  final TfArg<String> clientId;

  final Sensitive<String> clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
  };
}

/// Typed helper for the `auth_provider_type_params.xaa_auth_provider.custom_issuer` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderCustomIssuer {
  const AgentIdentityAuthProviderCustomIssuer({
    this.issuer,
    required this.tokenUrl,
  });

  final TfArg<String>? issuer;

  final TfArg<String> tokenUrl;

  @internal
  Map<String, Object?> encode() => {
    'issuer': ?issuer?.toTfJson(),
    'token_url': tokenUrl.toTfJson(),
  };
}

/// Typed helper for the `auth_provider_type_params.xaa_auth_provider.id_token_input` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderIdTokenInput {
  const AgentIdentityAuthProviderIdTokenInput({
    this.idJagAdditionalClaims,
    this.idJagAuthProvider,
  });

  final TfArg<String>? idJagAdditionalClaims;

  final TfArg<String>? idJagAuthProvider;

  @internal
  Map<String, Object?> encode() => {
    'id_jag_additional_claims': ?idJagAdditionalClaims?.toTfJson(),
    'id_jag_auth_provider': ?idJagAuthProvider?.toTfJson(),
  };
}

/// Factory wrapper for `google_agent_identity_auth_provider`.
///
/// An AuthProvider resource in Agent Identity to manage cloud authentication
/// delegation.
///
/// Agent Identity **auth provider** — delegates cloud authentication to
/// agents (API key, 3LO, or 2LO via [authProviderTypeParams]).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` has no Agent Identity / Agent Registry service;
/// Identity Platform `DC5D-D207-FD2F` keyword `agent` → 0; Agentic
/// Applications `E4EE-DF31-DCDA` is Shopping Agent chat only).
/// billing-behavior: auth-provider config metadata — no existence/hourly
/// charge observed. Not standalone-project applyable on
/// `terradart-validate` (Agent Identity scaffolding). **Never** wire into
/// apply-smoke.
final class GoogleAgentIdentityAuthProvider extends Resource {
  static const String tfType = 'google_agent_identity_auth_provider';

  GoogleAgentIdentityAuthProvider(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> authProviderId,
    required AgentIdentityAuthProviderTypeParams authProviderTypeParams,
    TfArg<List<String>>? allowedScopes,
    TfArg<List<String>>? blockedScopes,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<List<String>>? workloadIds,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'auth_provider_id': authProviderId,
           'auth_provider_type_params': TfArg.literal(
             authProviderTypeParams.encode(),
           ),
           'allowed_scopes': ?allowedScopes,
           'blocked_scopes': ?blockedScopes,
           'description': ?description,
           'labels': ?labels,
           'workload_ids': ?workloadIds,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAgentIdentityAuthProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAgentIdentityAuthProvider>`.
  RefTo<GoogleAgentIdentityAuthProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deleted` attribute.
  TfRef<bool> get deleted => TfRef.attribute<bool>(this, 'deleted');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `allowed_scopes` attribute.
  TfRef<List<String>> get allowedScopes =>
      TfRef.attribute<List<String>>(this, 'allowed_scopes');

  /// Reference to `auth_provider_id` attribute.
  TfRef<String> get authProviderId =>
      TfRef.attribute<String>(this, 'auth_provider_id');

  /// Reference to `blocked_scopes` attribute.
  TfRef<List<String>> get blockedScopes =>
      TfRef.attribute<List<String>>(this, 'blocked_scopes');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `workload_ids` attribute.
  TfRef<List<String>> get workloadIds =>
      TfRef.attribute<List<String>>(this, 'workload_ids');
}
