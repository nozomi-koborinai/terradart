// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_ssm_maintenance_window_task`.
const Set<String> _awsSsmMaintenanceWindowTaskSensitive = <String>{
  'task_invocation_parameters.lambda_parameters.payload',
  'task_invocation_parameters.step_functions_parameters.input',
};

/// Ssm Maintenance Window Task Cutoff enum for `cutoff_behavior`.
extension type const SsmMaintenanceWindowTaskCutoffBehavior._(TfArg<String> _)
    implements TfArg<String> {
  SsmMaintenanceWindowTaskCutoffBehavior.variable(String name)
    : this._(TfArg.variable(name));
  SsmMaintenanceWindowTaskCutoffBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const SsmMaintenanceWindowTaskCutoffBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const continueTask = SsmMaintenanceWindowTaskCutoffBehavior._(
    TfArgLiteral('CONTINUE_TASK'),
  );
  static const cancelTask = SsmMaintenanceWindowTaskCutoffBehavior._(
    TfArgLiteral('CANCEL_TASK'),
  );

  static const List<SsmMaintenanceWindowTaskCutoffBehavior> values = [
    continueTask,
    cancelTask,
  ];
}

/// Ssm Maintenance Window Task enum for `task_type`.
extension type const SsmMaintenanceWindowTaskType._(TfArg<String> _)
    implements TfArg<String> {
  SsmMaintenanceWindowTaskType.variable(String name)
    : this._(TfArg.variable(name));
  SsmMaintenanceWindowTaskType.expression(String template)
    : this._(TfArg.expression(template));
  const SsmMaintenanceWindowTaskType.arg(TfArg<String> arg) : this._(arg);

  static const runCommand = SsmMaintenanceWindowTaskType._(
    TfArgLiteral('RUN_COMMAND'),
  );
  static const automation = SsmMaintenanceWindowTaskType._(
    TfArgLiteral('AUTOMATION'),
  );
  static const stepFunctions = SsmMaintenanceWindowTaskType._(
    TfArgLiteral('STEP_FUNCTIONS'),
  );
  static const lambda = SsmMaintenanceWindowTaskType._(TfArgLiteral('LAMBDA'));

  static const List<SsmMaintenanceWindowTaskType> values = [
    runCommand,
    automation,
    stepFunctions,
    lambda,
  ];
}

