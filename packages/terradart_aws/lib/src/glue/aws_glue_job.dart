// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_glue_job`.
const Set<String> _awsGlueJobSensitive = <String>{
  'source_control_details.auth_token',
};

/// Glue Job Execution enum for `execution_class`.
enum GlueJobExecutionClass implements TerraformEnum {
  flex('FLEX'),
  standard('STANDARD');

  const GlueJobExecutionClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Glue Job Job enum for `job_mode`.
enum GlueJobJobMode implements TerraformEnum {
  script('SCRIPT'),
  visual('VISUAL'),
  notebook('NOTEBOOK');

  const GlueJobJobMode(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<GlueJobCommandPythonVersion>? pythonVersion;

  final TfArg<GlueJobCommandRuntime>? runtime;

  final TfArg<String> scriptLocation;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'python_version': ?pythonVersion?.toTfJson(),
    'runtime': ?runtime?.toTfJson(),
    'script_location': scriptLocation.toTfJson(),
  };
}

/// `python_version` — derived from the provider schema description.
enum GlueJobCommandPythonVersion implements TerraformEnum {
  v2('2'),
  v3('3'),
  v3p9('3.9');

  const GlueJobCommandPythonVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `runtime` — derived from the provider schema description.
enum GlueJobCommandRuntime implements TerraformEnum {
  ray2p4('Ray2.4');

  const GlueJobCommandRuntime(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `execution_property` block of
/// `aws_glue_job` (derived from provider schema).
@immutable
final class GlueJobExecutionProperty {
  const GlueJobExecutionProperty({this.maxConcurrentRuns});

  final TfArg<num>? maxConcurrentRuns;

  Map<String, Object?> encode() => {
    'max_concurrent_runs': ?maxConcurrentRuns?.toTfJson(),
  };
}

/// Typed helper for the `notification_property` block of
/// `aws_glue_job` (derived from provider schema).
@immutable
final class GlueJobNotificationProperty {
  const GlueJobNotificationProperty({this.notifyDelayAfter});

  final TfArg<num>? notifyDelayAfter;

  Map<String, Object?> encode() => {
    'notify_delay_after': ?notifyDelayAfter?.toTfJson(),
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

  final TfArg<GlueJobSourceControlDetailsAuthStrategy>? authStrategy;

  final TfArg<String>? authToken;

  final TfArg<String>? branch;

  final TfArg<String>? folder;

  final TfArg<String>? lastCommitId;

  final TfArg<String>? owner;

  final TfArg<GlueJobSourceControlDetailsProvider>? provider;

  final TfArg<String>? repository;

  Map<String, Object?> encode() => {
    'auth_strategy': ?authStrategy?.toTfJson(),
    'auth_token': ?authToken?.toTfJson(),
    'branch': ?branch?.toTfJson(),
    'folder': ?folder?.toTfJson(),
    'last_commit_id': ?lastCommitId?.toTfJson(),
    'owner': ?owner?.toTfJson(),
    'provider': ?provider?.toTfJson(),
    'repository': ?repository?.toTfJson(),
  };
}

/// `auth_strategy` — derived from the provider schema description.
enum GlueJobSourceControlDetailsAuthStrategy implements TerraformEnum {
  personalAccessToken('PERSONAL_ACCESS_TOKEN'),
  awsSecretsManager('AWS_SECRETS_MANAGER');

  const GlueJobSourceControlDetailsAuthStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `provider` — derived from the provider schema description.
enum GlueJobSourceControlDetailsProvider implements TerraformEnum {
  github('GITHUB'),
  gitlab('GITLAB'),
  bitbucket('BITBUCKET'),
  awsCodeCommit('AWS_CODE_COMMIT');

  const GlueJobSourceControlDetailsProvider(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_glue_job`.
final class AwsGlueJob extends Resource {
  static const String tfType = 'aws_glue_job';

  AwsGlueJob({
    required super.localName,
    TfArg<List<String>>? connections,
    TfArg<Map<String, String>>? defaultArguments,
    TfArg<String>? description,
    TfArg<GlueJobExecutionClass>? executionClass,
    TfArg<String>? glueVersion,
    TfArg<GlueJobJobMode>? jobMode,
    TfArg<bool>? jobRunQueuingEnabled,
    TfArg<String>? maintenanceWindow,
    TfArg<num>? maxCapacity,
    TfArg<num>? maxRetries,
    required TfArg<String> name,
    TfArg<Map<String, String>>? nonOverridableArguments,
    TfArg<num>? numberOfWorkers,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
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
           'connections': ?connections,
           'default_arguments': ?defaultArguments,
           'description': ?description,
           'execution_class': ?executionClass,
           'glue_version': ?glueVersion,
           'job_mode': ?jobMode,
           'job_run_queuing_enabled': ?jobRunQueuingEnabled,
           'maintenance_window': ?maintenanceWindow,
           'max_capacity': ?maxCapacity,
           'max_retries': ?maxRetries,
           'name': name,
           'non_overridable_arguments': ?nonOverridableArguments,
           'number_of_workers': ?numberOfWorkers,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'security_configuration': ?securityConfiguration,
           'tags': ?tags,
           'timeout': ?timeout,
           'worker_type': ?workerType,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueJob>`.
  RefTo<AwsGlueJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connections` attribute.
  TfRef<List<String>> get connectionsRef =>
      TfRef.attribute<List<String>>(this, 'connections');

  /// Reference to `default_arguments` attribute.
  TfRef<Map<String, String>> get defaultArgumentsRef =>
      TfRef.attribute<Map<String, String>>(this, 'default_arguments');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `execution_class` attribute.
  TfRef<String> get executionClassRef =>
      TfRef.attribute<String>(this, 'execution_class');

  /// Reference to `glue_version` attribute.
  TfRef<String> get glueVersionRef =>
      TfRef.attribute<String>(this, 'glue_version');

  /// Reference to `job_mode` attribute.
  TfRef<String> get jobModeRef => TfRef.attribute<String>(this, 'job_mode');

  /// Reference to `job_run_queuing_enabled` attribute.
  TfRef<bool> get jobRunQueuingEnabledRef =>
      TfRef.attribute<bool>(this, 'job_run_queuing_enabled');

  /// Reference to `maintenance_window` attribute.
  TfRef<String> get maintenanceWindowRef =>
      TfRef.attribute<String>(this, 'maintenance_window');

  /// Reference to `max_capacity` attribute.
  TfRef<num> get maxCapacityRef => TfRef.attribute<num>(this, 'max_capacity');

  /// Reference to `max_retries` attribute.
  TfRef<num> get maxRetriesRef => TfRef.attribute<num>(this, 'max_retries');

  /// Reference to `non_overridable_arguments` attribute.
  TfRef<Map<String, String>> get nonOverridableArgumentsRef =>
      TfRef.attribute<Map<String, String>>(this, 'non_overridable_arguments');

  /// Reference to `number_of_workers` attribute.
  TfRef<num> get numberOfWorkersRef =>
      TfRef.attribute<num>(this, 'number_of_workers');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `security_configuration` attribute.
  TfRef<String> get securityConfigurationRef =>
      TfRef.attribute<String>(this, 'security_configuration');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeoutRef => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `worker_type` attribute.
  TfRef<String> get workerTypeRef =>
      TfRef.attribute<String>(this, 'worker_type');
}
