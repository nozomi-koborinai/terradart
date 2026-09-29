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
    required this.amountOrRatio,
  });

  final PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatio
  amountOrRatio;

  Map<String, Object?> encode() => {...amountOrRatio.encode()};
}

/// Exactly one of `amount`, `ratio` on the `configuration.random_cut_forest.ignore_near_expected_from_above` block of `aws_prometheus_anomaly_detector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.amount(...)`.
sealed class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatio {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatio();

  /// Sets `amount`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatio.amount(
    TfArg<num> amount,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatioAmount;

  /// Sets `ratio`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatio.ratio(
    TfArg<num> ratio,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatioRatio;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatio.amount] choice: sets `amount`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatioAmount
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatio {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatioAmount(
    this.amount,
  );

  final TfArg<num> amount;

  @override
  String get blockKey => 'amount';

  @override
  Map<String, Object?> encode() => {'amount': amount.toTfJson()};
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatio.ratio] choice: sets `ratio`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatioRatio
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatio {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveAmountOrRatioRatio(
    this.ratio,
  );

  final TfArg<num> ratio;

  @override
  String get blockKey => 'ratio';

  @override
  Map<String, Object?> encode() => {'ratio': ratio.toTfJson()};
}

/// Typed helper for the `configuration.random_cut_forest.ignore_near_expected_from_below` block of
/// `aws_prometheus_anomaly_detector` (derived from provider schema).
@immutable
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow({
    required this.amountOrRatio,
  });

  final PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatio
  amountOrRatio;

  Map<String, Object?> encode() => {...amountOrRatio.encode()};
}

/// Exactly one of `amount`, `ratio` on the `configuration.random_cut_forest.ignore_near_expected_from_below` block of `aws_prometheus_anomaly_detector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.amount(...)`.
sealed class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatio {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatio();

  /// Sets `amount`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatio.amount(
    TfArg<num> amount,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatioAmount;

  /// Sets `ratio`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatio.ratio(
    TfArg<num> ratio,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatioRatio;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatio.amount] choice: sets `amount`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatioAmount
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatio {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatioAmount(
    this.amount,
  );

  final TfArg<num> amount;

  @override
  String get blockKey => 'amount';

  @override
  Map<String, Object?> encode() => {'amount': amount.toTfJson()};
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatio.ratio] choice: sets `ratio`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatioRatio
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatio {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowAmountOrRatioRatio(
    this.ratio,
  );

  final TfArg<num> ratio;

  @override
  String get blockKey => 'ratio';

  @override
  Map<String, Object?> encode() => {'ratio': ratio.toTfJson()};
}

/// Typed helper for the `missing_data_action` block of
/// `aws_prometheus_anomaly_detector` (derived from provider schema).
@immutable
final class PrometheusAnomalyDetectorMissingDataAction {
  const PrometheusAnomalyDetectorMissingDataAction({
    required this.markAsAnomalyOrSkip,
  });

  final PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkip
  markAsAnomalyOrSkip;

  Map<String, Object?> encode() => {...markAsAnomalyOrSkip.encode()};
}

/// Exactly one of `mark_as_anomaly`, `skip` on the `missing_data_action` block of `aws_prometheus_anomaly_detector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.markAsAnomaly(...)`.
sealed class PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkip {
  const PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkip();

  /// Sets `mark_as_anomaly`.
  const factory PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkip.markAsAnomaly(
    TfArg<bool> markAsAnomaly,
  ) = PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkipMarkAsAnomaly;

  /// Sets `skip`.
  const factory PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkip.skip(
    TfArg<bool> skip,
  ) = PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkipSkip;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkip.markAsAnomaly] choice: sets `mark_as_anomaly`.
final class PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkipMarkAsAnomaly
    extends PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkip {
  const PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkipMarkAsAnomaly(
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

/// The [PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkip.skip] choice: sets `skip`.
final class PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkipSkip
    extends PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkip {
  const PrometheusAnomalyDetectorMissingDataActionMarkAsAnomalyOrSkipSkip(
    this.skip,
  );

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
