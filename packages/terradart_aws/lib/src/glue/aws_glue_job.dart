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
extension type const GlueJobExecutionClass._(TfArg<String> _)
    implements TfArg<String> {
  GlueJobExecutionClass.variable(String name) : this._(TfArg.variable(name));
  GlueJobExecutionClass.expression(String template)
    : this._(TfArg.expression(template));
  const GlueJobExecutionClass.arg(TfArg<String> arg) : this._(arg);

  static const flex = GlueJobExecutionClass._(TfArgLiteral('FLEX'));
  static const standard = GlueJobExecutionClass._(TfArgLiteral('STANDARD'));

  static const List<GlueJobExecutionClass> values = [flex, standard];
}

/// Glue Job enum for `job_mode`.
extension type const GlueJobMode._(TfArg<String> _) implements TfArg<String> {
  GlueJobMode.variable(String name) : this._(TfArg.variable(name));
  GlueJobMode.expression(String template) : this._(TfArg.expression(template));
  const GlueJobMode.arg(TfArg<String> arg) : this._(arg);

  static const script = GlueJobMode._(TfArgLiteral('SCRIPT'));
  static const visual = GlueJobMode._(TfArgLiteral('VISUAL'));
  static const notebook = GlueJobMode._(TfArgLiteral('NOTEBOOK'));

  static const List<GlueJobMode> values = [script, visual, notebook];
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

  final GlueJobPythonVersion? pythonVersion;

  final GlueJobRuntime? runtime;

  final TfArg<String> scriptLocation;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'python_version': ?pythonVersion?.toTfJson(),
    'runtime': ?runtime?.toTfJson(),
    'script_location': scriptLocation.toTfJson(),
  };
}

/// `python_version` — derived from the provider schema description.
extension type const GlueJobPythonVersion._(TfArg<String> _)
    implements TfArg<String> {
  GlueJobPythonVersion.variable(String name) : this._(TfArg.variable(name));
  GlueJobPythonVersion.expression(String template)
    : this._(TfArg.expression(template));
  const GlueJobPythonVersion.arg(TfArg<String> arg) : this._(arg);

  static const v2 = GlueJobPythonVersion._(TfArgLiteral('2'));
  static const v3 = GlueJobPythonVersion._(TfArgLiteral('3'));
  static const v3p9 = GlueJobPythonVersion._(TfArgLiteral('3.9'));

  static const List<GlueJobPythonVersion> values = [v2, v3, v3p9];
}

/// `runtime` — derived from the provider schema description.
extension type const GlueJobRuntime._(TfArg<String> _)
    implements TfArg<String> {
  GlueJobRuntime.variable(String name) : this._(TfArg.variable(name));
  GlueJobRuntime.expression(String template)
    : this._(TfArg.expression(template));
  const GlueJobRuntime.arg(TfArg<String> arg) : this._(arg);

  static const ray2p4 = GlueJobRuntime._(TfArgLiteral('Ray2.4'));

  static const List<GlueJobRuntime> values = [ray2p4];
}

/// Typed helper for the `execution_property` block of
/// `aws_glue_job` (derived from provider schema).
@immutable
final class GlueJobExecutionProperty {
  const GlueJobExecutionProperty({this.maxConcurrentRuns});

  final TfArg<num>? maxConcurrentRuns;

  @internal
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

  @internal
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

  final GlueJobAuthStrategy? authStrategy;

  final Sensitive<String>? authToken;

  final TfArg<String>? branch;

  final TfArg<String>? folder;

  final TfArg<String>? lastCommitId;

  final TfArg<String>? owner;

  final GlueJobProvider? provider;

  final TfArg<String>? repository;

