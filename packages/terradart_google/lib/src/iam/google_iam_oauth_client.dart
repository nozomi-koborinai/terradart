// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_oauth_client`.
const Set<String> _googleIamOauthClientSensitive = <String>{};

/// Factory wrapper for `google_iam_oauth_client`.
///
/// Represents an OAuth Client. Used to access Google Cloud resources on behalf
/// of a Workforce Identity Federation user by using OAuth 2.0 Protocol to
/// obtain an access token from Google Cloud.
///
/// Workforce Identity Federation **OAuth client** — app metadata
/// used later to obtain an access token for a WIF user.
/// Creating the client does **not** complete OAuth, issue a token,
/// or create a workforce pool.
///
/// Prefer a thin smoke stack: [location] `global`,
/// [allowedGrantTypes] `AUTHORIZATION_CODE_GRANT`, a dummy
/// [allowedRedirectUris] `https://www.example.com`, and
/// [allowedScopes] `openid`. Use [clientType] `PUBLIC_CLIENT`
/// so no client-secret credential sibling is required. Set
/// [deletionPolicy] to `DELETE`.
///
/// `iam_quickstart` is apply-smoke skipped (WIF pool id
/// collision), so this factory is synth + `terraform validate`
/// only. Do not pair it with `google_iam_oauth_client_credential`.
///
/// Example:
/// ```dart
/// GoogleIamOauthClient(
///   localName: 'demo',
///   oauthClientId: TfArg.literal('terradart-oauth'),
///   location: TfArg.literal('global'),
///   allowedGrantTypes: TfArg.literal(['AUTHORIZATION_CODE_GRANT']),
///   allowedRedirectUris: TfArg.literal(['https://www.example.com']),
///   allowedScopes: TfArg.literal(['openid']),
///   clientType: TfArg.literal('PUBLIC_CLIENT'),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleIamOauthClient extends Resource {
  static const String tfType = 'google_iam_oauth_client';

  GoogleIamOauthClient({
    required super.localName,
    required TfArg<String> oauthClientId,
    required TfArg<String> location,
    required TfArg<List<String>> allowedGrantTypes,
    required TfArg<List<String>> allowedRedirectUris,
    required TfArg<List<String>> allowedScopes,
    TfArg<String>? clientType,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'oauth_client_id': oauthClientId,
           'location': location,
           'allowed_grant_types': allowedGrantTypes,
           'allowed_redirect_uris': allowedRedirectUris,
           'allowed_scopes': allowedScopes,
           'client_type': ?clientType,
           'display_name': ?displayName,
           'description': ?description,
           'disabled': ?disabled,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamOauthClientSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamOauthClient>`.
  RefTo<GoogleIamOauthClient> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `allowed_grant_types` attribute.
  TfRef<List<String>> get allowedGrantTypesRef =>
      TfRef.attribute<List<String>>(this, 'allowed_grant_types');

  /// Reference to `allowed_redirect_uris` attribute.
  TfRef<List<String>> get allowedRedirectUrisRef =>
      TfRef.attribute<List<String>>(this, 'allowed_redirect_uris');

  /// Reference to `allowed_scopes` attribute.
  TfRef<List<String>> get allowedScopesRef =>
      TfRef.attribute<List<String>>(this, 'allowed_scopes');

  /// Reference to `client_type` attribute.
  TfRef<String> get clientTypeRef =>
      TfRef.attribute<String>(this, 'client_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabledRef => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `oauth_client_id` attribute.
  TfRef<String> get oauthClientIdRef =>
      TfRef.attribute<String>(this, 'oauth_client_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
