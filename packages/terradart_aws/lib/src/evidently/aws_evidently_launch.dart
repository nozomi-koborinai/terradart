// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_evidently_launch`.
const Set<String> _awsEvidentlyLaunchSensitive = <String>{};

/// Typed helper for the `groups` block of
/// `aws_evidently_launch` (derived from provider schema).
@immutable
final class EvidentlyLaunchGroups {
  const EvidentlyLaunchGroups({
    this.description,
    required this.feature,
    required this.name,
    required this.variation,
  });

  final TfArg<String>? description;

  final TfArg<String> feature;

  final TfArg<String> name;

  final TfArg<String> variation;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'feature': feature.toTfJson(),
    'name': name.toTfJson(),
    'variation': variation.toTfJson(),
  };
}

/// Typed helper for the `metric_monitors` block of
/// `aws_evidently_launch` (derived from provider schema).
@immutable
final class EvidentlyLaunchMetricMonitors {
  const EvidentlyLaunchMetricMonitors({required this.metricDefinition});

  final EvidentlyLaunchMetricMonitorsMetricDefinition metricDefinition;

  Map<String, Object?> encode() => {
    'metric_definition': metricDefinition.encode(),
  };
}

/// Typed helper for the `metric_monitors.metric_definition` block of
/// `aws_evidently_launch` (derived from provider schema).
@immutable
final class EvidentlyLaunchMetricMonitorsMetricDefinition {
  const EvidentlyLaunchMetricMonitorsMetricDefinition({
    required this.entityIdKey,
    this.eventPattern,
    required this.name,
    this.unitLabel,
    required this.valueKey,
  });

  final TfArg<String> entityIdKey;

  final TfArg<String>? eventPattern;

  final TfArg<String> name;

  final TfArg<String>? unitLabel;

  final TfArg<String> valueKey;

  Map<String, Object?> encode() => {
    'entity_id_key': entityIdKey.toTfJson(),
    if (eventPattern != null) 'event_pattern': eventPattern!.toTfJson(),
    'name': name.toTfJson(),
    if (unitLabel != null) 'unit_label': unitLabel!.toTfJson(),
    'value_key': valueKey.toTfJson(),
  };
}

/// Typed helper for the `scheduled_splits_config` block of
/// `aws_evidently_launch` (derived from provider schema).
@immutable
final class EvidentlyLaunchScheduledSplitsConfig {
  const EvidentlyLaunchScheduledSplitsConfig({required this.steps});

  final List<EvidentlyLaunchScheduledSplitsConfigSteps> steps;

  Map<String, Object?> encode() => {
    'steps': [for (final e in steps) e.encode()],
  };
}

/// Typed helper for the `scheduled_splits_config.steps` block of
/// `aws_evidently_launch` (derived from provider schema).
@immutable
final class EvidentlyLaunchScheduledSplitsConfigSteps {
  const EvidentlyLaunchScheduledSplitsConfigSteps({
    required this.groupWeights,
    required this.startTime,
    this.segmentOverrides,
  });

  final TfArg<Map<String, num>> groupWeights;

  final TfArg<String> startTime;

  final List<EvidentlyLaunchScheduledSplitsConfigStepsSegmentOverrides>?
  segmentOverrides;

  Map<String, Object?> encode() => {
    'group_weights': groupWeights.toTfJson(),
    'start_time': startTime.toTfJson(),
    if (segmentOverrides != null)
      'segment_overrides': [for (final e in segmentOverrides!) e.encode()],
  };
}

/// Typed helper for the `scheduled_splits_config.steps.segment_overrides` block of
/// `aws_evidently_launch` (derived from provider schema).
@immutable
final class EvidentlyLaunchScheduledSplitsConfigStepsSegmentOverrides {
  const EvidentlyLaunchScheduledSplitsConfigStepsSegmentOverrides({
    required this.evaluationOrder,
    required this.segment,
    required this.weights,
  });

  final TfArg<num> evaluationOrder;

  final TfArg<String> segment;

  final TfArg<Map<String, num>> weights;

  Map<String, Object?> encode() => {
    'evaluation_order': evaluationOrder.toTfJson(),
    'segment': segment.toTfJson(),
    'weights': weights.toTfJson(),
  };
}

/// Factory wrapper for `aws_evidently_launch`.
final class AwsEvidentlyLaunch extends Resource {
  static const String tfType = 'aws_evidently_launch';

  AwsEvidentlyLaunch({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> project,
    TfArg<String>? randomizationSalt,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<EvidentlyLaunchGroups> groups,
    List<EvidentlyLaunchMetricMonitors>? metricMonitors,
    EvidentlyLaunchScheduledSplitsConfig? scheduledSplitsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           'project': project,
           if (randomizationSalt != null)
             'randomization_salt': randomizationSalt,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'groups': TfArg.literal([for (final e in groups) e.encode()]),
           if (metricMonitors != null)
             'metric_monitors': TfArg.literal([
               for (final e in metricMonitors) e.encode(),
             ]),
           if (scheduledSplitsConfig != null)
             'scheduled_splits_config': TfArg.literal(
               scheduledSplitsConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEvidentlyLaunchSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `execution` attribute.
  TfRef<List<Map<String, Object?>>> get execution =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'execution');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
