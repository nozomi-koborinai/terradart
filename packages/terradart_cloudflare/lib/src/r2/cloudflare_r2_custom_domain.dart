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
final class CloudflareR2CustomDomain extends Resource {
  static const String tfType = 'cloudflare_r2_custom_domain';

  CloudflareR2CustomDomain({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    TfArg<List<String>>? ciphers,
    required TfArg<String> domain,
    required TfArg<bool> enabled,
    TfArg<String>? jurisdiction,
    TfArg<String>? minTls,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'bucket_name': bucketName,
           if (ciphers != null) 'ciphers': ciphers,
           'domain': domain,
           'enabled': enabled,
           if (jurisdiction != null) 'jurisdiction': jurisdiction,
           if (minTls != null) 'min_tls': minTls,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2CustomDomainSensitive;

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}
