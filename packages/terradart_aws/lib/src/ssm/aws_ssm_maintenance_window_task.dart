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
enum SsmMaintenanceWindowTaskCutoffBehavior implements TerraformEnum {
  continueTask('CONTINUE_TASK'),
  cancelTask('CANCEL_TASK');

  const SsmMaintenanceWindowTaskCutoffBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ssm Maintenance Window Task Task enum for `task_type`.
enum SsmMaintenanceWindowTaskTaskType implements TerraformEnum {
  runCommand('RUN_COMMAND'),
  automation('AUTOMATION'),
  stepFunctions('STEP_FUNCTIONS'),
  lambda('LAMBDA');

  const SsmMaintenanceWindowTaskTaskType(this.terraformValue);
  @override
  final String terraformValue;
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
final class SsmMaintenanceWindowTaskTaskInvocationParameters {
  const SsmMaintenanceWindowTaskTaskInvocationParameters({
    this.automationParameters,
    this.lambdaParameters,
    this.runCommandParameters,
    this.stepFunctionsParameters,
  });

  final SsmMaintenanceWindowTaskTaskInvocationParametersAutomationParameters?
  automationParameters;

  final SsmMaintenanceWindowTaskTaskInvocationParametersLambdaParameters?
  lambdaParameters;

  final SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParameters?
  runCommandParameters;

  final SsmMaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters?
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
final class SsmMaintenanceWindowTaskTaskInvocationParametersAutomationParameters {
  const SsmMaintenanceWindowTaskTaskInvocationParametersAutomationParameters({
    this.documentVersion,
    this.parameter,
  });

  final TfArg<String>? documentVersion;

  final List<
    SsmMaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter
  >?
  parameter;

  Map<String, Object?> encode() => {
    'document_version': ?documentVersion?.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// Typed helper for the `task_invocation_parameters.automation_parameters.parameter` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter {
  const SsmMaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter({
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
final class SsmMaintenanceWindowTaskTaskInvocationParametersLambdaParameters {
  const SsmMaintenanceWindowTaskTaskInvocationParametersLambdaParameters({
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
final class SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParameters {
  const SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParameters({
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

  final TfArg<
    SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersDocumentHashType
  >?
  documentHashType;

  final TfArg<String>? documentVersion;

  final TfArg<String>? outputS3Bucket;

  final TfArg<String>? outputS3KeyPrefix;

  final RefTo<AwsIamRole>? serviceRoleArn;

  final TfArg<num>? timeoutSeconds;

  final SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig?
  cloudwatchConfig;

  final SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig?
  notificationConfig;

  final List<
    SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter
  >?
  parameter;

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
enum SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersDocumentHashType
    implements TerraformEnum {
  sha256('Sha256'),
  sha1('Sha1');

  const SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersDocumentHashType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `task_invocation_parameters.run_command_parameters.cloudwatch_config` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig {
  const SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig({
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
final class SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig {
  const SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig({
    this.notificationArn,
    this.notificationEvents,
    this.notificationType,
  });

  final TfArg<String>? notificationArn;

  final List<
    TfArg<
      SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigNotificationEvents
    >
  >?
  notificationEvents;

  final TfArg<
    SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigNotificationType
  >?
  notificationType;

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
enum SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigNotificationEvents
    implements TerraformEnum {
  all('All'),
  inprogress('InProgress'),
  success('Success'),
  timedout('TimedOut'),
  cancelled('Cancelled'),
  failed('Failed');

  const SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigNotificationEvents(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `notification_type` — derived from the provider schema description.
enum SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigNotificationType
    implements TerraformEnum {
  command('Command'),
  invocation('Invocation');

  const SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigNotificationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `task_invocation_parameters.run_command_parameters.parameter` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter {
  const SsmMaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter({
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

/// Typed helper for the `task_invocation_parameters.step_functions_parameters` block of
/// `aws_ssm_maintenance_window_task` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters {
  const SsmMaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters({
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

  AwsSsmMaintenanceWindowTask({
    required super.localName,
    TfArg<SsmMaintenanceWindowTaskCutoffBehavior>? cutoffBehavior,
    TfArg<String>? description,
    TfArg<String>? maxConcurrency,
    TfArg<String>? maxErrors,
    TfArg<String>? name,
    TfArg<num>? priority,
    TfArg<String>? region,
    RefTo<AwsIamRole>? serviceRoleArn,
    required TfArg<String> taskArn,
    required TfArg<SsmMaintenanceWindowTaskTaskType> taskType,
    required TfArg<String> windowId,
    List<SsmMaintenanceWindowTaskTargets>? targets,
    SsmMaintenanceWindowTaskTaskInvocationParameters? taskInvocationParameters,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `window_task_id` attribute.
  TfRef<String> get windowTaskId =>
      TfRef.attribute<String>(this, 'window_task_id');
}
