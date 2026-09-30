// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zero_trust_access_groups`.
const Set<String> _cloudflareZeroTrustAccessGroupsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_groups`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class DataCloudflareZeroTrustAccessGroups extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_groups';

  DataCloudflareZeroTrustAccessGroups({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? search,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'name': ?name,
           'search': ?search,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessGroupsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `search` attribute.
  TfRef<String> get searchRef => TfRef.attribute<String>(this, 'search');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