/// Typed helper for the `targets` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskTargets {
  const SsmMaintenanceWindowTaskTargets({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `task_invocation_parameters` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskInvocationParameters {
  const SsmMaintenanceWindowTaskInvocationParameters({
    this.automationParameters,
    this.lambdaParameters,
    this.runCommandParameters,
    this.stepFunctionsParameters,
  });

  final SsmMaintenanceWindowTaskAutomationParameters? automationParameters;

  final SsmMaintenanceWindowTaskLambdaParameters? lambdaParameters;

  final SsmMaintenanceWindowTaskRunCommandParameters? runCommandParameters;

  final SsmMaintenanceWindowTaskStepFunctionsParameters?
  stepFunctionsParameters;

  Map<String, Object?> encode() => {
    'automation_parameters': ?automationParameters?.encode(),
    'lambda_parameters': ?lambdaParameters?.encode(),
    'run_command_parameters': ?runCommandParameters?.encode(),
    'step_functions_parameters': ?stepFunctionsParameters?.encode(),
  };
}

/// Typed helper for the `task_invocation_parameters.automation_parameters` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskAutomationParameters {
  const SsmMaintenanceWindowTaskAutomationParameters({
    this.documentVersion,
    this.parameter,
  });

  final TfArg<String>? documentVersion;

  final List<SsmMaintenanceWindowTaskParameter>? parameter;

  Map<String, Object?> encode() => {
    'document_version': ?documentVersion?.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// Typed helper for the `task_invocation_parameters.automation_parameters.parameter` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SsmMaintenanceWindowTaskParameter {
  const SsmMaintenanceWindowTaskParameter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `task_invocation_parameters.lambda_parameters` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskLambdaParameters {
  const SsmMaintenanceWindowTaskLambdaParameters({
    this.clientContext,
    this.payload,
    this.qualifier,
  });

  final TfArg<String>? clientContext;

  final TfArg<String>? payload;

  final TfArg<String>? qualifier;

  Map<String, Object?> encode() => {
    'client_context': ?clientContext?.toTfJson(),
    'payload': ?payload?.toTfJson(),
    'qualifier': ?qualifier?.toTfJson(),
  };
}

/// Typed helper for the `task_invocation_parameters.run_command_parameters` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskRunCommandParameters {
  const SsmMaintenanceWindowTaskRunCommandParameters({
    this.comment,
    this.documentHash,
    this.documentHashType,
    this.documentVersion,
    this.outputS3Bucket,
    this.outputS3KeyPrefix,
    this.serviceRoleArn,
    this.timeoutSeconds,
    this.cloudwatchConfig,
    this.notificationConfig,
    this.parameter,
  });

  final TfArg<String>? comment;

  final TfArg<String>? documentHash;

  final SsmMaintenanceWindowTaskDocumentHashType? documentHashType;

  final TfArg<String>? documentVersion;

  final TfArg<String>? outputS3Bucket;

  final TfArg<String>? outputS3KeyPrefix;

  final RefTo<AwsIamRole>? serviceRoleArn;

  final TfArg<num>? timeoutSeconds;

  final SsmMaintenanceWindowTaskCloudwatchConfig? cloudwatchConfig;

  final SsmMaintenanceWindowTaskNotificationConfig? notificationConfig;

  final List<SsmMaintenanceWindowTaskParameter>? parameter;

  Map<String, Object?> encode() => {
    'comment': ?comment?.toTfJson(),
    'document_hash': ?documentHash?.toTfJson(),
    'document_hash_type': ?documentHashType?.toTfJson(),
    'document_version': ?documentVersion?.toTfJson(),
    'output_s3_bucket': ?outputS3Bucket?.toTfJson(),
    'output_s3_key_prefix': ?outputS3KeyPrefix?.toTfJson(),
    'service_role_arn': ?serviceRoleArn?.encodeAs('arn').toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'cloudwatch_config': ?cloudwatchConfig?.encode(),
    'notification_config': ?notificationConfig?.encode(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// `document_hash_type` — derived from the provider schema description.
extension type const SsmMaintenanceWindowTaskDocumentHashType._(TfArg<String> _)
    implements TfArg<String> {
  SsmMaintenanceWindowTaskDocumentHashType.variable(String name)
    : this._(TfArg.variable(name));
  SsmMaintenanceWindowTaskDocumentHashType.expression(String template)
    : this._(TfArg.expression(template));
  const SsmMaintenanceWindowTaskDocumentHashType.arg(TfArg<String> arg)
    : this._(arg);

  static const sha256 = SsmMaintenanceWindowTaskDocumentHashType._(
    TfArgLiteral('Sha256'),
  );
  static const sha1 = SsmMaintenanceWindowTaskDocumentHashType._(
    TfArgLiteral('Sha1'),
  );

  static const List<SsmMaintenanceWindowTaskDocumentHashType> values = [
    sha256,
    sha1,
  ];
}

/// Typed helper for the `task_invocation_parameters.run_command_parameters.cloudwatch_config` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskCloudwatchConfig {
  const SsmMaintenanceWindowTaskCloudwatchConfig({
    this.cloudwatchLogGroupName,
    this.cloudwatchOutputEnabled,
  });

  final RefTo<AwsCloudwatchLogGroup>? cloudwatchLogGroupName;

  final TfArg<bool>? cloudwatchOutputEnabled;

  Map<String, Object?> encode() => {
    'cloudwatch_log_group_name': ?cloudwatchLogGroupName
        ?.encodeAs('name')
        .toTfJson(),
    'cloudwatch_output_enabled': ?cloudwatchOutputEnabled?.toTfJson(),
  };
}

/// Typed helper for the `task_invocation_parameters.run_command_parameters.notification_config` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskNotificationConfig {
  const SsmMaintenanceWindowTaskNotificationConfig({
    this.notificationArn,
    this.notificationEvents,
    this.notificationType,
  });

  final TfArg<String>? notificationArn;

  final List<SsmMaintenanceWindowTaskNotificationEvents>? notificationEvents;

  final SsmMaintenanceWindowTaskNotificationType? notificationType;

  Map<String, Object?> encode() => {
    'notification_arn': ?notificationArn?.toTfJson(),
    if (notificationEvents != null)
      'notification_events': [
        for (final e in notificationEvents!) e.toTfJson(),
      ],
    'notification_type': ?notificationType?.toTfJson(),
  };
}

/// `notification_events` — derived from the provider schema description.
extension type const SsmMaintenanceWindowTaskNotificationEvents._(
  TfArg<String> _
) implements TfArg<String> {
  SsmMaintenanceWindowTaskNotificationEvents.variable(String name)
    : this._(TfArg.variable(name));
  SsmMaintenanceWindowTaskNotificationEvents.expression(String template)
    : this._(TfArg.expression(template));
  const SsmMaintenanceWindowTaskNotificationEvents.arg(TfArg<String> arg)
    : this._(arg);

  static const all = SsmMaintenanceWindowTaskNotificationEvents._(
    TfArgLiteral('All'),
  );
  static const inprogress = SsmMaintenanceWindowTaskNotificationEvents._(
    TfArgLiteral('InProgress'),
  );
  static const success = SsmMaintenanceWindowTaskNotificationEvents._(
    TfArgLiteral('Success'),
  );
  static const timedout = SsmMaintenanceWindowTaskNotificationEvents._(
    TfArgLiteral('TimedOut'),
  );
  static const cancelled = SsmMaintenanceWindowTaskNotificationEvents._(
    TfArgLiteral('Cancelled'),
  );
  static const failed = SsmMaintenanceWindowTaskNotificationEvents._(
    TfArgLiteral('Failed'),
  );

  static const List<SsmMaintenanceWindowTaskNotificationEvents> values = [
    all,
    inprogress,
    success,
    timedout,
    cancelled,
    failed,
  ];
}

/// `notification_type` — derived from the provider schema description.
extension type const SsmMaintenanceWindowTaskNotificationType._(TfArg<String> _)
    implements TfArg<String> {
  SsmMaintenanceWindowTaskNotificationType.variable(String name)
    : this._(TfArg.variable(name));
  SsmMaintenanceWindowTaskNotificationType.expression(String template)
    : this._(TfArg.expression(template));
  const SsmMaintenanceWindowTaskNotificationType.arg(TfArg<String> arg)
    : this._(arg);

  static const command = SsmMaintenanceWindowTaskNotificationType._(
    TfArgLiteral('Command'),
  );
  static const invocation = SsmMaintenanceWindowTaskNotificationType._(
    TfArgLiteral('Invocation'),
  );

  static const List<SsmMaintenanceWindowTaskNotificationType> values = [
    command,
    invocation,
  ];
}

/// Typed helper for the `task_invocation_parameters.step_functions_parameters` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskStepFunctionsParameters {
  const SsmMaintenanceWindowTaskStepFunctionsParameters({
    this.input,
    this.name,
  });

  final TfArg<String>? input;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'input': ?input?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_maintenance_window_task`.
final class AwsSsmMaintenanceWindowTask extends Resource {
  static const String tfType = 'aws_ssm_maintenance_window_task';

  AwsSsmMaintenanceWindowTask(
    super.localName, {
    SsmMaintenanceWindowTaskCutoffBehavior? cutoffBehavior,
    TfArg<String>? description,
    TfArg<String>? maxConcurrency,
    TfArg<String>? maxErrors,
    TfArg<String>? name,
    TfArg<num>? priority,
    TfArg<String>? region,
    RefTo<AwsIamRole>? serviceRoleArn,
    required TfArg<String> taskArn,
    required SsmMaintenanceWindowTaskType taskType,
    required TfArg<String> windowId,
    List<SsmMaintenanceWindowTaskTargets>? targets,
    SsmMaintenanceWindowTaskInvocationParameters? taskInvocationParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cutoff_behavior': ?cutoffBehavior,
           'description': ?description,
           'max_concurrency': ?maxConcurrency,
           'max_errors': ?maxErrors,
           'name': ?name,
           'priority': ?priority,
           'region': ?region,
           'service_role_arn': ?serviceRoleArn?.encodeAs('arn'),
           'task_arn': taskArn,
           'task_type': taskType,
           'window_id': windowId,
           if (targets != null)
             'targets': TfArg.literal([for (final e in targets) e.encode()]),
           if (taskInvocationParameters != null)
             'task_invocation_parameters': TfArg.literal(
               taskInvocationParameters.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmMaintenanceWindowTaskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmMaintenanceWindowTask>`.
  RefTo<AwsSsmMaintenanceWindowTask> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `window_task_id` attribute.
  TfRef<String> get windowTaskId =>
      TfRef.attribute<String>(this, 'window_task_id');

  /// Reference to `cutoff_behavior` attribute.
  TfRef<String> get cutoffBehavior =>
      TfRef.attribute<String>(this, 'cutoff_behavior');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `max_concurrency` attribute.
  TfRef<String> get maxConcurrency =>
      TfRef.attribute<String>(this, 'max_concurrency');

  /// Reference to `max_errors` attribute.
  TfRef<String> get maxErrors => TfRef.attribute<String>(this, 'max_errors');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_role_arn` attribute.
  TfRef<String> get serviceRoleArn =>
      TfRef.attribute<String>(this, 'service_role_arn');

  /// Reference to `task_arn` attribute.
  TfRef<String> get taskArn => TfRef.attribute<String>(this, 'task_arn');

  /// Reference to `task_type` attribute.
  TfRef<String> get taskType => TfRef.attribute<String>(this, 'task_type');

  /// Reference to `window_id` attribute.
  TfRef<String> get windowId => TfRef.attribute<String>(this, 'window_id');
}
