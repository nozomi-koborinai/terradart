// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_lockdown`.
const Set<String> _cloudflareZoneLockdownSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zone_lockdown` (derived from provider schema).
@immutable
final class DataZoneLockdownFilter {
  const DataZoneLockdownFilter({
    this.createdOn,
    this.description,
    this.descriptionSearch,
    this.ip,
    this.ipRangeSearch,
    this.ipSearch,
    this.modifiedOn,
    this.priority,
    this.uriSearch,
  });

  final TfArg<String>? createdOn;

  final TfArg<String>? description;

  final TfArg<String>? descriptionSearch;

  final TfArg<String>? ip;

  final TfArg<String>? ipRangeSearch;

  final TfArg<String>? ipSearch;

  final TfArg<String>? modifiedOn;

  final TfArg<num>? priority;

  final TfArg<String>? uriSearch;

  Map<String, Object?> encode() => {
    if (createdOn != null) 'created_on': createdOn!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (descriptionSearch != null)
      'description_search': descriptionSearch!.toTfJson(),
    if (ip != null) 'ip': ip!.toTfJson(),
    if (ipRangeSearch != null) 'ip_range_search': ipRangeSearch!.toTfJson(),
    if (ipSearch != null) 'ip_search': ipSearch!.toTfJson(),
    if (modifiedOn != null) 'modified_on': modifiedOn!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    if (uriSearch != null) 'uri_search': uriSearch!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zone_lockdown`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareZoneLockdown extends Data {
  static const String tfType = 'cloudflare_zone_lockdown';

  DataCloudflareZoneLockdown({
    required super.localName,
    TfArg<String>? lockDownsId,
    TfArg<String>? zoneId,
    DataZoneLockdownFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (lockDownsId != null) 'lock_downs_id': lockDownsId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneLockdownSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `urls` attribute.
  TfRef<List<String>> get urls => TfRef.attribute<List<String>>(this, 'urls');
}
