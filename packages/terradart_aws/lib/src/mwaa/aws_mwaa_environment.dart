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

  final MwaaEnvironmentLoggingConfigurationDagProcessingLogs? dagProcessingLogs;

  final MwaaEnvironmentLoggingConfigurationSchedulerLogs? schedulerLogs;

  final MwaaEnvironmentLoggingConfigurationTaskLogs? taskLogs;

  final MwaaEnvironmentLoggingConfigurationWebserverLogs? webserverLogs;

  final MwaaEnvironmentLoggingConfigurationWorkerLogs? workerLogs;

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
final class MwaaEnvironmentLoggingConfigurationDagProcessingLogs {
  const MwaaEnvironmentLoggingConfigurationDagProcessingLogs({
    this.enabled,
    this.logLevel,
  });

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLoggingConfigurationDagProcessingLogsLogLevel>?
  logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// `log_level` — derived from the provider schema description.
enum MwaaEnvironmentLoggingConfigurationDagProcessingLogsLogLevel
    implements TerraformEnum {
  critical('CRITICAL'),
  error('ERROR'),
  warning('WARNING'),
  info('INFO'),
  debug('DEBUG');

  const MwaaEnvironmentLoggingConfigurationDagProcessingLogsLogLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_configuration.scheduler_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentLoggingConfigurationSchedulerLogs {
  const MwaaEnvironmentLoggingConfigurationSchedulerLogs({
    this.enabled,
    this.logLevel,
  });

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLoggingConfigurationSchedulerLogsLogLevel>?
  logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// `log_level` — derived from the provider schema description.
enum MwaaEnvironmentLoggingConfigurationSchedulerLogsLogLevel
    implements TerraformEnum {
  critical('CRITICAL'),
  error('ERROR'),
  warning('WARNING'),
  info('INFO'),
  debug('DEBUG');

  const MwaaEnvironmentLoggingConfigurationSchedulerLogsLogLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_configuration.task_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentLoggingConfigurationTaskLogs {
  const MwaaEnvironmentLoggingConfigurationTaskLogs({
    this.enabled,
    this.logLevel,
  });

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLoggingConfigurationTaskLogsLogLevel>? logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// `log_level` — derived from the provider schema description.
enum MwaaEnvironmentLoggingConfigurationTaskLogsLogLevel
    implements TerraformEnum {
  critical('CRITICAL'),
  error('ERROR'),
  warning('WARNING'),
  info('INFO'),
  debug('DEBUG');

  const MwaaEnvironmentLoggingConfigurationTaskLogsLogLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_configuration.webserver_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentLoggingConfigurationWebserverLogs {
  const MwaaEnvironmentLoggingConfigurationWebserverLogs({
    this.enabled,
    this.logLevel,
  });

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLoggingConfigurationWebserverLogsLogLevel>?
  logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// `log_level` — derived from the provider schema description.
enum MwaaEnvironmentLoggingConfigurationWebserverLogsLogLevel
    implements TerraformEnum {
  critical('CRITICAL'),
  error('ERROR'),
  warning('WARNING'),
  info('INFO'),
  debug('DEBUG');

  const MwaaEnvironmentLoggingConfigurationWebserverLogsLogLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_configuration.worker_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentLoggingConfigurationWorkerLogs {
  const MwaaEnvironmentLoggingConfigurationWorkerLogs({
    this.enabled,
    this.logLevel,
  });

  final TfArg<bool>? enabled;

  final TfArg<MwaaEnvironmentLoggingConfigurationWorkerLogsLogLevel>? logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// `log_level` — derived from the provider schema description.
enum MwaaEnvironmentLoggingConfigurationWorkerLogsLogLevel
    implements TerraformEnum {
  critical('CRITICAL'),
  error('ERROR'),
  warning('WARNING'),
  info('INFO'),
  debug('DEBUG');

  const MwaaEnvironmentLoggingConfigurationWorkerLogsLogLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
}
