// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mwaa_environment`.
const Set<String> _awsMwaaEnvironmentSensitive = <String>{
  'airflow_configuration_options',
};

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
    if (dagProcessingLogs != null)
      'dag_processing_logs': dagProcessingLogs!.encode(),
    if (schedulerLogs != null) 'scheduler_logs': schedulerLogs!.encode(),
    if (taskLogs != null) 'task_logs': taskLogs!.encode(),
    if (webserverLogs != null) 'webserver_logs': webserverLogs!.encode(),
    if (workerLogs != null) 'worker_logs': workerLogs!.encode(),
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

  final TfArg<String>? logLevel;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logLevel != null) 'log_level': logLevel!.toTfJson(),
  };
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

  final TfArg<String>? logLevel;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logLevel != null) 'log_level': logLevel!.toTfJson(),
  };
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

  final TfArg<String>? logLevel;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logLevel != null) 'log_level': logLevel!.toTfJson(),
  };
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

  final TfArg<String>? logLevel;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logLevel != null) 'log_level': logLevel!.toTfJson(),
  };
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

  final TfArg<String>? logLevel;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logLevel != null) 'log_level': logLevel!.toTfJson(),
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

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
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
    TfArg<String>? endpointManagement,
    TfArg<String>? environmentClass,
    required TfArg<String> executionRoleArn,
    TfArg<String>? kmsKey,
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
    required TfArg<String> sourceBucketArn,
    TfArg<String>? startupScriptS3ObjectVersion,
    TfArg<String>? startupScriptS3Path,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? webserverAccessMode,
    TfArg<String>? weeklyMaintenanceWindowStart,
    TfArg<String>? workerReplacementStrategy,
    MwaaEnvironmentLoggingConfiguration? loggingConfiguration,
    required MwaaEnvironmentNetworkConfiguration networkConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (airflowConfigurationOptions != null)
             'airflow_configuration_options': airflowConfigurationOptions,
           if (airflowVersion != null) 'airflow_version': airflowVersion,
           'dag_s3_path': dagS3Path,
           if (endpointManagement != null)
             'endpoint_management': endpointManagement,
           if (environmentClass != null) 'environment_class': environmentClass,
           'execution_role_arn': executionRoleArn,
           if (kmsKey != null) 'kms_key': kmsKey,
           if (maxWebservers != null) 'max_webservers': maxWebservers,
           if (maxWorkers != null) 'max_workers': maxWorkers,
           if (minWebservers != null) 'min_webservers': minWebservers,
           if (minWorkers != null) 'min_workers': minWorkers,
           'name': name,
           if (pluginsS3ObjectVersion != null)
             'plugins_s3_object_version': pluginsS3ObjectVersion,
           if (pluginsS3Path != null) 'plugins_s3_path': pluginsS3Path,
           if (region != null) 'region': region,
           if (requirementsS3ObjectVersion != null)
             'requirements_s3_object_version': requirementsS3ObjectVersion,
           if (requirementsS3Path != null)
             'requirements_s3_path': requirementsS3Path,
           if (schedulers != null) 'schedulers': schedulers,
           'source_bucket_arn': sourceBucketArn,
           if (startupScriptS3ObjectVersion != null)
             'startup_script_s3_object_version': startupScriptS3ObjectVersion,
           if (startupScriptS3Path != null)
             'startup_script_s3_path': startupScriptS3Path,
           if (tags != null) 'tags': tags,
           if (webserverAccessMode != null)
             'webserver_access_mode': webserverAccessMode,
           if (weeklyMaintenanceWindowStart != null)
             'weekly_maintenance_window_start': weeklyMaintenanceWindowStart,
           if (workerReplacementStrategy != null)
             'worker_replacement_strategy': workerReplacementStrategy,
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
