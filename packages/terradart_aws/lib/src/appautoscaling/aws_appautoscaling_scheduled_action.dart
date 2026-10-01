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
    'max_capacity': ?maxCapacity?.toTfJson(),
    'min_capacity': ?minCapacity?.toTfJson(),
  };
}

/// Factory wrapper for `aws_appautoscaling_scheduled_action`.
final class AwsAppautoscalingScheduledAction extends Resource {
  static const String tfType = 'aws_appautoscaling_scheduled_action';

  AwsAppautoscalingScheduledAction(
    super.localName, {
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
           'end_time': ?endTime,
           'name': name,
           'region': ?region,
           'resource_id': resourceId,
           'scalable_dimension': scalableDimension,
           'schedule': schedule,
           'service_namespace': serviceNamespace,
           'start_time': ?startTime,
           'timezone': ?timezone,
           'scalable_target_action': TfArg.literal(
             scalableTargetAction.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppautoscalingScheduledActionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppautoscalingScheduledAction>`.
  RefTo<AwsAppautoscalingScheduledAction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `scalable_dimension` attribute.
  TfRef<String> get scalableDimension =>
      TfRef.attribute<String>(this, 'scalable_dimension');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `service_namespace` attribute.
  TfRef<String> get serviceNamespace =>
      TfRef.attribute<String>(this, 'service_namespace');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');
}
