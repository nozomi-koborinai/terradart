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
extension type const MwaaEnvironmentEndpointManagement._(TfArg<String> _)
    implements TfArg<String> {
  MwaaEnvironmentEndpointManagement.variable(String name)
    : this._(TfArg.variable(name));
  MwaaEnvironmentEndpointManagement.expression(String template)
    : this._(TfArg.expression(template));
  const MwaaEnvironmentEndpointManagement.arg(TfArg<String> arg) : this._(arg);

  static const customer = MwaaEnvironmentEndpointManagement._(
    TfArgLiteral('CUSTOMER'),
  );
  static const service = MwaaEnvironmentEndpointManagement._(
    TfArgLiteral('SERVICE'),
  );

  static const List<MwaaEnvironmentEndpointManagement> values = [
    customer,
    service,
  ];
}

/// Mwaa Environment Webserver Access enum for `webserver_access_mode`.
extension type const MwaaEnvironmentWebserverAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  MwaaEnvironmentWebserverAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  MwaaEnvironmentWebserverAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const MwaaEnvironmentWebserverAccessMode.arg(TfArg<String> arg) : this._(arg);

  static const privateOnly = MwaaEnvironmentWebserverAccessMode._(
    TfArgLiteral('PRIVATE_ONLY'),
  );
  static const publicOnly = MwaaEnvironmentWebserverAccessMode._(
    TfArgLiteral('PUBLIC_ONLY'),
  );
  static const publicAndPrivate = MwaaEnvironmentWebserverAccessMode._(
    TfArgLiteral('PUBLIC_AND_PRIVATE'),
  );

  static const List<MwaaEnvironmentWebserverAccessMode> values = [
    privateOnly,
    publicOnly,
    publicAndPrivate,
  ];
}

/// Mwaa Environment Worker Replacement enum for `worker_replacement_strategy`.
extension type const MwaaEnvironmentWorkerReplacementStrategy._(TfArg<String> _)
    implements TfArg<String> {
  MwaaEnvironmentWorkerReplacementStrategy.variable(String name)
    : this._(TfArg.variable(name));
  MwaaEnvironmentWorkerReplacementStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const MwaaEnvironmentWorkerReplacementStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const forced = MwaaEnvironmentWorkerReplacementStrategy._(
    TfArgLiteral('FORCED'),
  );
  static const graceful = MwaaEnvironmentWorkerReplacementStrategy._(
    TfArgLiteral('GRACEFUL'),
  );

  static const List<MwaaEnvironmentWorkerReplacementStrategy> values = [
    forced,
    graceful,
  ];
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

  final MwaaEnvironmentLogLevel? logLevel;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
  };
}

/// `log_level` — derived from the provider schema description.
extension type const MwaaEnvironmentLogLevel._(TfArg<String> _)
    implements TfArg<String> {
  MwaaEnvironmentLogLevel.variable(String name) : this._(TfArg.variable(name));
  MwaaEnvironmentLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const MwaaEnvironmentLogLevel.arg(TfArg<String> arg) : this._(arg);

  static const critical = MwaaEnvironmentLogLevel._(TfArgLiteral('CRITICAL'));
  static const error = MwaaEnvironmentLogLevel._(TfArgLiteral('ERROR'));
  static const warning = MwaaEnvironmentLogLevel._(TfArgLiteral('WARNING'));
  static const info = MwaaEnvironmentLogLevel._(TfArgLiteral('INFO'));
  static const debug = MwaaEnvironmentLogLevel._(TfArgLiteral('DEBUG'));

  static const List<MwaaEnvironmentLogLevel> values = [
    critical,
    error,
    warning,
    info,
    debug,
  ];
}

/// Typed helper for the `logging_configuration.scheduler_logs` block of
/// `aws_mwaa_environment` (derived from provider schema).
@immutable
final class MwaaEnvironmentSchedulerLogs {
  const MwaaEnvironmentSchedulerLogs({this.enabled, this.logLevel});

  final TfArg<bool>? enabled;

  final MwaaEnvironmentLogLevel? logLevel;

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

