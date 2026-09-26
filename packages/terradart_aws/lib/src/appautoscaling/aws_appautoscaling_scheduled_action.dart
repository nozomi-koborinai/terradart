// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appautoscaling_scheduled_action`.
const Set<String> _awsAppautoscalingScheduledActionSensitive = <String>{};

/// Typed helper for the `scalable_target_action` block of
/// `aws_appautoscaling_scheduled_action` (derived from provider schema).
@immutable
final class AppautoscalingScheduledActionScalableTargetAction {
  const AppautoscalingScheduledActionScalableTargetAction({
    this.maxCapacity,
    this.minCapacity,
  });

  final TfArg<String>? maxCapacity;

  final TfArg<String>? minCapacity;

  Map<String, Object?> encode() => {
    if (maxCapacity != null) 'max_capacity': maxCapacity!.toTfJson(),
    if (minCapacity != null) 'min_capacity': minCapacity!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appautoscaling_scheduled_action`.
final class AwsAppautoscalingScheduledAction extends Resource {
  static const String tfType = 'aws_appautoscaling_scheduled_action';

  AwsAppautoscalingScheduledAction({
    required super.localName,
    TfArg<String>? endTime,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    required TfArg<String> scalableDimension,
    required TfArg<String> schedule,
    required TfArg<String> serviceNamespace,
    TfArg<String>? startTime,
    TfArg<String>? timezone,
    required AppautoscalingScheduledActionScalableTargetAction
    scalableTargetAction,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (endTime != null) 'end_time': endTime,
           'name': name,
           if (region != null) 'region': region,
           'resource_id': resourceId,
           'scalable_dimension': scalableDimension,
           'schedule': schedule,
           'service_namespace': serviceNamespace,
           if (startTime != null) 'start_time': startTime,
           if (timezone != null) 'timezone': timezone,
           'scalable_target_action': TfArg.literal(
             scalableTargetAction.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppautoscalingScheduledActionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
