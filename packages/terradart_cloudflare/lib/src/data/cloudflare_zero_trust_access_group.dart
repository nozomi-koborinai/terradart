// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_group.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zero_trust_access_group`.
const Set<String> _cloudflareZeroTrustAccessGroupSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class DataZeroTrustAccessGroupFilter {
  const DataZeroTrustAccessGroupFilter({this.name, this.search});

  final TfArg<String>? name;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'search': ?search?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_group`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class DataCloudflareZeroTrustAccessGroup extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_group';

  DataCloudflareZeroTrustAccessGroup(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? groupId,
    RefTo<CloudflareZone>? zoneId,
    DataZeroTrustAccessGroupFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'group_id': ?groupId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessGroupSensitive;

  /// A reference to the `cloudflare_zero_trust_access_group` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessGroup>`.
  RefTo<CloudflareZeroTrustAccessGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
