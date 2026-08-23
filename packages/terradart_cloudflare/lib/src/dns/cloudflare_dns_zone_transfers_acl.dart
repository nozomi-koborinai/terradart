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
final class CloudflareDnsZoneTransfersAcl extends Resource {
  static const String tfType = 'cloudflare_dns_zone_transfers_acl';

  CloudflareDnsZoneTransfersAcl({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> ipRange,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'ip_range': ipRange, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersAclSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
