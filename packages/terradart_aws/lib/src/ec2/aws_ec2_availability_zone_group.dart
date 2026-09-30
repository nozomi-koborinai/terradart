// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_availability_zone_group`.
const Set<String> _awsEc2AvailabilityZoneGroupSensitive = <String>{};

/// Ec2 Availability Zone Group Opt In enum for `opt_in_status`.
enum Ec2AvailabilityZoneGroupOptInStatus implements TerraformEnum {
  optedIn('opted-in'),
  notOptedIn('not-opted-in');

  const Ec2AvailabilityZoneGroupOptInStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_availability_zone_group`.
final class AwsEc2AvailabilityZoneGroup extends Resource {
  static const String tfType = 'aws_ec2_availability_zone_group';

  AwsEc2AvailabilityZoneGroup({
    required super.localName,
    required TfArg<String> groupName,
    required TfArg<Ec2AvailabilityZoneGroupOptInStatus> optInStatus,
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2AvailabilityZoneGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2AvailabilityZoneGroup>`.
  RefTo<AwsEc2AvailabilityZoneGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupNameRef => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `opt_in_status` attribute.
  TfRef<String> get optInStatusRef =>
      TfRef.attribute<String>(this, 'opt_in_status');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
