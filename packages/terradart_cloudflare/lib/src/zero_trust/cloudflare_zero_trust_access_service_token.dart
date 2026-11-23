// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  CloudflareZeroTrustAccessServiceToken(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? clientSecretVersion,
    TfArg<String>? duration,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<String>? previousClientSecretExpiresAt,
    TfArg<Map<String, String>>? tags,
    RefTo<CloudflareZone>? zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'client_secret_version': ?clientSecretVersion,
           'duration': ?duration,
           'enabled': ?enabled,
           'name': name,
           'previous_client_secret_expires_at': ?previousClientSecretExpiresAt,
           'tags': ?tags,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessServiceTokenSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessServiceToken>`.
  RefTo<CloudflareZeroTrustAccessServiceToken> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `expires_at` attribute.
  TfRef<String> get expiresAt => TfRef.attribute<String>(this, 'expires_at');

  /// Reference to `leak_report_url` attribute.
  TfRef<String> get leakReportUrl =>
      TfRef.attribute<String>(this, 'leak_report_url');

  /// Reference to `leak_reported_at` attribute.
  TfRef<String> get leakReportedAt =>
      TfRef.attribute<String>(this, 'leak_reported_at');

  /// Reference to `leak_reporter` attribute.
  TfRef<String> get leakReporter =>
      TfRef.attribute<String>(this, 'leak_reporter');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `client_secret_version` attribute.
  TfRef<num> get clientSecretVersion =>
      TfRef.attribute<num>(this, 'client_secret_version');

  /// Reference to `duration` attribute.
  TfRef<String> get duration => TfRef.attribute<String>(this, 'duration');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `previous_client_secret_expires_at` attribute.
  TfRef<String> get previousClientSecretExpiresAt =>
      TfRef.attribute<String>(this, 'previous_client_secret_expires_at');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