  @internal
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
extension type const GlueJobAuthStrategy._(TfArg<String> _)
    implements TfArg<String> {
  GlueJobAuthStrategy.variable(String name) : this._(TfArg.variable(name));
  GlueJobAuthStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const GlueJobAuthStrategy.arg(TfArg<String> arg) : this._(arg);

  static const personalAccessToken = GlueJobAuthStrategy._(
    TfArgLiteral('PERSONAL_ACCESS_TOKEN'),
  );
  static const awsSecretsManager = GlueJobAuthStrategy._(
    TfArgLiteral('AWS_SECRETS_MANAGER'),
  );

  static const List<GlueJobAuthStrategy> values = [
    personalAccessToken,
    awsSecretsManager,
  ];
}

/// `provider` — derived from the provider schema description.
extension type const GlueJobProvider._(TfArg<String> _)
    implements TfArg<String> {
  GlueJobProvider.variable(String name) : this._(TfArg.variable(name));
  GlueJobProvider.expression(String template)
    : this._(TfArg.expression(template));
  const GlueJobProvider.arg(TfArg<String> arg) : this._(arg);

  static const github = GlueJobProvider._(TfArgLiteral('GITHUB'));
  static const gitlab = GlueJobProvider._(TfArgLiteral('GITLAB'));
  static const bitbucket = GlueJobProvider._(TfArgLiteral('BITBUCKET'));
  static const awsCodeCommit = GlueJobProvider._(
    TfArgLiteral('AWS_CODE_COMMIT'),
  );

  static const List<GlueJobProvider> values = [
    github,
    gitlab,
    bitbucket,
    awsCodeCommit,
  ];
}

/// Factory wrapper for `aws_glue_job`.
final class AwsGlueJob extends Resource {
  static const String tfType = 'aws_glue_job';

  AwsGlueJob(
    super.localName, {
    TfArg<List<String>>? connections,
    TfArg<Map<String, String>>? defaultArguments,
    TfArg<String>? description,
    GlueJobExecutionClass? executionClass,
    TfArg<String>? glueVersion,
    GlueJobMode? jobMode,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connections` attribute.
  TfRef<List<String>> get connections =>
      TfRef.attribute<List<String>>(this, 'connections');

  /// Reference to `default_arguments` attribute.
  TfRef<Map<String, String>> get defaultArguments =>
      TfRef.attribute<Map<String, String>>(this, 'default_arguments');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `execution_class` attribute.
  TfRef<String> get executionClass =>
      TfRef.attribute<String>(this, 'execution_class');

  /// Reference to `glue_version` attribute.
  TfRef<String> get glueVersion =>
      TfRef.attribute<String>(this, 'glue_version');

  /// Reference to `job_mode` attribute.
  TfRef<String> get jobMode => TfRef.attribute<String>(this, 'job_mode');

  /// Reference to `job_run_queuing_enabled` attribute.
  TfRef<bool> get jobRunQueuingEnabled =>
      TfRef.attribute<bool>(this, 'job_run_queuing_enabled');

  /// Reference to `maintenance_window` attribute.
  TfRef<String> get maintenanceWindow =>
      TfRef.attribute<String>(this, 'maintenance_window');

  /// Reference to `max_capacity` attribute.
  TfRef<num> get maxCapacity => TfRef.attribute<num>(this, 'max_capacity');

  /// Reference to `max_retries` attribute.
  TfRef<num> get maxRetries => TfRef.attribute<num>(this, 'max_retries');

  /// Reference to `non_overridable_arguments` attribute.
  TfRef<Map<String, String>> get nonOverridableArguments =>
      TfRef.attribute<Map<String, String>>(this, 'non_overridable_arguments');

  /// Reference to `number_of_workers` attribute.
  TfRef<num> get numberOfWorkers =>
      TfRef.attribute<num>(this, 'number_of_workers');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `security_configuration` attribute.
  TfRef<String> get securityConfiguration =>
      TfRef.attribute<String>(this, 'security_configuration');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `worker_type` attribute.
  TfRef<String> get workerType => TfRef.attribute<String>(this, 'worker_type');
}
