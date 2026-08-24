// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (name != null) 'name': name!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
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

  DataCloudflareZeroTrustAccessGroup({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? groupId,
    TfArg<String>? zoneId,
    DataZeroTrustAccessGroupFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (groupId != null) 'group_id': groupId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
