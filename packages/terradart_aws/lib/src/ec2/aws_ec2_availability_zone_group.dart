// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_availability_zone_group`.
const Set<String> _awsEc2AvailabilityZoneGroupSensitive = <String>{};

/// Ec2 Availability Zone Group Opt In enum for `opt_in_status`.
extension type const Ec2AvailabilityZoneGroupOptInStatus._(TfArg<String> _)
    implements TfArg<String> {
  Ec2AvailabilityZoneGroupOptInStatus.variable(String name)
    : this._(TfArg.variable(name));
  Ec2AvailabilityZoneGroupOptInStatus.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2AvailabilityZoneGroupOptInStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const optedIn = Ec2AvailabilityZoneGroupOptInStatus._(
    TfArgLiteral('opted-in'),
  );
  static const notOptedIn = Ec2AvailabilityZoneGroupOptInStatus._(
    TfArgLiteral('not-opted-in'),
  );

  static const List<Ec2AvailabilityZoneGroupOptInStatus> values = [
    optedIn,
    notOptedIn,
  ];
}

/// Factory wrapper for `aws_ec2_availability_zone_group`.
final class AwsEc2AvailabilityZoneGroup extends Resource {
  static const String tfType = 'aws_ec2_availability_zone_group';

  AwsEc2AvailabilityZoneGroup(
    super.localName, {
    required TfArg<String> groupName,
    required Ec2AvailabilityZoneGroupOptInStatus optInStatus,
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
  TfRef<String> get groupName => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `opt_in_status` attribute.
  TfRef<String> get optInStatus =>
      TfRef.attribute<String>(this, 'opt_in_status');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
