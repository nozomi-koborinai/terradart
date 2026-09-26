// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_availability_zones`.
const Set<String> _awsAvailabilityZonesSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_availability_zones` (derived from provider schema).
@immutable
final class DataAvailabilityZonesFilter {
  const DataAvailabilityZonesFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_availability_zones`.
final class DataAwsAvailabilityZones extends Data {
  static const String tfType = 'aws_availability_zones';

  DataAwsAvailabilityZones({
    required super.localName,
    TfArg<bool>? allAvailabilityZones,
    TfArg<List<String>>? excludeNames,
    TfArg<List<String>>? excludeZoneIds,
    TfArg<String>? region,
    TfArg<String>? state,
    List<DataAvailabilityZonesFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allAvailabilityZones != null)
             'all_availability_zones': allAvailabilityZones,
           if (excludeNames != null) 'exclude_names': excludeNames,
           if (excludeZoneIds != null) 'exclude_zone_ids': excludeZoneIds,
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAvailabilityZonesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group_names` attribute.
  TfRef<List<String>> get groupNames =>
      TfRef.attribute<List<String>>(this, 'group_names');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');

  /// Reference to `zone_ids` attribute.
  TfRef<List<String>> get zoneIds =>
      TfRef.attribute<List<String>>(this, 'zone_ids');
}
