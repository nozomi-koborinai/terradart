// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_timestreaminfluxdb_db_cluster`.
const Set<String> _awsTimestreaminfluxdbDbClusterSensitive = <String>{
  'password',
};

/// Timestreaminfluxdb Db Cluster Db Instance enum for `db_instance_type`.
enum TimestreaminfluxdbDbClusterDbInstanceType implements TerraformEnum {
  dbInfluxMedium('db.influx.medium'),
  dbInfluxLarge('db.influx.large'),
  dbInfluxXlarge('db.influx.xlarge'),
  dbInflux2xlarge('db.influx.2xlarge'),
  dbInflux4xlarge('db.influx.4xlarge'),
  dbInflux8xlarge('db.influx.8xlarge'),
  dbInflux12xlarge('db.influx.12xlarge'),
  dbInflux16xlarge('db.influx.16xlarge'),
  dbInflux24xlarge('db.influx.24xlarge');

  const TimestreaminfluxdbDbClusterDbInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Timestreaminfluxdb Db Cluster Db Storage enum for `db_storage_type`.
enum TimestreaminfluxdbDbClusterDbStorageType implements TerraformEnum {
  influxioincludedt1('InfluxIOIncludedT1'),
  influxioincludedt2('InfluxIOIncludedT2'),
  influxioincludedt3('InfluxIOIncludedT3');

  const TimestreaminfluxdbDbClusterDbStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Timestreaminfluxdb Db Cluster Deployment enum for `deployment_type`.
enum TimestreaminfluxdbDbClusterDeploymentType implements TerraformEnum {
  multiNodeReadReplicas('MULTI_NODE_READ_REPLICAS');

  const TimestreaminfluxdbDbClusterDeploymentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Timestreaminfluxdb Db Cluster Failover enum for `failover_mode`.
enum TimestreaminfluxdbDbClusterFailoverMode implements TerraformEnum {
  automatic('AUTOMATIC'),
  noFailover('NO_FAILOVER');

  const TimestreaminfluxdbDbClusterFailoverMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Timestreaminfluxdb Db Cluster Network enum for `network_type`.
enum TimestreaminfluxdbDbClusterNetworkType implements TerraformEnum {
  ipv4('IPV4'),
  dual('DUAL');

  const TimestreaminfluxdbDbClusterNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `log_delivery_configuration` block of
/// `aws_timestreaminfluxdb_db_cluster` (derived from provider schema).
@immutable
final class TimestreaminfluxdbDbClusterLogDeliveryConfiguration {
  const TimestreaminfluxdbDbClusterLogDeliveryConfiguration({
    this.s3Configuration,
  });

  final List<TimestreaminfluxdbDbClusterS3Configuration>? s3Configuration;

