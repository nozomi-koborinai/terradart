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
    'description': ?description?.toTfJson(),
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

  final EvidentlyLaunchMetricDefinition metricDefinition;

  Map<String, Object?> encode() => {
    'metric_definition': metricDefinition.encode(),
  };
}

/// Typed helper for the `metric_monitors.metric_definition` block of
/// `aws_evidently_launch` (derived from provider schema).
@immutable
final class EvidentlyLaunchMetricDefinition {
  const EvidentlyLaunchMetricDefinition({
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
    'event_pattern': ?eventPattern?.toTfJson(),
    'name': name.toTfJson(),
    'unit_label': ?unitLabel?.toTfJson(),
    'value_key': valueKey.toTfJson(),
  };
}

/// Typed helper for the `scheduled_splits_config` block of
/// `aws_evidently_launch` (derived from provider schema).
@immutable
final class EvidentlyLaunchScheduledSplitsConfig {
  const EvidentlyLaunchScheduledSplitsConfig({required this.steps});

  final List<EvidentlyLaunchSteps> steps;

  Map<String, Object?> encode() => {
    'steps': [for (final e in steps) e.encode()],
  };
}

/// Typed helper for the `scheduled_splits_config.steps` block of
/// `aws_evidently_launch` (derived from provider schema).
@immutable
final class EvidentlyLaunchSteps {
  const EvidentlyLaunchSteps({
    required this.groupWeights,
    required this.startTime,
    this.segmentOverrides,
  });

  final TfArg<Map<String, num>> groupWeights;

  final TfArg<String> startTime;

  final List<EvidentlyLaunchSegmentOverrides>? segmentOverrides;

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
final class EvidentlyLaunchSegmentOverrides {
  const EvidentlyLaunchSegmentOverrides({
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
           'description': ?description,
           'name': name,
           'project': project,
           'randomization_salt': ?randomizationSalt,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEvidentlyLaunch>`.
  RefTo<AwsEvidentlyLaunch> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `randomization_salt` attribute.
  TfRef<String> get randomizationSalt =>
      TfRef.attribute<String>(this, 'randomization_salt');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
