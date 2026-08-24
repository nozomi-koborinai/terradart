// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_custom_domain`.
const Set<String> _cloudflareR2CustomDomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_custom_domain`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Read` - `Workers R2 Storage Write`
final class DataCloudflareR2CustomDomain extends Data {
  static const String tfType = 'cloudflare_r2_custom_domain';

  DataCloudflareR2CustomDomain({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    required TfArg<String> domain,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'bucket_name': bucketName,
           'domain': domain,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2CustomDomainSensitive;

  /// Reference to `ciphers` attribute.
  TfRef<List<String>> get ciphers =>
      TfRef.attribute<List<String>>(this, 'ciphers');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `min_tls` attribute.
  TfRef<String> get minTls => TfRef.attribute<String>(this, 'min_tls');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}
