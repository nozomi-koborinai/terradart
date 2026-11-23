// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_basic_auth_credential`.
const Set<String> _cloudflareZeroTrustCwsBasicAuthCredentialSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_cws_basic_auth_credential`.
final class CloudflareZeroTrustCwsBasicAuthCredential extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_cws_basic_auth_credential';

  CloudflareZeroTrustCwsBasicAuthCredential(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId.encodeAs('id'), 'username': username},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsBasicAuthCredentialSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsBasicAuthCredential>`.
  RefTo<CloudflareZeroTrustCwsBasicAuthCredential> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
