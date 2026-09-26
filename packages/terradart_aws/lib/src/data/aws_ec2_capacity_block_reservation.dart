// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_capacity_block_reservation`.
const Set<String> _awsEc2CapacityBlockReservationSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_capacity_block_reservation` (derived from provider schema).
@immutable
final class DataEc2CapacityBlockReservationFilter {
  const DataEc2CapacityBlockReservationFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_capacity_block_reservation`.
final class DataAwsEc2CapacityBlockReservation extends Data {
  static const String tfType = 'aws_ec2_capacity_block_reservation';

  DataAwsEc2CapacityBlockReservation({
    required super.localName,
    TfArg<String>? region,
    List<DataEc2CapacityBlockReservationFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2CapacityBlockReservationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `available_instance_count` attribute.
  TfRef<num> get availableInstanceCount =>
      TfRef.attribute<num>(this, 'available_instance_count');

  /// Reference to `capacity_block_id` attribute.
  TfRef<String> get capacityBlockId =>
      TfRef.attribute<String>(this, 'capacity_block_id');

  /// Reference to `commitment_info` attribute.
  TfRef<Map<String, Object?>> get commitmentInfo =>
      TfRef.attribute<Map<String, Object?>>(this, 'commitment_info');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `delivery_preference` attribute.
  TfRef<String> get deliveryPreference =>
      TfRef.attribute<String>(this, 'delivery_preference');

  /// Reference to `ebs_optimized` attribute.
  TfRef<bool> get ebsOptimized => TfRef.attribute<bool>(this, 'ebs_optimized');

  /// Reference to `end_date` attribute.
  TfRef<String> get endDate => TfRef.attribute<String>(this, 'end_date');

  /// Reference to `end_date_type` attribute.
  TfRef<String> get endDateType =>
      TfRef.attribute<String>(this, 'end_date_type');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `instance_match_criteria` attribute.
  TfRef<String> get instanceMatchCriteria =>
      TfRef.attribute<String>(this, 'instance_match_criteria');

  /// Reference to `instance_platform` attribute.
  TfRef<String> get instancePlatform =>
      TfRef.attribute<String>(this, 'instance_platform');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `interruptible_capacity_allocation` attribute.
  TfRef<Map<String, Object?>> get interruptibleCapacityAllocation =>
      TfRef.attribute<Map<String, Object?>>(
        this,
        'interruptible_capacity_allocation',
      );

  /// Reference to `interruption_info` attribute.
  TfRef<Map<String, Object?>> get interruptionInfo =>
      TfRef.attribute<Map<String, Object?>>(this, 'interruption_info');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `placement_group_arn` attribute.
  TfRef<String> get placementGroupArn =>
      TfRef.attribute<String>(this, 'placement_group_arn');

  /// Reference to `reservation_type` attribute.
  TfRef<String> get reservationType =>
      TfRef.attribute<String>(this, 'reservation_type');

  /// Reference to `start_date` attribute.
  TfRef<String> get startDate => TfRef.attribute<String>(this, 'start_date');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenancy` attribute.
  TfRef<String> get tenancy => TfRef.attribute<String>(this, 'tenancy');
}
