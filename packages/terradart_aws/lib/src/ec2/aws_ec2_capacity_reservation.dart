// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_capacity_reservation`.
const Set<String> _awsEc2CapacityReservationSensitive = <String>{};

/// Factory wrapper for `aws_ec2_capacity_reservation`.
final class AwsEc2CapacityReservation extends Resource {
  static const String tfType = 'aws_ec2_capacity_reservation';

  AwsEc2CapacityReservation({
    required super.localName,
    required TfArg<String> availabilityZone,
    TfArg<bool>? ebsOptimized,
    TfArg<String>? endDate,
    TfArg<String>? endDateType,
    TfArg<bool>? ephemeralStorage,
    required TfArg<num> instanceCount,
    TfArg<String>? instanceMatchCriteria,
    required TfArg<String> instancePlatform,
    required TfArg<String> instanceType,
    TfArg<String>? outpostArn,
    TfArg<String>? placementGroupArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tenancy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': availabilityZone,
           if (ebsOptimized != null) 'ebs_optimized': ebsOptimized,
           if (endDate != null) 'end_date': endDate,
           if (endDateType != null) 'end_date_type': endDateType,
           if (ephemeralStorage != null) 'ephemeral_storage': ephemeralStorage,
           'instance_count': instanceCount,
           if (instanceMatchCriteria != null)
             'instance_match_criteria': instanceMatchCriteria,
           'instance_platform': instancePlatform,
           'instance_type': instanceType,
           if (outpostArn != null) 'outpost_arn': outpostArn,
           if (placementGroupArn != null)
             'placement_group_arn': placementGroupArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (tenancy != null) 'tenancy': tenancy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2CapacityReservationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
