// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_autoscaling_lifecycle_hook`.
const Set<String> _awsAutoscalingLifecycleHookSensitive = <String>{};

/// Autoscaling Lifecycle Hook Default enum for `default_result`.
enum AutoscalingLifecycleHookDefaultResult implements TerraformEnum {
  abandon('ABANDON'),
  continueCase('CONTINUE');

  const AutoscalingLifecycleHookDefaultResult(this.terraformValue);
  @override
  final String terraformValue;
}

/// Autoscaling Lifecycle Hook Lifecycle enum for `lifecycle_transition`.
enum AutoscalingLifecycleHookLifecycleTransition implements TerraformEnum {
  autoscalingEc2InstanceLaunching('autoscaling:EC2_INSTANCE_LAUNCHING'),
  autoscalingEc2InstanceTerminating('autoscaling:EC2_INSTANCE_TERMINATING');

  const AutoscalingLifecycleHookLifecycleTransition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_autoscaling_lifecycle_hook`.
final class AwsAutoscalingLifecycleHook extends Resource {
  static const String tfType = 'aws_autoscaling_lifecycle_hook';

  AwsAutoscalingLifecycleHook(
    super.localName, {
    required TfArg<String> autoscalingGroupName,
    TfArg<AutoscalingLifecycleHookDefaultResult>? defaultResult,
    TfArg<num>? heartbeatTimeout,
    required TfArg<AutoscalingLifecycleHookLifecycleTransition>
    lifecycleTransition,
    required TfArg<String> name,
    TfArg<String>? notificationMetadata,
    TfArg<String>? notificationTargetArn,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autoscaling_group_name': autoscalingGroupName,
           'default_result': ?defaultResult,
           'heartbeat_timeout': ?heartbeatTimeout,
           'lifecycle_transition': lifecycleTransition,
           'name': name,
           'notification_metadata': ?notificationMetadata,
           'notification_target_arn': ?notificationTargetArn,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingLifecycleHookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAutoscalingLifecycleHook>`.
  RefTo<AwsAutoscalingLifecycleHook> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autoscaling_group_name` attribute.
  TfRef<String> get autoscalingGroupName =>
      TfRef.attribute<String>(this, 'autoscaling_group_name');

  /// Reference to `default_result` attribute.
  TfRef<String> get defaultResult =>
      TfRef.attribute<String>(this, 'default_result');

  /// Reference to `heartbeat_timeout` attribute.
  TfRef<num> get heartbeatTimeout =>
      TfRef.attribute<num>(this, 'heartbeat_timeout');

  /// Reference to `lifecycle_transition` attribute.
  TfRef<String> get lifecycleTransition =>
      TfRef.attribute<String>(this, 'lifecycle_transition');

  /// Reference to `notification_metadata` attribute.
  TfRef<String> get notificationMetadata =>
      TfRef.attribute<String>(this, 'notification_metadata');

  /// Reference to `notification_target_arn` attribute.
  TfRef<String> get notificationTargetArn =>
      TfRef.attribute<String>(this, 'notification_target_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');
}
