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
sealed class ObservabilityadminTelemetryEvaluationMultiRegion {
  const ObservabilityadminTelemetryEvaluationMultiRegion();

  /// Sets `all_regions`.
  const factory ObservabilityadminTelemetryEvaluationMultiRegion.allRegions(
    TfArg<bool> allRegions,
  ) = ObservabilityadminTelemetryEvaluationMultiRegionAllRegions;

  /// Sets `regions`.
  const factory ObservabilityadminTelemetryEvaluationMultiRegion.regions(
    TfArg<List<String>> regions,
  ) = ObservabilityadminTelemetryEvaluationMultiRegionRegions;

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

/// The [ObservabilityadminTelemetryEvaluationMultiRegion.allRegions] choice: sets `all_regions`.
final class ObservabilityadminTelemetryEvaluationMultiRegionAllRegions
    extends ObservabilityadminTelemetryEvaluationMultiRegion {
  const ObservabilityadminTelemetryEvaluationMultiRegionAllRegions(
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

/// The [ObservabilityadminTelemetryEvaluationMultiRegion.regions] choice: sets `regions`.
final class ObservabilityadminTelemetryEvaluationMultiRegionRegions
    extends ObservabilityadminTelemetryEvaluationMultiRegion {
  const ObservabilityadminTelemetryEvaluationMultiRegionRegions(this.regions);

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
    ObservabilityadminTelemetryEvaluationMultiRegion? multiRegion,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {...?multiRegion?.argMap, 'region': ?region},
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
