// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_oauth_client`.
const Set<String> _cloudflareOauthClientSensitive = <String>{'client_secret'};

/// Factory wrapper for `cloudflare_oauth_client`.
///
/// Accepted Permissions
///
/// - `OAuth Client Read` - `OAuth Client Write`
final class CloudflareOauthClient extends Resource {
  static const String tfType = 'cloudflare_oauth_client';

  CloudflareOauthClient({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<List<String>>? allowedCorsOrigins,
    required TfArg<String> clientName,
    TfArg<String>? clientUri,
    required TfArg<List<String>> grantTypes,
    TfArg<String>? logoUri,
    TfArg<String>? oauthClientId,
    TfArg<String>? policyUri,
    TfArg<List<String>>? postLogoutRedirectUris,
    required TfArg<List<String>> redirectUris,
    required TfArg<List<String>> responseTypes,
    required TfArg<List<String>> scopes,
    required TfArg<String> tokenEndpointAuthMethod,
    TfArg<String>? tosUri,
    TfArg<String>? visibility,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (allowedCorsOrigins != null)
             'allowed_cors_origins': allowedCorsOrigins,
           'client_name': clientName,
           if (clientUri != null) 'client_uri': clientUri,
           'grant_types': grantTypes,
           if (logoUri != null) 'logo_uri': logoUri,
           if (oauthClientId != null) 'oauth_client_id': oauthClientId,
           if (policyUri != null) 'policy_uri': policyUri,
           if (postLogoutRedirectUris != null)
             'post_logout_redirect_uris': postLogoutRedirectUris,
           'redirect_uris': redirectUris,
           'response_types': responseTypes,
           'scopes': scopes,
           'token_endpoint_auth_method': tokenEndpointAuthMethod,
           if (tosUri != null) 'tos_uri': tosUri,
           if (visibility != null) 'visibility': visibility,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOauthClientSensitive;

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
}
