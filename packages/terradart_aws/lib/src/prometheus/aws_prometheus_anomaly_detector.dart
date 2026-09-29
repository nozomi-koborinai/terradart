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
    required this.ignoreNearExpectedFromAbove,
  });

  final PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAbove
  ignoreNearExpectedFromAbove;

  Map<String, Object?> encode() => {...ignoreNearExpectedFromAbove.encode()};
}

/// Exactly one of `amount`, `ratio` on the `configuration.random_cut_forest.ignore_near_expected_from_above` block of `aws_prometheus_anomaly_detector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.amount(...)`.
sealed class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAbove {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAbove();

  /// Sets `amount`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAbove.amount(
    TfArg<num> amount,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAboveAmount;

  /// Sets `ratio`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAbove.ratio(
    TfArg<num> ratio,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAboveRatio;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAbove.amount] choice: sets `amount`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAboveAmount
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAbove {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAboveAmount(
    this.amount,
  );

  final TfArg<num> amount;

  @override
  String get blockKey => 'amount';

  @override
  Map<String, Object?> encode() => {'amount': amount.toTfJson()};
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAbove.ratio] choice: sets `ratio`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAboveRatio
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAbove {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveIgnoreNearExpectedFromAboveRatio(
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
    required this.ignoreNearExpectedFromBelow,
  });

  final PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelow
  ignoreNearExpectedFromBelow;

  Map<String, Object?> encode() => {...ignoreNearExpectedFromBelow.encode()};
}

/// Exactly one of `amount`, `ratio` on the `configuration.random_cut_forest.ignore_near_expected_from_below` block of `aws_prometheus_anomaly_detector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.amount(...)`.
sealed class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelow {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelow();

  /// Sets `amount`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelow.amount(
    TfArg<num> amount,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelowAmount;

  /// Sets `ratio`.
  const factory PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelow.ratio(
    TfArg<num> ratio,
  ) = PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelowRatio;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelow.amount] choice: sets `amount`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelowAmount
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelow {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelowAmount(
    this.amount,
  );

  final TfArg<num> amount;

  @override
  String get blockKey => 'amount';

  @override
  Map<String, Object?> encode() => {'amount': amount.toTfJson()};
}

/// The [PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelow.ratio] choice: sets `ratio`.
final class PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelowRatio
    extends
        PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelow {
  const PrometheusAnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowIgnoreNearExpectedFromBelowRatio(
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
    required this.missingDataAction,
  });

  final PrometheusAnomalyDetectorMissingDataActionMissingDataAction
  missingDataAction;

  Map<String, Object?> encode() => {...missingDataAction.encode()};
}

/// Exactly one of `mark_as_anomaly`, `skip` on the `missing_data_action` block of `aws_prometheus_anomaly_detector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.markAsAnomaly(...)`.
sealed class PrometheusAnomalyDetectorMissingDataActionMissingDataAction {
  const PrometheusAnomalyDetectorMissingDataActionMissingDataAction();

  /// Sets `mark_as_anomaly`.
  const factory PrometheusAnomalyDetectorMissingDataActionMissingDataAction.markAsAnomaly(
    TfArg<bool> markAsAnomaly,
  ) = PrometheusAnomalyDetectorMissingDataActionMissingDataActionMarkAsAnomaly;

  /// Sets `skip`.
  const factory PrometheusAnomalyDetectorMissingDataActionMissingDataAction.skip(
    TfArg<bool> skip,
  ) = PrometheusAnomalyDetectorMissingDataActionMissingDataActionSkip;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrometheusAnomalyDetectorMissingDataActionMissingDataAction.markAsAnomaly] choice: sets `mark_as_anomaly`.
final class PrometheusAnomalyDetectorMissingDataActionMissingDataActionMarkAsAnomaly
    extends PrometheusAnomalyDetectorMissingDataActionMissingDataAction {
  const PrometheusAnomalyDetectorMissingDataActionMissingDataActionMarkAsAnomaly(
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

/// The [PrometheusAnomalyDetectorMissingDataActionMissingDataAction.skip] choice: sets `skip`.
final class PrometheusAnomalyDetectorMissingDataActionMissingDataActionSkip
    extends PrometheusAnomalyDetectorMissingDataActionMissingDataAction {
  const PrometheusAnomalyDetectorMissingDataActionMissingDataActionSkip(
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
