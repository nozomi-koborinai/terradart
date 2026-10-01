// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_oauth_client`.
const Set<String> _cloudflareOauthClientSensitive = <String>{'client_secret'};

/// Oauth Client Grant enum for `grant_types`.
extension type const OauthClientGrantTypes._(TfArg<String> _)
    implements TfArg<String> {
  OauthClientGrantTypes.variable(String name) : this._(TfArg.variable(name));
  OauthClientGrantTypes.expression(String template)
    : this._(TfArg.expression(template));
  const OauthClientGrantTypes.arg(TfArg<String> arg) : this._(arg);

  static const authorizationCode = OauthClientGrantTypes._(
    TfArgLiteral('authorization_code'),
  );
  static const refreshToken = OauthClientGrantTypes._(
    TfArgLiteral('refresh_token'),
  );

  static const List<OauthClientGrantTypes> values = [
    authorizationCode,
    refreshToken,
  ];
}

/// Oauth Client Response enum for `response_types`.
extension type const OauthClientResponseTypes._(TfArg<String> _)
    implements TfArg<String> {
  OauthClientResponseTypes.variable(String name) : this._(TfArg.variable(name));
  OauthClientResponseTypes.expression(String template)
    : this._(TfArg.expression(template));
  const OauthClientResponseTypes.arg(TfArg<String> arg) : this._(arg);

  static const token = OauthClientResponseTypes._(TfArgLiteral('token'));
  static const idToken = OauthClientResponseTypes._(TfArgLiteral('id_token'));
  static const code = OauthClientResponseTypes._(TfArgLiteral('code'));

  static const List<OauthClientResponseTypes> values = [token, idToken, code];
}

/// Oauth Client Token Endpoint Auth enum for `token_endpoint_auth_method`.
extension type const OauthClientTokenEndpointAuthMethod._(TfArg<String> _)
    implements TfArg<String> {
  OauthClientTokenEndpointAuthMethod.variable(String name)
    : this._(TfArg.variable(name));
  OauthClientTokenEndpointAuthMethod.expression(String template)
    : this._(TfArg.expression(template));
  const OauthClientTokenEndpointAuthMethod.arg(TfArg<String> arg) : this._(arg);

  static const none = OauthClientTokenEndpointAuthMethod._(
    TfArgLiteral('none'),
  );
  static const clientSecretBasic = OauthClientTokenEndpointAuthMethod._(
    TfArgLiteral('client_secret_basic'),
  );
  static const clientSecretPost = OauthClientTokenEndpointAuthMethod._(
    TfArgLiteral('client_secret_post'),
  );

  static const List<OauthClientTokenEndpointAuthMethod> values = [
    none,
    clientSecretBasic,
    clientSecretPost,
  ];
}

/// Oauth Client enum for `visibility`.
extension type const OauthClientVisibility._(TfArg<String> _)
    implements TfArg<String> {
  OauthClientVisibility.variable(String name) : this._(TfArg.variable(name));
  OauthClientVisibility.expression(String template)
    : this._(TfArg.expression(template));
  const OauthClientVisibility.arg(TfArg<String> arg) : this._(arg);

  static const public = OauthClientVisibility._(TfArgLiteral('public'));

  static const List<OauthClientVisibility> values = [public];
}

/// Factory wrapper for `cloudflare_oauth_client`.
///
/// Accepted Permissions
///
/// - `OAuth Client Read` - `OAuth Client Write`
final class CloudflareOauthClient extends Resource {
  static const String tfType = 'cloudflare_oauth_client';

  CloudflareOauthClient(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<List<String>>? allowedCorsOrigins,
    required TfArg<String> clientName,
    TfArg<String>? clientUri,
    required List<OauthClientGrantTypes> grantTypes,
    TfArg<String>? logoUri,
    TfArg<String>? oauthClientId,
    TfArg<List<String>>? optionalScopes,
    TfArg<String>? policyUri,
    TfArg<List<String>>? postLogoutRedirectUris,
    required TfArg<List<String>> redirectUris,
    required List<OauthClientResponseTypes> responseTypes,
    required TfArg<List<String>> scopes,
    required OauthClientTokenEndpointAuthMethod tokenEndpointAuthMethod,
    TfArg<String>? tosUri,
    OauthClientVisibility? visibility,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'allowed_cors_origins': ?allowedCorsOrigins,
           'client_name': clientName,
           'client_uri': ?clientUri,
           'grant_types': TfArg.literal([
             for (final e in grantTypes) e.toTfJson(),
           ]),
           'logo_uri': ?logoUri,
           'oauth_client_id': ?oauthClientId,
           'optional_scopes': ?optionalScopes,
           'policy_uri': ?policyUri,
           'post_logout_redirect_uris': ?postLogoutRedirectUris,
           'redirect_uris': redirectUris,
           'response_types': TfArg.literal([
             for (final e in responseTypes) e.toTfJson(),
           ]),
           'scopes': scopes,
           'token_endpoint_auth_method': tokenEndpointAuthMethod,
           'tos_uri': ?tosUri,
           'visibility': ?visibility,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOauthClientSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareOauthClient>`.
  RefTo<CloudflareOauthClient> get ref => RefTo.of(this);

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `has_rotated_secret` attribute.
  TfRef<bool> get hasRotatedSecret =>
      TfRef.attribute<bool>(this, 'has_rotated_secret');

  /// Reference to `promoted_at` attribute.
  TfRef<String> get promotedAt => TfRef.attribute<String>(this, 'promoted_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `allowed_cors_origins` attribute.
  TfRef<List<String>> get allowedCorsOrigins =>
      TfRef.attribute<List<String>>(this, 'allowed_cors_origins');

  /// Reference to `client_name` attribute.
  TfRef<String> get clientName => TfRef.attribute<String>(this, 'client_name');

  /// Reference to `client_uri` attribute.
  TfRef<String> get clientUri => TfRef.attribute<String>(this, 'client_uri');

  /// Reference to `grant_types` attribute.
  TfRef<List<String>> get grantTypes =>
      TfRef.attribute<List<String>>(this, 'grant_types');

  /// Reference to `logo_uri` attribute.
  TfRef<String> get logoUri => TfRef.attribute<String>(this, 'logo_uri');

  /// Reference to `oauth_client_id` attribute.
  TfRef<String> get oauthClientId =>
      TfRef.attribute<String>(this, 'oauth_client_id');

  /// Reference to `optional_scopes` attribute.
  TfRef<List<String>> get optionalScopes =>
      TfRef.attribute<List<String>>(this, 'optional_scopes');

  /// Reference to `policy_uri` attribute.
  TfRef<String> get policyUri => TfRef.attribute<String>(this, 'policy_uri');

  /// Reference to `post_logout_redirect_uris` attribute.
  TfRef<List<String>> get postLogoutRedirectUris =>
      TfRef.attribute<List<String>>(this, 'post_logout_redirect_uris');

  /// Reference to `redirect_uris` attribute.
  TfRef<List<String>> get redirectUris =>
      TfRef.attribute<List<String>>(this, 'redirect_uris');

  /// Reference to `response_types` attribute.
  TfRef<List<String>> get responseTypes =>
      TfRef.attribute<List<String>>(this, 'response_types');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `token_endpoint_auth_method` attribute.
  TfRef<String> get tokenEndpointAuthMethod =>
      TfRef.attribute<String>(this, 'token_endpoint_auth_method');

  /// Reference to `tos_uri` attribute.
  TfRef<String> get tosUri => TfRef.attribute<String>(this, 'tos_uri');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibility => TfRef.attribute<String>(this, 'visibility');
}
