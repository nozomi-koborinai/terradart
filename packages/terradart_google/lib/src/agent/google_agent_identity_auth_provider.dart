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

/// Typed helper for the `auth_provider_type_params` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderAuthProviderTypeParams {
  const AgentIdentityAuthProviderAuthProviderTypeParams({
    this.apiKey,
    this.threeLeggedOauth,
    this.twoLeggedOauth,
  });

  final AgentIdentityAuthProviderAuthProviderTypeParamsApiKey? apiKey;

  final AgentIdentityAuthProviderAuthProviderTypeParamsThreeLeggedOauth?
  threeLeggedOauth;

  final AgentIdentityAuthProviderAuthProviderTypeParamsTwoLeggedOauth?
  twoLeggedOauth;

  Map<String, Object?> encode() => {
    if (apiKey != null) 'api_key': apiKey!.encode(),
    if (threeLeggedOauth != null)
      'three_legged_oauth': threeLeggedOauth!.encode(),
    if (twoLeggedOauth != null) 'two_legged_oauth': twoLeggedOauth!.encode(),
  };
}

/// Typed helper for the `auth_provider_type_params.api_key` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderAuthProviderTypeParamsApiKey {
  const AgentIdentityAuthProviderAuthProviderTypeParamsApiKey({this.apiKey});

  final TfArg<String>? apiKey;

  Map<String, Object?> encode() => {
    if (apiKey != null) 'api_key': apiKey!.toTfJson(),
  };
}

/// Typed helper for the `auth_provider_type_params.three_legged_oauth` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderAuthProviderTypeParamsThreeLeggedOauth {
  const AgentIdentityAuthProviderAuthProviderTypeParamsThreeLeggedOauth({
    this.authorizationUrl,
    this.clientId,
    this.clientSecret,
    this.clientSecretWo,
    this.clientSecretWoVersion,
    this.defaultContinueUri,
    this.enablePkce,
    this.tokenUrl,
  });

  final TfArg<String>? authorizationUrl;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretWo;

  final TfArg<String>? clientSecretWoVersion;

  final TfArg<String>? defaultContinueUri;

  final TfArg<bool>? enablePkce;

  final TfArg<String>? tokenUrl;

  Map<String, Object?> encode() => {
    if (authorizationUrl != null)
      'authorization_url': authorizationUrl!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (clientSecretWoVersion != null)
      'client_secret_wo_version': clientSecretWoVersion!.toTfJson(),
    if (defaultContinueUri != null)
      'default_continue_uri': defaultContinueUri!.toTfJson(),
    if (enablePkce != null) 'enable_pkce': enablePkce!.toTfJson(),
    if (tokenUrl != null) 'token_url': tokenUrl!.toTfJson(),
  };
}

/// Typed helper for the `auth_provider_type_params.two_legged_oauth` block of
/// `google_agent_identity_auth_provider` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderAuthProviderTypeParamsTwoLeggedOauth {
  const AgentIdentityAuthProviderAuthProviderTypeParamsTwoLeggedOauth({
    this.clientId,
    this.clientSecret,
    this.clientSecretWo,
    this.clientSecretWoVersion,
    this.tokenUrl,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretWo;

  final TfArg<String>? clientSecretWoVersion;

  final TfArg<String>? tokenUrl;

  Map<String, Object?> encode() => {
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (clientSecretWoVersion != null)
      'client_secret_wo_version': clientSecretWoVersion!.toTfJson(),
    if (tokenUrl != null) 'token_url': tokenUrl!.toTfJson(),
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
    required AgentIdentityAuthProviderAuthProviderTypeParams
    authProviderTypeParams,
    TfArg<List<String>>? allowedScopes,
    TfArg<List<String>>? blockedScopes,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<List<String>>? workloadIds,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'auth_provider_id': authProviderId,
           'auth_provider_type_params': TfArg.literal(
             authProviderTypeParams.encode(),
           ),
           if (allowedScopes != null) 'allowed_scopes': allowedScopes,
           if (blockedScopes != null) 'blocked_scopes': blockedScopes,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (workloadIds != null) 'workload_ids': workloadIds,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAgentIdentityAuthProviderSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
