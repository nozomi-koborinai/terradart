// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_capacity_block_reservation`.
const Set<String> _awsEc2CapacityBlockReservationSensitive = <String>{};

/// Factory wrapper for `aws_ec2_capacity_block_reservation`.
final class AwsEc2CapacityBlockReservation extends Resource {
  static const String tfType = 'aws_ec2_capacity_block_reservation';

  AwsEc2CapacityBlockReservation({
    required super.localName,
    required TfArg<String> capacityBlockOfferingId,
    required TfArg<String> instancePlatform,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity_block_offering_id': capacityBlockOfferingId,
           'instance_platform': instancePlatform,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `ebs_optimized` attribute.
  TfRef<bool> get ebsOptimized => TfRef.attribute<bool>(this, 'ebs_optimized');

  /// Reference to `end_date` attribute.
  TfRef<String> get endDate => TfRef.attribute<String>(this, 'end_date');

  /// Reference to `end_date_type` attribute.
  TfRef<String> get endDateType =>
      TfRef.attribute<String>(this, 'end_date_type');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `placement_group_arn` attribute.
  TfRef<String> get placementGroupArn =>
      TfRef.attribute<String>(this, 'placement_group_arn');

  /// Reference to `reservation_type` attribute.
  TfRef<String> get reservationType =>
      TfRef.attribute<String>(this, 'reservation_type');

  /// Reference to `start_date` attribute.
  TfRef<String> get startDate => TfRef.attribute<String>(this, 'start_date');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `tenancy` attribute.
  TfRef<String> get tenancy => TfRef.attribute<String>(this, 'tenancy');
}
