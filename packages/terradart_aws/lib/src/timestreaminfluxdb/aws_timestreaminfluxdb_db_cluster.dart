// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_timestreaminfluxdb_db_cluster`.
const Set<String> _awsTimestreaminfluxdbDbClusterSensitive = <String>{
  'password',
};

/// Typed helper for the `log_delivery_configuration` block of
/// `aws_timestreaminfluxdb_db_cluster` (derived from provider schema).
@immutable
final class TimestreaminfluxdbDbClusterLogDeliveryConfiguration {
  const TimestreaminfluxdbDbClusterLogDeliveryConfiguration({
    this.s3Configuration,
  });

  final List<
    TimestreaminfluxdbDbClusterLogDeliveryConfigurationS3Configuration
  >?
  s3Configuration;

  Map<String, Object?> encode() => {
    if (s3Configuration != null)
      's3_configuration': [for (final e in s3Configuration!) e.encode()],
  };
}

/// Typed helper for the `log_delivery_configuration.s3_configuration` block of
/// `aws_timestreaminfluxdb_db_cluster` (derived from provider schema).
@immutable
final class TimestreaminfluxdbDbClusterLogDeliveryConfigurationS3Configuration {
  const TimestreaminfluxdbDbClusterLogDeliveryConfigurationS3Configuration({
    required this.bucketName,
    required this.enabled,
  });

  final TfArg<String> bucketName;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
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

  AwsTimestreaminfluxdbDbCluster({
    required super.localName,
    TfArg<num>? allocatedStorage,
    TfArg<String>? bucket,
    required TfArg<String> dbInstanceType,
    TfArg<String>? dbParameterGroupIdentifier,
    TfArg<String>? dbStorageType,
    TfArg<String>? deploymentType,
    TfArg<String>? failoverMode,
    required TfArg<String> name,
    TfArg<String>? networkType,
    TfArg<String>? organization,
    TfArg<String>? password,
    TfArg<num>? port,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? username,
    required TfArg<List<String>> vpcSecurityGroupIds,
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
           if (allocatedStorage != null) 'allocated_storage': allocatedStorage,
           if (bucket != null) 'bucket': bucket,
           'db_instance_type': dbInstanceType,
           if (dbParameterGroupIdentifier != null)
             'db_parameter_group_identifier': dbParameterGroupIdentifier,
           if (dbStorageType != null) 'db_storage_type': dbStorageType,
           if (deploymentType != null) 'deployment_type': deploymentType,
           if (failoverMode != null) 'failover_mode': failoverMode,
           'name': name,
           if (networkType != null) 'network_type': networkType,
           if (organization != null) 'organization': organization,
           if (password != null) 'password': password,
           if (port != null) 'port': port,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (username != null) 'username': username,
           'vpc_security_group_ids': vpcSecurityGroupIds,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