  Map<String, Object?> encode() => {
    if (s3Configuration != null)
      's3_configuration': [for (final e in s3Configuration!) e.encode()],
  };
}

/// Typed helper for the `log_delivery_configuration.s3_configuration` block of
/// `aws_timestreaminfluxdb_db_cluster` (derived from provider schema).
@immutable
final class TimestreaminfluxdbDbClusterS3Configuration {
  const TimestreaminfluxdbDbClusterS3Configuration({
    required this.bucketName,
    required this.enabled,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `maintenance_schedule` block of
/// `aws_timestreaminfluxdb_db_cluster` (derived from provider schema).
@immutable
final class TimestreaminfluxdbDbClusterMaintenanceSchedule {
  const TimestreaminfluxdbDbClusterMaintenanceSchedule({
    required this.preferredMaintenanceWindow,
    required this.timezone,
  });

  final TfArg<String> preferredMaintenanceWindow;

  final TfArg<String> timezone;

  Map<String, Object?> encode() => {
    'preferred_maintenance_window': preferredMaintenanceWindow.toTfJson(),
    'timezone': timezone.toTfJson(),
  };
}

/// Factory wrapper for `aws_timestreaminfluxdb_db_cluster`.
final class AwsTimestreaminfluxdbDbCluster extends Resource {
  static const String tfType = 'aws_timestreaminfluxdb_db_cluster';

  AwsTimestreaminfluxdbDbCluster(
    super.localName, {
    TfArg<num>? allocatedStorage,
    TfArg<String>? bucket,
    required TfArg<TimestreaminfluxdbDbClusterDbInstanceType> dbInstanceType,
    TfArg<String>? dbParameterGroupIdentifier,
    TfArg<TimestreaminfluxdbDbClusterDbStorageType>? dbStorageType,
    TfArg<TimestreaminfluxdbDbClusterDeploymentType>? deploymentType,
    TfArg<TimestreaminfluxdbDbClusterFailoverMode>? failoverMode,
    required TfArg<String> name,
    TfArg<TimestreaminfluxdbDbClusterNetworkType>? networkType,
    TfArg<String>? organization,
    TfArg<String>? password,
    TfArg<num>? port,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? username,
    required TfArg<List<RefTo<AwsSecurityGroup>>> vpcSecurityGroupIds,
    required TfArg<List<String>> vpcSubnetIds,
    List<TimestreaminfluxdbDbClusterLogDeliveryConfiguration>?
    logDeliveryConfiguration,
    List<TimestreaminfluxdbDbClusterMaintenanceSchedule>? maintenanceSchedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocated_storage': ?allocatedStorage,
           'bucket': ?bucket,
           'db_instance_type': dbInstanceType,
           'db_parameter_group_identifier': ?dbParameterGroupIdentifier,
           'db_storage_type': ?dbStorageType,
           'deployment_type': ?deploymentType,
           'failover_mode': ?failoverMode,
           'name': name,
           'network_type': ?networkType,
           'organization': ?organization,
           'password': ?password,
           'port': ?port,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'tags': ?tags,
           'username': ?username,
           'vpc_security_group_ids': vpcSecurityGroupIds.encodeAs('id'),
           'vpc_subnet_ids': vpcSubnetIds,
           if (logDeliveryConfiguration != null)
             'log_delivery_configuration': TfArg.literal([
               for (final e in logDeliveryConfiguration) e.encode(),
             ]),
           if (maintenanceSchedule != null)
             'maintenance_schedule': TfArg.literal([
               for (final e in maintenanceSchedule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTimestreaminfluxdbDbClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTimestreaminfluxdbDbCluster>`.
  RefTo<AwsTimestreaminfluxdbDbCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `engine_type` attribute.
  TfRef<String> get engineType => TfRef.attribute<String>(this, 'engine_type');

  /// Reference to `influx_auth_parameters_secret_arn` attribute.
  TfRef<String> get influxAuthParametersSecretArn =>
      TfRef.attribute<String>(this, 'influx_auth_parameters_secret_arn');

  /// Reference to `reader_endpoint` attribute.
  TfRef<String> get readerEndpoint =>
      TfRef.attribute<String>(this, 'reader_endpoint');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `allocated_storage` attribute.
  TfRef<num> get allocatedStorage =>
      TfRef.attribute<num>(this, 'allocated_storage');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `db_instance_type` attribute.
  TfRef<String> get dbInstanceType =>
      TfRef.attribute<String>(this, 'db_instance_type');

  /// Reference to `db_parameter_group_identifier` attribute.
  TfRef<String> get dbParameterGroupIdentifier =>
      TfRef.attribute<String>(this, 'db_parameter_group_identifier');

  /// Reference to `db_storage_type` attribute.
  TfRef<String> get dbStorageType =>
      TfRef.attribute<String>(this, 'db_storage_type');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentType =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `failover_mode` attribute.
  TfRef<String> get failoverMode =>
      TfRef.attribute<String>(this, 'failover_mode');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');

  /// Reference to `vpc_subnet_ids` attribute.
  TfRef<List<String>> get vpcSubnetIds =>
      TfRef.attribute<List<String>>(this, 'vpc_subnet_ids');
}
