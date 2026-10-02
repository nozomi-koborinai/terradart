// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone_lockdown.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  @internal
  Map<String, Object?> encode() => {
    'created_on': ?createdOn?.toTfJson(),
    'description': ?description?.toTfJson(),
    'description_search': ?descriptionSearch?.toTfJson(),
    'ip': ?ip?.toTfJson(),
    'ip_range_search': ?ipRangeSearch?.toTfJson(),
    'ip_search': ?ipSearch?.toTfJson(),
    'modified_on': ?modifiedOn?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'uri_search': ?uriSearch?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zone_lockdown`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareZoneLockdown extends Data {
  static const String tfType = 'cloudflare_zone_lockdown';

  DataCloudflareZoneLockdown(
    super.localName, {
    TfArg<String>? lockDownsId,
    RefTo<CloudflareZone>? zoneId,
    DataZoneLockdownFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'lock_downs_id': ?lockDownsId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneLockdownSensitive;

  /// A reference to the `cloudflare_zone_lockdown` this data source reads, for
  /// arguments typed `RefTo<CloudflareZoneLockdown>`.
  RefTo<CloudflareZoneLockdown> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `lock_downs_id` attribute.
  TfRef<String> get lockDownsId =>
      TfRef.attribute<String>(this, 'lock_downs_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
