// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_appautoscaling_target`.
const Set<String> _awsAppautoscalingTargetSensitive = <String>{};

/// Typed helper for the `suspended_state` block of
/// `aws_appautoscaling_target` (derived from provider schema).
@immutable
final class AppautoscalingTargetSuspendedState {
  const AppautoscalingTargetSuspendedState({
    this.dynamicScalingInSuspended,
    this.dynamicScalingOutSuspended,
    this.scheduledScalingSuspended,
  });

  final TfArg<bool>? dynamicScalingInSuspended;

  final TfArg<bool>? dynamicScalingOutSuspended;

  final TfArg<bool>? scheduledScalingSuspended;

  Map<String, Object?> encode() => {
    'dynamic_scaling_in_suspended': ?dynamicScalingInSuspended?.toTfJson(),
    'dynamic_scaling_out_suspended': ?dynamicScalingOutSuspended?.toTfJson(),
    'scheduled_scaling_suspended': ?scheduledScalingSuspended?.toTfJson(),
  };
}

/// Factory wrapper for `aws_appautoscaling_target`.
final class AwsAppautoscalingTarget extends Resource {
  static const String tfType = 'aws_appautoscaling_target';

  AwsAppautoscalingTarget({
    required super.localName,
    required TfArg<num> maxCapacity,
    required TfArg<num> minCapacity,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    RefTo<AwsIamRole>? roleArn,
    required TfArg<String> scalableDimension,
    required TfArg<String> serviceNamespace,
    TfArg<Map<String, String>>? tags,
    AppautoscalingTargetSuspendedState? suspendedState,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'max_capacity': maxCapacity,
           'min_capacity': minCapacity,
           'region': ?region,
           'resource_id': resourceId,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'scalable_dimension': scalableDimension,
           'service_namespace': serviceNamespace,
           'tags': ?tags,
           if (suspendedState != null)
             'suspended_state': TfArg.literal(suspendedState.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppautoscalingTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppautoscalingTarget>`.
  RefTo<AwsAppautoscalingTarget> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
