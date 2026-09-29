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
    'sample_size': ?sampleSize?.toTfJson(),
    'shingle_size': ?shingleSize?.toTfJson(),
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

/// Exactly one of `amount`, `ratio` on the `configuration.random_cut_forest.ignore_near_expected_from_above` block of `aws_prometheus_anomaly_detector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.amount(...)`.
sealed class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove();

  /// Sets `amount`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove.amount(
    TfArg<num> amount,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmount;

  /// Sets `ratio`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove.ratio(
    TfArg<num> ratio,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveRatio;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove.amount] choice: sets `amount`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmount
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmount(
    this.amount,
  );

  final TfArg<num> amount;

  @override
  String get blockKey => 'amount';

  @override
  Map<String, Object?> encode() => {'amount': amount.toTfJson()};
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove.ratio] choice: sets `ratio`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveRatio
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveRatio(
    this.ratio,
  );

  final TfArg<num> ratio;

  @override
  String get blockKey => 'ratio';

  @override
  Map<String, Object?> encode() => {'ratio': ratio.toTfJson()};
}

/// Exactly one of `amount`, `ratio` on the `configuration.random_cut_forest.ignore_near_expected_from_below` block of `aws_prometheus_anomaly_detector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.amount(...)`.
sealed class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow();

  /// Sets `amount`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow.amount(
    TfArg<num> amount,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmount;

  /// Sets `ratio`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow.ratio(
    TfArg<num> ratio,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowRatio;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow.amount] choice: sets `amount`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmount
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmount(
    this.amount,
  );

  final TfArg<num> amount;

  @override
  String get blockKey => 'amount';

  @override
  Map<String, Object?> encode() => {'amount': amount.toTfJson()};
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow.ratio] choice: sets `ratio`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowRatio
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowRatio(
    this.ratio,
  );

  final TfArg<num> ratio;

  @override
  String get blockKey => 'ratio';

  @override
  Map<String, Object?> encode() => {'ratio': ratio.toTfJson()};
}

/// Exactly one of `mark_as_anomaly`, `skip` on the `missing_data_action` block of `aws_prometheus_anomaly_detector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.markAsAnomaly(...)`.
sealed class PrometheusAnomalyDetectorMissingDataAction {
  const PrometheusAnomalyDetectorMissingDataAction();

  /// Sets `mark_as_anomaly`.
  const factory PrometheusAnomalyDetectorMissingDataAction.markAsAnomaly(
    TfArg<bool> markAsAnomaly,
  ) = PrometheusAnomalyDetectorMissingDataActionMarkAsAnomaly;

  /// Sets `skip`.
  const factory PrometheusAnomalyDetectorMissingDataAction.skip(
    TfArg<bool> skip,
  ) = PrometheusAnomalyDetectorMissingDataActionSkip;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrometheusAnomalyDetectorMissingDataAction.markAsAnomaly] choice: sets `mark_as_anomaly`.
final class PrometheusAnomalyDetectorMissingDataActionMarkAsAnomaly
    extends PrometheusAnomalyDetectorMissingDataAction {
  const PrometheusAnomalyDetectorMissingDataActionMarkAsAnomaly(
    this.markAsAnomaly,
  );

  final TfArg<bool> markAsAnomaly;

  @override
  String get blockKey => 'mark_as_anomaly';

  @override
  Map<String, Object?> encode() => {
    'mark_as_anomaly': markAsAnomaly.toTfJson(),
  };
}

/// The [PrometheusAnomalyDetectorMissingDataAction.skip] choice: sets `skip`.
final class PrometheusAnomalyDetectorMissingDataActionSkip
    extends PrometheusAnomalyDetectorMissingDataAction {
  const PrometheusAnomalyDetectorMissingDataActionSkip(this.skip);

  final TfArg<bool> skip;

  @override
  String get blockKey => 'skip';

  @override
  Map<String, Object?> encode() => {'skip': skip.toTfJson()};
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
           'evaluation_interval_in_seconds': ?evaluationIntervalInSeconds,
           'labels': ?labels,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPrometheusAnomalyDetector>`.
  RefTo<AwsPrometheusAnomalyDetector> get ref => RefTo.of(this);

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
