// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dns_zone_transfers_acl`.
const Set<String> _cloudflareDnsZoneTransfersAclSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_zone_transfers_acl`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write`
final class DataCloudflareDnsZoneTransfersAcl extends Data {
  static const String tfType = 'cloudflare_dns_zone_transfers_acl';

  DataCloudflareDnsZoneTransfersAcl({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> aclId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'acl_id': aclId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersAclSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_range` attribute.
  TfRef<String> get ipRange => TfRef.attribute<String>(this, 'ip_range');
}
