// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dns/cloudflare_dns_zone_transfers_acl.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> aclId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId?.encodeAs('id'), 'acl_id': aclId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersAclSensitive;

  /// A reference to the `cloudflare_dns_zone_transfers_acl` this data source reads, for
  /// arguments typed `RefTo<CloudflareDnsZoneTransfersAcl>`.
  RefTo<CloudflareDnsZoneTransfersAcl> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_range` attribute.
  TfRef<String> get ipRange => TfRef.attribute<String>(this, 'ip_range');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `acl_id` attribute.
  TfRef<String> get aclIdRef => TfRef.attribute<String>(this, 'acl_id');
}
