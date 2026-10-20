// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_observabilityadmin_telemetry_evaluation`.
const Set<String> _awsObservabilityadminTelemetryEvaluationSensitive =
    <String>{};

/// At most one of `all_regions`, `regions` on `aws_observabilityadmin_telemetry_evaluation`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.allRegions(...)`.
sealed class ObservabilityadminTelemetryEvaluationAllRegionsOrRegions {
  const ObservabilityadminTelemetryEvaluationAllRegionsOrRegions();

  /// Sets `all_regions`.
  const factory ObservabilityadminTelemetryEvaluationAllRegionsOrRegions.allRegions(
    TfArg<bool> allRegions,
  ) = ObservabilityadminTelemetryEvaluationAllRegionsOrRegionsAllRegions;

  /// Sets `regions`.
  const factory ObservabilityadminTelemetryEvaluationAllRegionsOrRegions.regions(
    TfArg<List<String>> regions,
  ) = ObservabilityadminTelemetryEvaluationAllRegionsOrRegionsChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ObservabilityadminTelemetryEvaluationAllRegionsOrRegions.allRegions] choice: sets `all_regions`.
final class ObservabilityadminTelemetryEvaluationAllRegionsOrRegionsAllRegions
    extends ObservabilityadminTelemetryEvaluationAllRegionsOrRegions {
  const ObservabilityadminTelemetryEvaluationAllRegionsOrRegionsAllRegions(
    this.allRegions,
  );

  final TfArg<bool> allRegions;

  @internal
  @override
  String get blockKey => 'all_regions';

  @internal
  @override
  Map<String, Object?> encode() => {'all_regions': allRegions.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'all_regions': allRegions};
}

/// The [ObservabilityadminTelemetryEvaluationAllRegionsOrRegions.regions] choice: sets `regions`.
final class ObservabilityadminTelemetryEvaluationAllRegionsOrRegionsChoice
    extends ObservabilityadminTelemetryEvaluationAllRegionsOrRegions {
  const ObservabilityadminTelemetryEvaluationAllRegionsOrRegionsChoice(
    this.regions,
  );

  final TfArg<List<String>> regions;

  @internal
  @override
  String get blockKey => 'regions';

  @internal
  @override
  Map<String, Object?> encode() => {'regions': regions.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'regions': regions};
}

/// Factory wrapper for `aws_observabilityadmin_telemetry_evaluation`.
final class AwsObservabilityadminTelemetryEvaluation extends Resource {
  static const String tfType = 'aws_observabilityadmin_telemetry_evaluation';

  AwsObservabilityadminTelemetryEvaluation(
    super.localName, {
    ObservabilityadminTelemetryEvaluationAllRegionsOrRegions?
    allRegionsOrRegions,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {...?allRegionsOrRegions?.argMap, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminTelemetryEvaluationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsObservabilityadminTelemetryEvaluation>`.
  RefTo<AwsObservabilityadminTelemetryEvaluation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `all_regions` attribute.
  TfRef<bool> get allRegions => TfRef.attribute<bool>(this, 'all_regions');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');
}
