// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_anomaly_detector`.
const Set<String> _awsPrometheusAnomalyDetectorSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_prometheus_anomaly_detector` (derived from provider schema).
@immutable
final class PrometheusAnomalyDetectorConfiguration {
  const PrometheusAnomalyDetectorConfiguration({this.randomCutForest});

  final List<PrometheusAnomalyDetectorConfigurationRandomCutForest>?
  randomCutForest;

  Map<String, Object?> encode() => {
    if (randomCutForest != null)
      'random_cut_forest': [for (final e in randomCutForest!) e.encode()],
  };
}

/// Typed helper for the `configuration.random_cut_forest` block of
/// `aws_prometheus_anomaly_detector` (derived from provider schema).
@immutable
final class PrometheusAnomalyDetectorConfigurationRandomCutForest {
  const PrometheusAnomalyDetectorConfigurationRandomCutForest({
    required this.query,
    this.sampleSize,
    this.shingleSize,
    this.ignoreNearExpectedFromAbove,
    this.ignoreNearExpectedFromBelow,
  });

  final TfArg<String> query;

  final TfArg<num>? sampleSize;

  final TfArg<num>? shingleSize;

  final List<
    PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove
  >?
  ignoreNearExpectedFromAbove;

  final List<
    PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow
  >?
  ignoreNearExpectedFromBelow;

  Map<String, Object?> encode() => {
    'query': query.toTfJson(),
    if (sampleSize != null) 'sample_size': sampleSize!.toTfJson(),
    if (shingleSize != null) 'shingle_size': shingleSize!.toTfJson(),
    if (ignoreNearExpectedFromAbove != null)
      'ignore_near_expected_from_above': [
        for (final e in ignoreNearExpectedFromAbove!) e.encode(),
      ],
    if (ignoreNearExpectedFromBelow != null)
      'ignore_near_expected_from_below': [
        for (final e in ignoreNearExpectedFromBelow!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.random_cut_forest.ignore_near_expected_from_above` block of
/// `aws_prometheus_anomaly_detector` (derived from provider schema).
@immutable
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove({
    this.amount,
    this.ratio,
  });

  final TfArg<num>? amount;

  final TfArg<num>? ratio;

  Map<String, Object?> encode() => {
    if (amount != null) 'amount': amount!.toTfJson(),
    if (ratio != null) 'ratio': ratio!.toTfJson(),
  };
}

/// Typed helper for the `configuration.random_cut_forest.ignore_near_expected_from_below` block of
/// `aws_prometheus_anomaly_detector` (derived from provider schema).
@immutable
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow({
    this.amount,
    this.ratio,
  });

  final TfArg<num>? amount;

  final TfArg<num>? ratio;

  Map<String, Object?> encode() => {
    if (amount != null) 'amount': amount!.toTfJson(),
    if (ratio != null) 'ratio': ratio!.toTfJson(),
  };
}

/// Typed helper for the `missing_data_action` block of
/// `aws_prometheus_anomaly_detector` (derived from provider schema).
@immutable
final class PrometheusAnomalyDetectorMissingDataAction {
  const PrometheusAnomalyDetectorMissingDataAction({
    this.markAsAnomaly,
    this.skip,
  });

  final TfArg<bool>? markAsAnomaly;

  final TfArg<bool>? skip;

  Map<String, Object?> encode() => {
    if (markAsAnomaly != null) 'mark_as_anomaly': markAsAnomaly!.toTfJson(),
    if (skip != null) 'skip': skip!.toTfJson(),
  };
}

/// Factory wrapper for `aws_prometheus_anomaly_detector`.
final class AwsPrometheusAnomalyDetector extends Resource {
  static const String tfType = 'aws_prometheus_anomaly_detector';

  AwsPrometheusAnomalyDetector({
    required super.localName,
    required TfArg<String> alias,
    TfArg<num>? evaluationIntervalInSeconds,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    List<PrometheusAnomalyDetectorConfiguration>? configuration,
    List<PrometheusAnomalyDetectorMissingDataAction>? missingDataAction,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': alias,
           if (evaluationIntervalInSeconds != null)
             'evaluation_interval_in_seconds': evaluationIntervalInSeconds,
           if (labels != null) 'labels': labels,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'workspace_id': workspaceId,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
           if (missingDataAction != null)
             'missing_data_action': TfArg.literal([
               for (final e in missingDataAction) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPrometheusAnomalyDetectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
