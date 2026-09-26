// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_availability_zone_group`.
const Set<String> _awsEc2AvailabilityZoneGroupSensitive = <String>{};

/// Factory wrapper for `aws_ec2_availability_zone_group`.
final class AwsEc2AvailabilityZoneGroup extends Resource {
  static const String tfType = 'aws_ec2_availability_zone_group';

  AwsEc2AvailabilityZoneGroup({
    required super.localName,
    required TfArg<String> groupName,
    required TfArg<String> optInStatus,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_name': groupName,
           'opt_in_status': optInStatus,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2AvailabilityZoneGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
