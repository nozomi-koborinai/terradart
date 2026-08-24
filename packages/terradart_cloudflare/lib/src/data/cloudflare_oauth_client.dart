// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_oauth_client`.
const Set<String> _cloudflareOauthClientSensitive = <String>{};

/// Factory wrapper for `cloudflare_oauth_client`.
///
/// Accepted Permissions
///
/// - `OAuth Client Read`
final class DataCloudflareOauthClient extends Data {
  static const String tfType = 'cloudflare_oauth_client';

  DataCloudflareOauthClient({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> oauthClientId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'oauth_client_id': oauthClientId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOauthClientSensitive;

  /// Reference to `allowed_cors_origins` attribute.
  TfRef<List<String>> get allowedCorsOrigins =>
      TfRef.attribute<List<String>>(this, 'allowed_cors_origins');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_name` attribute.
  TfRef<String> get clientName => TfRef.attribute<String>(this, 'client_name');

  /// Reference to `client_uri` attribute.
  TfRef<String> get clientUri => TfRef.attribute<String>(this, 'client_uri');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `grant_types` attribute.
  TfRef<List<String>> get grantTypes =>
      TfRef.attribute<List<String>>(this, 'grant_types');

  /// Reference to `has_rotated_secret` attribute.
  TfRef<bool> get hasRotatedSecret =>
      TfRef.attribute<bool>(this, 'has_rotated_secret');

  /// Reference to `logo_uri` attribute.
  TfRef<String> get logoUri => TfRef.attribute<String>(this, 'logo_uri');

  /// Reference to `policy_uri` attribute.
  TfRef<String> get policyUri => TfRef.attribute<String>(this, 'policy_uri');

  /// Reference to `post_logout_redirect_uris` attribute.
  TfRef<List<String>> get postLogoutRedirectUris =>
      TfRef.attribute<List<String>>(this, 'post_logout_redirect_uris');

  /// Reference to `promoted_at` attribute.
  TfRef<String> get promotedAt => TfRef.attribute<String>(this, 'promoted_at');

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

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibility => TfRef.attribute<String>(this, 'visibility');
}
