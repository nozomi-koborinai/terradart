// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_capacity_reservation`.
const Set<String> _awsEc2CapacityReservationSensitive = <String>{};

/// Ec2 Capacity Reservation End Date enum for `end_date_type`.
enum Ec2CapacityReservationEndDateType implements TerraformEnum {
  unlimited('unlimited'),
  limited('limited');

  const Ec2CapacityReservationEndDateType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Capacity Reservation Instance Match enum for `instance_match_criteria`.
enum Ec2CapacityReservationInstanceMatchCriteria implements TerraformEnum {
  open('open'),
  targeted('targeted');

  const Ec2CapacityReservationInstanceMatchCriteria(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Capacity Reservation Instance enum for `instance_platform`.
enum Ec2CapacityReservationInstancePlatform implements TerraformEnum {
  linuxUnix('Linux/UNIX'),
  redHatEnterpriseLinux('Red Hat Enterprise Linux'),
  suseLinux('SUSE Linux'),
  windows('Windows'),
  windowsWithSqlServer('Windows with SQL Server'),
  windowsWithSqlServerEnterprise('Windows with SQL Server Enterprise'),
  windowsWithSqlServerStandard('Windows with SQL Server Standard'),
  windowsWithSqlServerWeb('Windows with SQL Server Web'),
  linuxWithSqlServerStandard('Linux with SQL Server Standard'),
  linuxWithSqlServerWeb('Linux with SQL Server Web'),
  linuxWithSqlServerEnterprise('Linux with SQL Server Enterprise'),
  rhelWithSqlServerStandard('RHEL with SQL Server Standard'),
  rhelWithSqlServerEnterprise('RHEL with SQL Server Enterprise'),
  rhelWithSqlServerWeb('RHEL with SQL Server Web'),
  rhelWithHa('RHEL with HA'),
  rhelWithHaAndSqlServerStandard('RHEL with HA and SQL Server Standard'),
  rhelWithHaAndSqlServerEnterprise('RHEL with HA and SQL Server Enterprise'),
  ubuntuPro('Ubuntu Pro');

  const Ec2CapacityReservationInstancePlatform(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Capacity Reservation enum for `tenancy`.
enum Ec2CapacityReservationTenancy implements TerraformEnum {
  defaultCase('default'),
  dedicated('dedicated');

  const Ec2CapacityReservationTenancy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_capacity_reservation`.
final class AwsEc2CapacityReservation extends Resource {
  static const String tfType = 'aws_ec2_capacity_reservation';

  AwsEc2CapacityReservation(
    super.localName, {
    required TfArg<String> availabilityZone,
    TfArg<bool>? ebsOptimized,
    TfArg<String>? endDate,
    TfArg<Ec2CapacityReservationEndDateType>? endDateType,
    TfArg<bool>? ephemeralStorage,
    required TfArg<num> instanceCount,
    TfArg<Ec2CapacityReservationInstanceMatchCriteria>? instanceMatchCriteria,
    required TfArg<Ec2CapacityReservationInstancePlatform> instancePlatform,
    required TfArg<String> instanceType,
    TfArg<String>? outpostArn,
    TfArg<String>? placementGroupArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<Ec2CapacityReservationTenancy>? tenancy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': availabilityZone,
           'ebs_optimized': ?ebsOptimized,
           'end_date': ?endDate,
           'end_date_type': ?endDateType,
           'ephemeral_storage': ?ephemeralStorage,
           'instance_count': instanceCount,
           'instance_match_criteria': ?instanceMatchCriteria,
           'instance_platform': instancePlatform,
           'instance_type': instanceType,
           'outpost_arn': ?outpostArn,
           'placement_group_arn': ?placementGroupArn,
           'region': ?region,
           'tags': ?tags,
           'tenancy': ?tenancy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2CapacityReservationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2CapacityReservation>`.
  RefTo<AwsEc2CapacityReservation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `ebs_optimized` attribute.
  TfRef<bool> get ebsOptimized => TfRef.attribute<bool>(this, 'ebs_optimized');

  /// Reference to `end_date` attribute.
  TfRef<String> get endDate => TfRef.attribute<String>(this, 'end_date');

  /// Reference to `end_date_type` attribute.
  TfRef<String> get endDateType =>
      TfRef.attribute<String>(this, 'end_date_type');

  /// Reference to `ephemeral_storage` attribute.
  TfRef<bool> get ephemeralStorage =>
      TfRef.attribute<bool>(this, 'ephemeral_storage');

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

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `placement_group_arn` attribute.
  TfRef<String> get placementGroupArn =>
      TfRef.attribute<String>(this, 'placement_group_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenancy` attribute.
  TfRef<String> get tenancy => TfRef.attribute<String>(this, 'tenancy');
}
