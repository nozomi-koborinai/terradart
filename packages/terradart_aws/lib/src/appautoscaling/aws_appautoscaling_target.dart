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

  /// Reference to `max_capacity` attribute.
  TfRef<num> get maxCapacityRef => TfRef.attribute<num>(this, 'max_capacity');

  /// Reference to `min_capacity` attribute.
  TfRef<num> get minCapacityRef => TfRef.attribute<num>(this, 'min_capacity');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceIdRef =>
      TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `scalable_dimension` attribute.
  TfRef<String> get scalableDimensionRef =>
      TfRef.attribute<String>(this, 'scalable_dimension');

  /// Reference to `service_namespace` attribute.
  TfRef<String> get serviceNamespaceRef =>
      TfRef.attribute<String>(this, 'service_namespace');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
