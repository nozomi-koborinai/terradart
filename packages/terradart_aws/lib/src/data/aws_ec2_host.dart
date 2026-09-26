// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_host`.
const Set<String> _awsEc2HostSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_host` (derived from provider schema).
@immutable
final class DataEc2HostFilter {
  const DataEc2HostFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_host`.
final class DataAwsEc2Host extends Data {
  static const String tfType = 'aws_ec2_host';

  DataAwsEc2Host({
    required super.localName,
    TfArg<String>? hostId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2HostFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (hostId != null) 'host_id': hostId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2HostSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocation_time` attribute.
  TfRef<String> get allocationTime =>
      TfRef.attribute<String>(this, 'allocation_time');

  /// Reference to `allows_multiple_instance_types` attribute.
  TfRef<String> get allowsMultipleInstanceTypes =>
      TfRef.attribute<String>(this, 'allows_multiple_instance_types');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `asset_id` attribute.
  TfRef<String> get assetId => TfRef.attribute<String>(this, 'asset_id');

  /// Reference to `auto_placement` attribute.
  TfRef<String> get autoPlacement =>
      TfRef.attribute<String>(this, 'auto_placement');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `available_capacity` attribute.
  TfRef<List<Map<String, Object?>>> get availableCapacity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'available_capacity');

  /// Reference to `cores` attribute.
  TfRef<num> get cores => TfRef.attribute<num>(this, 'cores');

  /// Reference to `host_maintenance` attribute.
  TfRef<String> get hostMaintenance =>
      TfRef.attribute<String>(this, 'host_maintenance');

  /// Reference to `host_recovery` attribute.
  TfRef<String> get hostRecovery =>
      TfRef.attribute<String>(this, 'host_recovery');

  /// Reference to `host_reservation_id` attribute.
  TfRef<String> get hostReservationId =>
      TfRef.attribute<String>(this, 'host_reservation_id');

  /// Reference to `instance_family` attribute.
  TfRef<String> get instanceFamily =>
      TfRef.attribute<String>(this, 'instance_family');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `instances` attribute.
  TfRef<List<Map<String, Object?>>> get instances =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instances');

  /// Reference to `member_of_service_linked_resource_group` attribute.
  TfRef<bool> get memberOfServiceLinkedResourceGroup =>
      TfRef.attribute<bool>(this, 'member_of_service_linked_resource_group');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `release_time` attribute.
  TfRef<String> get releaseTime =>
      TfRef.attribute<String>(this, 'release_time');

  /// Reference to `sockets` attribute.
  TfRef<num> get sockets => TfRef.attribute<num>(this, 'sockets');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `total_vcpus` attribute.
  TfRef<num> get totalVcpus => TfRef.attribute<num>(this, 'total_vcpus');
}
