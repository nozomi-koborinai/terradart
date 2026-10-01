// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_capacity_reservation`.
const Set<String> _awsEc2CapacityReservationSensitive = <String>{};

/// Ec2 Capacity Reservation End Date enum for `end_date_type`.
extension type const Ec2CapacityReservationEndDateType._(TfArg<String> _)
    implements TfArg<String> {
  Ec2CapacityReservationEndDateType.variable(String name)
    : this._(TfArg.variable(name));
  Ec2CapacityReservationEndDateType.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2CapacityReservationEndDateType.arg(TfArg<String> arg) : this._(arg);

  static const unlimited = Ec2CapacityReservationEndDateType._(
    TfArgLiteral('unlimited'),
  );
  static const limited = Ec2CapacityReservationEndDateType._(
    TfArgLiteral('limited'),
  );

  static const List<Ec2CapacityReservationEndDateType> values = [
    unlimited,
    limited,
  ];
}

/// Ec2 Capacity Reservation Instance Match enum for `instance_match_criteria`.
extension type const Ec2CapacityReservationInstanceMatchCriteria._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2CapacityReservationInstanceMatchCriteria.variable(String name)
    : this._(TfArg.variable(name));
  Ec2CapacityReservationInstanceMatchCriteria.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2CapacityReservationInstanceMatchCriteria.arg(TfArg<String> arg)
    : this._(arg);

  static const open = Ec2CapacityReservationInstanceMatchCriteria._(
    TfArgLiteral('open'),
  );
  static const targeted = Ec2CapacityReservationInstanceMatchCriteria._(
    TfArgLiteral('targeted'),
  );

  static const List<Ec2CapacityReservationInstanceMatchCriteria> values = [
    open,
    targeted,
  ];
}

/// Ec2 Capacity Reservation Instance enum for `instance_platform`.
extension type const Ec2CapacityReservationInstancePlatform._(TfArg<String> _)
    implements TfArg<String> {
  Ec2CapacityReservationInstancePlatform.variable(String name)
    : this._(TfArg.variable(name));
  Ec2CapacityReservationInstancePlatform.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2CapacityReservationInstancePlatform.arg(TfArg<String> arg)
    : this._(arg);

  static const linuxUnix = Ec2CapacityReservationInstancePlatform._(
    TfArgLiteral('Linux/UNIX'),
  );
  static const redHatEnterpriseLinux = Ec2CapacityReservationInstancePlatform._(
    TfArgLiteral('Red Hat Enterprise Linux'),
  );
  static const suseLinux = Ec2CapacityReservationInstancePlatform._(
    TfArgLiteral('SUSE Linux'),
  );
  static const windows = Ec2CapacityReservationInstancePlatform._(
    TfArgLiteral('Windows'),
  );
  static const windowsWithSqlServer = Ec2CapacityReservationInstancePlatform._(
    TfArgLiteral('Windows with SQL Server'),
  );
  static const windowsWithSqlServerEnterprise =
      Ec2CapacityReservationInstancePlatform._(
        TfArgLiteral('Windows with SQL Server Enterprise'),
      );
  static const windowsWithSqlServerStandard =
      Ec2CapacityReservationInstancePlatform._(
        TfArgLiteral('Windows with SQL Server Standard'),
      );
  static const windowsWithSqlServerWeb =
      Ec2CapacityReservationInstancePlatform._(
        TfArgLiteral('Windows with SQL Server Web'),
      );
  static const linuxWithSqlServerStandard =
      Ec2CapacityReservationInstancePlatform._(
        TfArgLiteral('Linux with SQL Server Standard'),
      );
  static const linuxWithSqlServerWeb = Ec2CapacityReservationInstancePlatform._(
    TfArgLiteral('Linux with SQL Server Web'),
  );
  static const linuxWithSqlServerEnterprise =
      Ec2CapacityReservationInstancePlatform._(
        TfArgLiteral('Linux with SQL Server Enterprise'),
      );
  static const rhelWithSqlServerStandard =
      Ec2CapacityReservationInstancePlatform._(
        TfArgLiteral('RHEL with SQL Server Standard'),
      );
  static const rhelWithSqlServerEnterprise =
      Ec2CapacityReservationInstancePlatform._(
        TfArgLiteral('RHEL with SQL Server Enterprise'),
      );
  static const rhelWithSqlServerWeb = Ec2CapacityReservationInstancePlatform._(
    TfArgLiteral('RHEL with SQL Server Web'),
  );
  static const rhelWithHa = Ec2CapacityReservationInstancePlatform._(
    TfArgLiteral('RHEL with HA'),
  );
  static const rhelWithHaAndSqlServerStandard =
      Ec2CapacityReservationInstancePlatform._(
        TfArgLiteral('RHEL with HA and SQL Server Standard'),
      );
  static const rhelWithHaAndSqlServerEnterprise =
      Ec2CapacityReservationInstancePlatform._(
        TfArgLiteral('RHEL with HA and SQL Server Enterprise'),
      );
  static const ubuntuPro = Ec2CapacityReservationInstancePlatform._(
    TfArgLiteral('Ubuntu Pro'),
  );

  static const List<Ec2CapacityReservationInstancePlatform> values = [
    linuxUnix,
    redHatEnterpriseLinux,
    suseLinux,
    windows,
    windowsWithSqlServer,
    windowsWithSqlServerEnterprise,
    windowsWithSqlServerStandard,
    windowsWithSqlServerWeb,
    linuxWithSqlServerStandard,
    linuxWithSqlServerWeb,
    linuxWithSqlServerEnterprise,
    rhelWithSqlServerStandard,
    rhelWithSqlServerEnterprise,
    rhelWithSqlServerWeb,
    rhelWithHa,
    rhelWithHaAndSqlServerStandard,
    rhelWithHaAndSqlServerEnterprise,
    ubuntuPro,
  ];
}

/// Ec2 Capacity Reservation enum for `tenancy`.
extension type const Ec2CapacityReservationTenancy._(TfArg<String> _)
    implements TfArg<String> {
  Ec2CapacityReservationTenancy.variable(String name)
    : this._(TfArg.variable(name));
  Ec2CapacityReservationTenancy.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2CapacityReservationTenancy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = Ec2CapacityReservationTenancy._(
    TfArgLiteral('default'),
  );
  static const dedicated = Ec2CapacityReservationTenancy._(
    TfArgLiteral('dedicated'),
  );

  static const List<Ec2CapacityReservationTenancy> values = [
    defaultCase,
    dedicated,
  ];
}

/// Factory wrapper for `aws_ec2_capacity_reservation`.
final class AwsEc2CapacityReservation extends Resource {
  static const String tfType = 'aws_ec2_capacity_reservation';

  AwsEc2CapacityReservation(
    super.localName, {
    required TfArg<String> availabilityZone,
    TfArg<bool>? ebsOptimized,
    TfArg<String>? endDate,
    Ec2CapacityReservationEndDateType? endDateType,
    TfArg<bool>? ephemeralStorage,
    required TfArg<num> instanceCount,
    Ec2CapacityReservationInstanceMatchCriteria? instanceMatchCriteria,
    required Ec2CapacityReservationInstancePlatform instancePlatform,
    required TfArg<String> instanceType,
    TfArg<String>? outpostArn,
    TfArg<String>? placementGroupArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    Ec2CapacityReservationTenancy? tenancy,
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
