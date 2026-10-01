// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_capacity_block_reservation`.
const Set<String> _awsEc2CapacityBlockReservationSensitive = <String>{};

/// Ec2 Capacity Block Reservation Instance enum for `instance_platform`.
extension type const Ec2CapacityBlockReservationInstancePlatform._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2CapacityBlockReservationInstancePlatform.variable(String name)
    : this._(TfArg.variable(name));
  Ec2CapacityBlockReservationInstancePlatform.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2CapacityBlockReservationInstancePlatform.arg(TfArg<String> arg)
    : this._(arg);

  static const linuxUnix = Ec2CapacityBlockReservationInstancePlatform._(
    TfArgLiteral('Linux/UNIX'),
  );
  static const redHatEnterpriseLinux =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('Red Hat Enterprise Linux'),
      );
  static const suseLinux = Ec2CapacityBlockReservationInstancePlatform._(
    TfArgLiteral('SUSE Linux'),
  );
  static const windows = Ec2CapacityBlockReservationInstancePlatform._(
    TfArgLiteral('Windows'),
  );
  static const windowsWithSqlServer =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('Windows with SQL Server'),
      );
  static const windowsWithSqlServerEnterprise =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('Windows with SQL Server Enterprise'),
      );
  static const windowsWithSqlServerStandard =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('Windows with SQL Server Standard'),
      );
  static const windowsWithSqlServerWeb =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('Windows with SQL Server Web'),
      );
  static const linuxWithSqlServerStandard =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('Linux with SQL Server Standard'),
      );
  static const linuxWithSqlServerWeb =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('Linux with SQL Server Web'),
      );
  static const linuxWithSqlServerEnterprise =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('Linux with SQL Server Enterprise'),
      );
  static const rhelWithSqlServerStandard =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('RHEL with SQL Server Standard'),
      );
  static const rhelWithSqlServerEnterprise =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('RHEL with SQL Server Enterprise'),
      );
  static const rhelWithSqlServerWeb =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('RHEL with SQL Server Web'),
      );
  static const rhelWithHa = Ec2CapacityBlockReservationInstancePlatform._(
    TfArgLiteral('RHEL with HA'),
  );
  static const rhelWithHaAndSqlServerStandard =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('RHEL with HA and SQL Server Standard'),
      );
  static const rhelWithHaAndSqlServerEnterprise =
      Ec2CapacityBlockReservationInstancePlatform._(
        TfArgLiteral('RHEL with HA and SQL Server Enterprise'),
      );
  static const ubuntuPro = Ec2CapacityBlockReservationInstancePlatform._(
    TfArgLiteral('Ubuntu Pro'),
  );

  static const List<Ec2CapacityBlockReservationInstancePlatform> values = [
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

/// Factory wrapper for `aws_ec2_capacity_block_reservation`.
final class AwsEc2CapacityBlockReservation extends Resource {
  static const String tfType = 'aws_ec2_capacity_block_reservation';

  AwsEc2CapacityBlockReservation(
    super.localName, {
    required TfArg<String> capacityBlockOfferingId,
    required Ec2CapacityBlockReservationInstancePlatform instancePlatform,
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
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2CapacityBlockReservationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2CapacityBlockReservation>`.
  RefTo<AwsEc2CapacityBlockReservation> get ref => RefTo.of(this);

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

  /// Reference to `capacity_block_offering_id` attribute.
  TfRef<String> get capacityBlockOfferingId =>
      TfRef.attribute<String>(this, 'capacity_block_offering_id');

  /// Reference to `instance_platform` attribute.
  TfRef<String> get instancePlatform =>
      TfRef.attribute<String>(this, 'instance_platform');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
