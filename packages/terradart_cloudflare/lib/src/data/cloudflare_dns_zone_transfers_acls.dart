// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_dns_zone_transfers_acls`.
const Set<String> _cloudflareDnsZoneTransfersAclsSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_zone_transfers_acls`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write`
final class DataCloudflareDnsZoneTransfersAcls extends Data {
  static const String tfType = 'cloudflare_dns_zone_transfers_acls';

  DataCloudflareDnsZoneTransfersAcls(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersAclsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');
}
