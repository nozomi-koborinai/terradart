// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_basic_auth_secret`.
const Set<String> _cloudflareZeroTrustCwsBasicAuthSecretSensitive = <String>{
  'password',
};

/// Factory wrapper for `cloudflare_zero_trust_cws_basic_auth_secret`.
final class CloudflareZeroTrustCwsBasicAuthSecret extends Resource {
  static const String tfType = 'cloudflare_zero_trust_cws_basic_auth_secret';

  CloudflareZeroTrustCwsBasicAuthSecret(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> credentialId,
    TfArg<String>? expiresAt,
    Sensitive<String>? password,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'credential_id': credentialId,
           'expires_at': ?expiresAt,
           'password': ?password,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsBasicAuthSecretSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsBasicAuthSecret>`.
  RefTo<CloudflareZeroTrustCwsBasicAuthSecret> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `credential_id` attribute.
  TfRef<String> get credentialId =>
      TfRef.attribute<String>(this, 'credential_id');

  /// Reference to `expires_at` attribute.
  TfRef<String> get expiresAt => TfRef.attribute<String>(this, 'expires_at');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');
}
