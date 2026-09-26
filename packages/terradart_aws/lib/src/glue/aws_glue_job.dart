// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_job`.
const Set<String> _awsGlueJobSensitive = <String>{
  'source_control_details.auth_token',
};

/// Typed helper for the `command` block of
/// `aws_glue_job` (derived from provider schema).
@immutable
final class GlueJobCommand {
  const GlueJobCommand({
    this.name,
    this.pythonVersion,
    this.runtime,
    required this.scriptLocation,
  });

  final TfArg<String>? name;

  final TfArg<String>? pythonVersion;

  final TfArg<String>? runtime;

  final TfArg<String> scriptLocation;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (pythonVersion != null) 'python_version': pythonVersion!.toTfJson(),
    if (runtime != null) 'runtime': runtime!.toTfJson(),
    'script_location': scriptLocation.toTfJson(),
  };
}

/// Typed helper for the `execution_property` block of
/// `aws_glue_job` (derived from provider schema).
@immutable
final class GlueJobExecutionProperty {
  const GlueJobExecutionProperty({this.maxConcurrentRuns});

  final TfArg<num>? maxConcurrentRuns;

  Map<String, Object?> encode() => {
    if (maxConcurrentRuns != null)
      'max_concurrent_runs': maxConcurrentRuns!.toTfJson(),
  };
}

/// Typed helper for the `notification_property` block of
/// `aws_glue_job` (derived from provider schema).
@immutable
final class GlueJobNotificationProperty {
  const GlueJobNotificationProperty({this.notifyDelayAfter});

  final TfArg<num>? notifyDelayAfter;

  Map<String, Object?> encode() => {
    if (notifyDelayAfter != null)
      'notify_delay_after': notifyDelayAfter!.toTfJson(),
  };
}

/// Typed helper for the `source_control_details` block of
/// `aws_glue_job` (derived from provider schema).
@immutable
final class GlueJobSourceControlDetails {
  const GlueJobSourceControlDetails({
    this.authStrategy,
    this.authToken,
    this.branch,
    this.folder,
    this.lastCommitId,
    this.owner,
    this.provider,
    this.repository,
  });

  final TfArg<String>? authStrategy;

  final TfArg<String>? authToken;

  final TfArg<String>? branch;

  final TfArg<String>? folder;

  final TfArg<String>? lastCommitId;

  final TfArg<String>? owner;

  final TfArg<String>? provider;

  final TfArg<String>? repository;

  Map<String, Object?> encode() => {
    if (authStrategy != null) 'auth_strategy': authStrategy!.toTfJson(),
    if (authToken != null) 'auth_token': authToken!.toTfJson(),
    if (branch != null) 'branch': branch!.toTfJson(),
    if (folder != null) 'folder': folder!.toTfJson(),
    if (lastCommitId != null) 'last_commit_id': lastCommitId!.toTfJson(),
    if (owner != null) 'owner': owner!.toTfJson(),
    if (provider != null) 'provider': provider!.toTfJson(),
    if (repository != null) 'repository': repository!.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_job`.
final class AwsGlueJob extends Resource {
  static const String tfType = 'aws_glue_job';

  AwsGlueJob({
    required super.localName,
    TfArg<List<String>>? connections,
    TfArg<Map<String, String>>? defaultArguments,
    TfArg<String>? description,
    TfArg<String>? executionClass,
    TfArg<String>? glueVersion,
    TfArg<String>? jobMode,
    TfArg<bool>? jobRunQueuingEnabled,
    TfArg<String>? maintenanceWindow,
    TfArg<num>? maxCapacity,
    TfArg<num>? maxRetries,
    required TfArg<String> name,
    TfArg<Map<String, String>>? nonOverridableArguments,
    TfArg<num>? numberOfWorkers,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<String>? securityConfiguration,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? timeout,
    TfArg<String>? workerType,
    required GlueJobCommand command,
    GlueJobExecutionProperty? executionProperty,
    GlueJobNotificationProperty? notificationProperty,
    GlueJobSourceControlDetails? sourceControlDetails,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (connections != null) 'connections': connections,
           if (defaultArguments != null) 'default_arguments': defaultArguments,
           if (description != null) 'description': description,
           if (executionClass != null) 'execution_class': executionClass,
           if (glueVersion != null) 'glue_version': glueVersion,
           if (jobMode != null) 'job_mode': jobMode,
           if (jobRunQueuingEnabled != null)
             'job_run_queuing_enabled': jobRunQueuingEnabled,
           if (maintenanceWindow != null)
             'maintenance_window': maintenanceWindow,
           if (maxCapacity != null) 'max_capacity': maxCapacity,
           if (maxRetries != null) 'max_retries': maxRetries,
           'name': name,
           if (nonOverridableArguments != null)
             'non_overridable_arguments': nonOverridableArguments,
           if (numberOfWorkers != null) 'number_of_workers': numberOfWorkers,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (securityConfiguration != null)
             'security_configuration': securityConfiguration,
           if (tags != null) 'tags': tags,
           if (timeout != null) 'timeout': timeout,
           if (workerType != null) 'worker_type': workerType,
           'command': TfArg.literal(command.encode()),
           if (executionProperty != null)
             'execution_property': TfArg.literal(executionProperty.encode()),
           if (notificationProperty != null)
             'notification_property': TfArg.literal(
               notificationProperty.encode(),
             ),
           if (sourceControlDetails != null)
             'source_control_details': TfArg.literal(
               sourceControlDetails.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueJobSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
