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
};

/// Exactly one of `api_key`, `three_legged_oauth`, `two_legged_oauth` on the `auth_provider_type_params` block of `google_agent_identity_auth_provider`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.apiKey(...)`.
sealed class AgentIdentityAuthProviderTypeParams {
  const AgentIdentityAuthProviderTypeParams();

  /// Sets `api_key`.
  const factory AgentIdentityAuthProviderTypeParams.apiKey(
    AgentIdentityAuthProviderApiKey apiKey,
  ) = AgentIdentityAuthProviderTypeParamsApiKey;

  /// Sets `three_legged_oauth`.
  const factory AgentIdentityAuthProviderTypeParams.threeLeggedOauth(
    AgentIdentityAuthProviderThreeLeggedOauth threeLeggedOauth,
  ) = AgentIdentityAuthProviderTypeParamsThreeLeggedOauth;

  /// Sets `two_legged_oauth`.
  const factory AgentIdentityAuthProviderTypeParams.twoLeggedOauth(
    AgentIdentityAuthProviderTwoLeggedOauth twoLeggedOauth,
  ) = AgentIdentityAuthProviderTypeParamsTwoLeggedOauth;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AgentIdentityAuthProviderTypeParams.apiKey] choice: sets `api_key`.
final class AgentIdentityAuthProviderTypeParamsApiKey
    extends AgentIdentityAuthProviderTypeParams {
  const AgentIdentityAuthProviderTypeParamsApiKey(this.apiKey);

  final AgentIdentityAuthProviderApiKey apiKey;

  @override
  String get blockKey => 'api_key';

  @override
  Map<String, Object?> encode() => {'api_key': apiKey.encode()};
}

/// The [AgentIdentityAuthProviderTypeParams.threeLeggedOauth] choice: sets `three_legged_oauth`.
final class AgentIdentityAuthProviderTypeParamsThreeLeggedOauth
    extends AgentIdentityAuthProviderTypeParams {
  const AgentIdentityAuthProviderTypeParamsThreeLeggedOauth(
    this.threeLeggedOauth,
  );

  final AgentIdentityAuthProviderThreeLeggedOauth threeLeggedOauth;

  @override
  String get blockKey => 'three_legged_oauth';

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

  @override
  String get blockKey => 'two_legged_oauth';

  @override
  Map<String, Object?> encode() => {
    'two_legged_oauth': twoLeggedOauth.encode(),
  };
}

/// Typed helper for the `auth_provider_type_params.api_key` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderApiKey {
  const AgentIdentityAuthProviderApiKey({this.apiKey});

  final TfArg<String>? apiKey;

  Map<String, Object?> encode() => {'api_key': ?apiKey?.toTfJson()};
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
    TfArg<String> clientSecret,
  ) = AgentIdentityAuthProviderThreeLeggedOauthClientSecretChoice;

  /// Sets `client_secret_wo`.
  const factory AgentIdentityAuthProviderThreeLeggedOauthClientSecret.clientSecretWo(
    TfArg<String> clientSecretWo,
  ) = AgentIdentityAuthProviderThreeLeggedOauthClientSecretWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AgentIdentityAuthProviderThreeLeggedOauthClientSecret.clientSecret] choice: sets `client_secret`.
final class AgentIdentityAuthProviderThreeLeggedOauthClientSecretChoice
    extends AgentIdentityAuthProviderThreeLeggedOauthClientSecret {
  const AgentIdentityAuthProviderThreeLeggedOauthClientSecretChoice(
    this.clientSecret,
  );

  final TfArg<String> clientSecret;

  @override
  String get blockKey => 'client_secret';

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

  @override
  String get blockKey => 'client_secret_wo';

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
    TfArg<String> clientSecret,
  ) = AgentIdentityAuthProviderTwoLeggedOauthClientSecretChoice;

  /// Sets `client_secret_wo`.
  const factory AgentIdentityAuthProviderTwoLeggedOauthClientSecret.clientSecretWo(
    TfArg<String> clientSecretWo,
  ) = AgentIdentityAuthProviderTwoLeggedOauthClientSecretWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AgentIdentityAuthProviderTwoLeggedOauthClientSecret.clientSecret] choice: sets `client_secret`.
final class AgentIdentityAuthProviderTwoLeggedOauthClientSecretChoice
    extends AgentIdentityAuthProviderTwoLeggedOauthClientSecret {
  const AgentIdentityAuthProviderTwoLeggedOauthClientSecretChoice(
    this.clientSecret,
  );

  final TfArg<String> clientSecret;

  @override
  String get blockKey => 'client_secret';

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

  @override
  String get blockKey => 'client_secret_wo';

  @override
  Map<String, Object?> encode() => {
    'client_secret_wo': clientSecretWo.toTfJson(),
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

  GoogleAgentIdentityAuthProvider({
    required super.localName,
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
  TfRef<List<String>> get allowedScopesRef =>
      TfRef.attribute<List<String>>(this, 'allowed_scopes');

  /// Reference to `auth_provider_id` attribute.
  TfRef<String> get authProviderIdRef =>
      TfRef.attribute<String>(this, 'auth_provider_id');

  /// Reference to `blocked_scopes` attribute.
  TfRef<List<String>> get blockedScopesRef =>
      TfRef.attribute<List<String>>(this, 'blocked_scopes');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `workload_ids` attribute.
  TfRef<List<String>> get workloadIdsRef =>
      TfRef.attribute<List<String>>(this, 'workload_ids');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
