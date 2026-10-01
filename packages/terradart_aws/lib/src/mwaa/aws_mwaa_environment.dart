// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_mwaa_environment`.
const Set<String> _awsMwaaEnvironmentSensitive = <String>{
  'airflow_configuration_options',
};

/// Mwaa Environment Endpoint enum for `endpoint_management`.
enum MwaaEnvironmentEndpointManagement implements TerraformEnum {
  customer('CUSTOMER'),
  service('SERVICE');

  const MwaaEnvironmentEndpointManagement(this.terraformValue);
  @override
  final String terraformValue;
}

/// Mwaa Environment Webserver Access enum for `webserver_access_mode`.
enum MwaaEnvironmentWebserverAccessMode implements TerraformEnum {
  privateOnly('PRIVATE_ONLY'),
  publicOnly('PUBLIC_ONLY'),
  publicAndPrivate('PUBLIC_AND_PRIVATE');

  const MwaaEnvironmentWebserverAccessMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Mwaa Environment Worker Replacement enum for `worker_replacement_strategy`.
enum MwaaEnvironmentWorkerReplacementStrategy implements TerraformEnum {
  forced('FORCED'),
  graceful('GRACEFUL');

  const MwaaEnvironmentWorkerReplacementStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_configuration` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentLoggingConfiguration {
  const MwaaEnvironmentLoggingConfiguration({
    this.dagProcessingLogs,
    this.schedulerLogs,
    this.taskLogs,
    this.webserverLogs,
    this.workerLogs,
  });

  final MwaaEnvironmentDagProcessingLogs? dagProcessingLogs;

  final MwaaEnvironmentSchedulerLogs? schedulerLogs;

  final MwaaEnvironmentTaskLogs? taskLogs;

  final MwaaEnvironmentWebserverLogs? webserverLogs;

  final MwaaEnvironmentWorkerLogs? workerLogs;

  Map<String, Object?> encode() => {
    'dag_processing_logs': ?dagProcessingLogs?.encode(),
    'scheduler_logs': ?schedulerLogs?.encode(),
    'task_logs': ?taskLogs?.encode(),
    'webserver_logs': ?webserverLogs?.encode(),
    'worker_logs': ?workerLogs?.encode(),
  };
}

/// Typed helper for the `logging_configuration.dag_processing_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentDagProcessingLogs {
  const MwaaEnvironmentDagProcessingLogs({this.enabled, this.logLevel});

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLogLevel>? logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// `log_level` — derived from the provider schema description.
enum MwaaEnvironmentLogLevel implements TerraformEnum {
  critical('CRITICAL'),
  error('ERROR'),
  warning('WARNING'),
  info('INFO'),
  debug('DEBUG');

  const MwaaEnvironmentLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_configuration.scheduler_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentSchedulerLogs {
  const MwaaEnvironmentSchedulerLogs({this.enabled, this.logLevel});

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLogLevel>? logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// Typed helper for the `logging_configuration.task_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentTaskLogs {
  const MwaaEnvironmentTaskLogs({this.enabled, this.logLevel});

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLogLevel>? logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// Typed helper for the `logging_configuration.webserver_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentWebserverLogs {
  const MwaaEnvironmentWebserverLogs({this.enabled, this.logLevel});

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLogLevel>? logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// Typed helper for the `logging_configuration.worker_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentWorkerLogs {
  const MwaaEnvironmentWorkerLogs({this.enabled, this.logLevel});

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLogLevel>? logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// Typed helper for the `network_configuration` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentNetworkConfiguration {
  const MwaaEnvironmentNetworkConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_mwaa_environment`.
final class AwsMwaaEnvironment extends Resource {
  static const String tfType = 'aws_mwaa_environment';

  AwsMwaaEnvironment({
    required super.localName,
    TfArg<Map<String, String>>? airflowConfigurationOptions,
    TfArg<String>? airflowVersion,
    required TfArg<String> dagS3Path,
    TfArg<MwaaEnvironmentEndpointManagement>? endpointManagement,
    TfArg<String>? environmentClass,
    required RefTo<AwsIamRole> executionRoleArn,
    RefTo<AwsKmsKey>? kmsKey,
    TfArg<num>? maxWebservers,
    TfArg<num>? maxWorkers,
    TfArg<num>? minWebservers,
    TfArg<num>? minWorkers,
    required TfArg<String> name,
    TfArg<String>? pluginsS3ObjectVersion,
    TfArg<String>? pluginsS3Path,
    TfArg<String>? region,
    TfArg<String>? requirementsS3ObjectVersion,
    TfArg<String>? requirementsS3Path,
    TfArg<num>? schedulers,
    required RefTo<AwsS3Bucket> sourceBucketArn,
    TfArg<String>? startupScriptS3ObjectVersion,
    TfArg<String>? startupScriptS3Path,
    TfArg<Map<String, String>>? tags,
    TfArg<MwaaEnvironmentWebserverAccessMode>? webserverAccessMode,
    TfArg<String>? weeklyMaintenanceWindowStart,
    TfArg<MwaaEnvironmentWorkerReplacementStrategy>? workerReplacementStrategy,
    MwaaEnvironmentLoggingConfiguration? loggingConfiguration,
    required MwaaEnvironmentNetworkConfiguration networkConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'airflow_configuration_options': ?airflowConfigurationOptions,
           'airflow_version': ?airflowVersion,
           'dag_s3_path': dagS3Path,
           'endpoint_management': ?endpointManagement,
           'environment_class': ?environmentClass,
           'execution_role_arn': executionRoleArn.encodeAs('arn'),
           'kms_key': ?kmsKey?.encodeAs('arn'),
           'max_webservers': ?maxWebservers,
           'max_workers': ?maxWorkers,
           'min_webservers': ?minWebservers,
           'min_workers': ?minWorkers,
           'name': name,
           'plugins_s3_object_version': ?pluginsS3ObjectVersion,
           'plugins_s3_path': ?pluginsS3Path,
           'region': ?region,
           'requirements_s3_object_version': ?requirementsS3ObjectVersion,
           'requirements_s3_path': ?requirementsS3Path,
           'schedulers': ?schedulers,
           'source_bucket_arn': sourceBucketArn.encodeAs('arn'),
           'startup_script_s3_object_version': ?startupScriptS3ObjectVersion,
           'startup_script_s3_path': ?startupScriptS3Path,
           'tags': ?tags,
           'webserver_access_mode': ?webserverAccessMode,
           'weekly_maintenance_window_start': ?weeklyMaintenanceWindowStart,
           'worker_replacement_strategy': ?workerReplacementStrategy,
           if (loggingConfiguration != null)
             'logging_configuration': TfArg.literal(
               loggingConfiguration.encode(),
             ),
           'network_configuration': TfArg.literal(
             networkConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMwaaEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMwaaEnvironment>`.
  RefTo<AwsMwaaEnvironment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `database_vpc_endpoint_service` attribute.
  TfRef<String> get databaseVpcEndpointService =>
      TfRef.attribute<String>(this, 'database_vpc_endpoint_service');

  /// Reference to `last_updated` attribute.
  TfRef<List<Map<String, Object?>>> get lastUpdated =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'last_updated');

  /// Reference to `service_role_arn` attribute.
  TfRef<String> get serviceRoleArn =>
      TfRef.attribute<String>(this, 'service_role_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `webserver_url` attribute.
  TfRef<String> get webserverUrl =>
      TfRef.attribute<String>(this, 'webserver_url');

  /// Reference to `webserver_vpc_endpoint_service` attribute.
  TfRef<String> get webserverVpcEndpointService =>
      TfRef.attribute<String>(this, 'webserver_vpc_endpoint_service');

  /// Reference to `airflow_configuration_options` attribute.
  TfRef<Map<String, String>> get airflowConfigurationOptionsRef =>
      TfRef.attribute<Map<String, String>>(
        this,
        'airflow_configuration_options',
      );

  /// Reference to `airflow_version` attribute.
  TfRef<String> get airflowVersionRef =>
      TfRef.attribute<String>(this, 'airflow_version');

  /// Reference to `dag_s3_path` attribute.
  TfRef<String> get dagS3PathRef =>
      TfRef.attribute<String>(this, 'dag_s3_path');

  /// Reference to `endpoint_management` attribute.
  TfRef<String> get endpointManagementRef =>
      TfRef.attribute<String>(this, 'endpoint_management');

  /// Reference to `environment_class` attribute.
  TfRef<String> get environmentClassRef =>
      TfRef.attribute<String>(this, 'environment_class');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArnRef =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKeyRef => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `max_webservers` attribute.
  TfRef<num> get maxWebserversRef =>
      TfRef.attribute<num>(this, 'max_webservers');

  /// Reference to `max_workers` attribute.
  TfRef<num> get maxWorkersRef => TfRef.attribute<num>(this, 'max_workers');

  /// Reference to `min_webservers` attribute.
  TfRef<num> get minWebserversRef =>
      TfRef.attribute<num>(this, 'min_webservers');

  /// Reference to `min_workers` attribute.
  TfRef<num> get minWorkersRef => TfRef.attribute<num>(this, 'min_workers');

  /// Reference to `plugins_s3_object_version` attribute.
  TfRef<String> get pluginsS3ObjectVersionRef =>
      TfRef.attribute<String>(this, 'plugins_s3_object_version');

  /// Reference to `plugins_s3_path` attribute.
  TfRef<String> get pluginsS3PathRef =>
      TfRef.attribute<String>(this, 'plugins_s3_path');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `requirements_s3_object_version` attribute.
  TfRef<String> get requirementsS3ObjectVersionRef =>
      TfRef.attribute<String>(this, 'requirements_s3_object_version');

  /// Reference to `requirements_s3_path` attribute.
  TfRef<String> get requirementsS3PathRef =>
      TfRef.attribute<String>(this, 'requirements_s3_path');

  /// Reference to `schedulers` attribute.
  TfRef<num> get schedulersRef => TfRef.attribute<num>(this, 'schedulers');

  /// Reference to `source_bucket_arn` attribute.
  TfRef<String> get sourceBucketArnRef =>
      TfRef.attribute<String>(this, 'source_bucket_arn');

  /// Reference to `startup_script_s3_object_version` attribute.
  TfRef<String> get startupScriptS3ObjectVersionRef =>
      TfRef.attribute<String>(this, 'startup_script_s3_object_version');

  /// Reference to `startup_script_s3_path` attribute.
  TfRef<String> get startupScriptS3PathRef =>
      TfRef.attribute<String>(this, 'startup_script_s3_path');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `webserver_access_mode` attribute.
  TfRef<String> get webserverAccessModeRef =>
      TfRef.attribute<String>(this, 'webserver_access_mode');

  /// Reference to `weekly_maintenance_window_start` attribute.
  TfRef<String> get weeklyMaintenanceWindowStartRef =>
      TfRef.attribute<String>(this, 'weekly_maintenance_window_start');

  /// Reference to `worker_replacement_strategy` attribute.
  TfRef<String> get workerReplacementStrategyRef =>
      TfRef.attribute<String>(this, 'worker_replacement_strategy');
}
