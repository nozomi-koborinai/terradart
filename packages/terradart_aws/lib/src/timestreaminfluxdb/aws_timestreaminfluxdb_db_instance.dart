// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_timestreaminfluxdb_db_instance`.
const Set<String> _awsTimestreaminfluxdbDbInstanceSensitive = <String>{
  'password',
};

/// Typed helper for the `log_delivery_configuration` block of
/// `aws_timestreaminfluxdb_db_instance` (derived from provider schema).
@immutable
final class TimestreaminfluxdbDbInstanceLogDeliveryConfiguration {
  const TimestreaminfluxdbDbInstanceLogDeliveryConfiguration({
    this.s3Configuration,
  });

  final List<
    TimestreaminfluxdbDbInstanceLogDeliveryConfigurationS3Configuration
  >?
  s3Configuration;

  Map<String, Object?> encode() => {
    if (s3Configuration != null)
      's3_configuration': [for (final e in s3Configuration!) e.encode()],
  };
}

/// Typed helper for the `log_delivery_configuration.s3_configuration` block of
/// `aws_timestreaminfluxdb_db_instance` (derived from provider schema).
@immutable
final class TimestreaminfluxdbDbInstanceLogDeliveryConfigurationS3Configuration {
  const TimestreaminfluxdbDbInstanceLogDeliveryConfigurationS3Configuration({
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
/// `aws_timestreaminfluxdb_db_instance` (derived from provider schema).
@immutable
final class TimestreaminfluxdbDbInstanceMaintenanceSchedule {
  const TimestreaminfluxdbDbInstanceMaintenanceSchedule({
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

/// Factory wrapper for `aws_timestreaminfluxdb_db_instance`.
final class AwsTimestreaminfluxdbDbInstance extends Resource {
  static const String tfType = 'aws_timestreaminfluxdb_db_instance';

  AwsTimestreaminfluxdbDbInstance({
    required super.localName,
    required TfArg<num> allocatedStorage,
    required TfArg<String> bucket,
    required TfArg<String> dbInstanceType,
    TfArg<String>? dbParameterGroupIdentifier,
    TfArg<String>? dbStorageType,
    TfArg<String>? deploymentType,
    required TfArg<String> name,
    TfArg<String>? networkType,
    required TfArg<String> organization,
    required TfArg<String> password,
    TfArg<num>? port,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> username,
    required TfArg<List<String>> vpcSecurityGroupIds,
    required TfArg<List<String>> vpcSubnetIds,
    List<TimestreaminfluxdbDbInstanceLogDeliveryConfiguration>?
    logDeliveryConfiguration,
    List<TimestreaminfluxdbDbInstanceMaintenanceSchedule>? maintenanceSchedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocated_storage': allocatedStorage,
           'bucket': bucket,
           'db_instance_type': dbInstanceType,
           if (dbParameterGroupIdentifier != null)
             'db_parameter_group_identifier': dbParameterGroupIdentifier,
           if (dbStorageType != null) 'db_storage_type': dbStorageType,
           if (deploymentType != null) 'deployment_type': deploymentType,
           'name': name,
           if (networkType != null) 'network_type': networkType,
           'organization': organization,
           'password': password,
           if (port != null) 'port': port,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'username': username,
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
  Set<String> get sensitiveFields => _awsTimestreaminfluxdbDbInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `influx_auth_parameters_secret_arn` attribute.
  TfRef<String> get influxAuthParametersSecretArn =>
      TfRef.attribute<String>(this, 'influx_auth_parameters_secret_arn');

  /// Reference to `secondary_availability_zone` attribute.
  TfRef<String> get secondaryAvailabilityZone =>
      TfRef.attribute<String>(this, 'secondary_availability_zone');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
