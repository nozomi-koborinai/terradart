// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../r2/cloudflare_r2_custom_domain.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    required TfArg<String> domain,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bucket_name': bucketName,
           'domain': domain,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2CustomDomainSensitive;

  /// A reference to the `cloudflare_r2_custom_domain` this data source reads, for
  /// arguments typed `RefTo<CloudflareR2CustomDomain>`.
  RefTo<CloudflareR2CustomDomain> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
