// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  AwsAutoscalingLifecycleHook({
    required super.localName,
    required TfArg<String> autoscalingGroupName,
    TfArg<AutoscalingLifecycleHookDefaultResult>? defaultResult,
    TfArg<num>? heartbeatTimeout,
    required TfArg<AutoscalingLifecycleHookLifecycleTransition>
    lifecycleTransition,
    required TfArg<String> name,
    TfArg<String>? notificationMetadata,
    TfArg<String>? notificationTargetArn,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autoscaling_group_name': autoscalingGroupName,
           if (defaultResult != null) 'default_result': defaultResult,
           if (heartbeatTimeout != null) 'heartbeat_timeout': heartbeatTimeout,
           'lifecycle_transition': lifecycleTransition,
           'name': name,
           if (notificationMetadata != null)
             'notification_metadata': notificationMetadata,
           if (notificationTargetArn != null)
             'notification_target_arn': notificationTargetArn,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingLifecycleHookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAutoscalingLifecycleHook>`.
  RefTo<AwsAutoscalingLifecycleHook> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