  final MwaaEnvironmentLogLevel? logLevel;

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

  final MwaaEnvironmentLogLevel? logLevel;

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

  final MwaaEnvironmentLogLevel? logLevel;

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

  AwsMwaaEnvironment(
    super.localName, {
    TfArg<Map<String, String>>? airflowConfigurationOptions,
    TfArg<String>? airflowVersion,
    required TfArg<String> dagS3Path,
    MwaaEnvironmentEndpointManagement? endpointManagement,
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
    MwaaEnvironmentWebserverAccessMode? webserverAccessMode,
    TfArg<String>? weeklyMaintenanceWindowStart,
    MwaaEnvironmentWorkerReplacementStrategy? workerReplacementStrategy,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<Map<String, String>> get airflowConfigurationOptions =>
      TfRef.attribute<Map<String, String>>(
        this,
        'airflow_configuration_options',
      );

  /// Reference to `airflow_version` attribute.
  TfRef<String> get airflowVersion =>
      TfRef.attribute<String>(this, 'airflow_version');

  /// Reference to `dag_s3_path` attribute.
  TfRef<String> get dagS3Path => TfRef.attribute<String>(this, 'dag_s3_path');

  /// Reference to `endpoint_management` attribute.
  TfRef<String> get endpointManagement =>
      TfRef.attribute<String>(this, 'endpoint_management');

  /// Reference to `environment_class` attribute.
  TfRef<String> get environmentClass =>
      TfRef.attribute<String>(this, 'environment_class');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `max_webservers` attribute.
  TfRef<num> get maxWebservers => TfRef.attribute<num>(this, 'max_webservers');

  /// Reference to `max_workers` attribute.
  TfRef<num> get maxWorkers => TfRef.attribute<num>(this, 'max_workers');

  /// Reference to `min_webservers` attribute.
  TfRef<num> get minWebservers => TfRef.attribute<num>(this, 'min_webservers');

  /// Reference to `min_workers` attribute.
  TfRef<num> get minWorkers => TfRef.attribute<num>(this, 'min_workers');

  /// Reference to `plugins_s3_object_version` attribute.
  TfRef<String> get pluginsS3ObjectVersion =>
      TfRef.attribute<String>(this, 'plugins_s3_object_version');

  /// Reference to `plugins_s3_path` attribute.
  TfRef<String> get pluginsS3Path =>
      TfRef.attribute<String>(this, 'plugins_s3_path');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `requirements_s3_object_version` attribute.
  TfRef<String> get requirementsS3ObjectVersion =>
      TfRef.attribute<String>(this, 'requirements_s3_object_version');

  /// Reference to `requirements_s3_path` attribute.
  TfRef<String> get requirementsS3Path =>
      TfRef.attribute<String>(this, 'requirements_s3_path');

  /// Reference to `schedulers` attribute.
  TfRef<num> get schedulers => TfRef.attribute<num>(this, 'schedulers');

  /// Reference to `source_bucket_arn` attribute.
  TfRef<String> get sourceBucketArn =>
      TfRef.attribute<String>(this, 'source_bucket_arn');

  /// Reference to `startup_script_s3_object_version` attribute.
  TfRef<String> get startupScriptS3ObjectVersion =>
      TfRef.attribute<String>(this, 'startup_script_s3_object_version');

  /// Reference to `startup_script_s3_path` attribute.
  TfRef<String> get startupScriptS3Path =>
      TfRef.attribute<String>(this, 'startup_script_s3_path');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `webserver_access_mode` attribute.
  TfRef<String> get webserverAccessMode =>
      TfRef.attribute<String>(this, 'webserver_access_mode');

  /// Reference to `weekly_maintenance_window_start` attribute.
  TfRef<String> get weeklyMaintenanceWindowStart =>
      TfRef.attribute<String>(this, 'weekly_maintenance_window_start');

  /// Reference to `worker_replacement_strategy` attribute.
  TfRef<String> get workerReplacementStrategy =>
      TfRef.attribute<String>(this, 'worker_replacement_strategy');
}
