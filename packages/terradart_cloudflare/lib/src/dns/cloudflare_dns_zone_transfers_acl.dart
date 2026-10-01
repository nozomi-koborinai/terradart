// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_dns_zone_transfers_acl`.
const Set<String> _cloudflareDnsZoneTransfersAclSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_zone_transfers_acl`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write`
final class CloudflareDnsZoneTransfersAcl extends Resource {
  static const String tfType = 'cloudflare_dns_zone_transfers_acl';

  CloudflareDnsZoneTransfersAcl(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> ipRange,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'ip_range': ipRange,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareDnsZoneTransfersAcl>`.
  RefTo<CloudflareDnsZoneTransfersAcl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `ip_range` attribute.
  TfRef<String> get ipRange => TfRef.attribute<String>(this, 'ip_range');
}
