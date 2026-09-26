// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_availability_zone`.
const Set<String> _awsAvailabilityZoneSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_availability_zone` (derived from provider schema).
@immutable
final class DataAvailabilityZoneFilter {
  const DataAvailabilityZoneFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_availability_zone`.
final class DataAwsAvailabilityZone extends Data {
  static const String tfType = 'aws_availability_zone';

  DataAwsAvailabilityZone({
    required super.localName,
    TfArg<bool>? allAvailabilityZones,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? state,
    TfArg<String>? zoneId,
    List<DataAvailabilityZoneFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allAvailabilityZones != null)
             'all_availability_zones': allAvailabilityZones,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAvailabilityZoneSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group_long_name` attribute.
  TfRef<String> get groupLongName =>
      TfRef.attribute<String>(this, 'group_long_name');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupName => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `name_suffix` attribute.
  TfRef<String> get nameSuffix => TfRef.attribute<String>(this, 'name_suffix');

  /// Reference to `network_border_group` attribute.
  TfRef<String> get networkBorderGroup =>
      TfRef.attribute<String>(this, 'network_border_group');

  /// Reference to `opt_in_status` attribute.
  TfRef<String> get optInStatus =>
      TfRef.attribute<String>(this, 'opt_in_status');

  /// Reference to `parent_zone_id` attribute.
  TfRef<String> get parentZoneId =>
      TfRef.attribute<String>(this, 'parent_zone_id');

  /// Reference to `parent_zone_name` attribute.
  TfRef<String> get parentZoneName =>
      TfRef.attribute<String>(this, 'parent_zone_name');

  /// Reference to `zone_type` attribute.
  TfRef<String> get zoneType => TfRef.attribute<String>(this, 'zone_type');
}
