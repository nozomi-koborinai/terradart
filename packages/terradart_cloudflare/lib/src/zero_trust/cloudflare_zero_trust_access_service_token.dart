// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_service_token`.
const Set<String> _cloudflareZeroTrustAccessServiceTokenSensitive = <String>{
  'client_secret',
};

/// Factory wrapper for `cloudflare_zero_trust_access_service_token`.
///
/// Accepted Permissions
///
/// - `Access: Service Tokens Read` - `Access: Service Tokens Write`
final class CloudflareZeroTrustAccessServiceToken extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_service_token';

  CloudflareZeroTrustAccessServiceToken({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? clientSecretVersion,
    TfArg<String>? duration,
    required TfArg<String> name,
    TfArg<String>? previousClientSecretExpiresAt,
    TfArg<String>? zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (clientSecretVersion != null)
             'client_secret_version': clientSecretVersion,
           if (duration != null) 'duration': duration,
           'name': name,
           if (previousClientSecretExpiresAt != null)
             'previous_client_secret_expires_at': previousClientSecretExpiresAt,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessServiceTokenSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `expires_at` attribute.
  TfRef<String> get expiresAt => TfRef.attribute<String>(this, 'expires_at');
}
