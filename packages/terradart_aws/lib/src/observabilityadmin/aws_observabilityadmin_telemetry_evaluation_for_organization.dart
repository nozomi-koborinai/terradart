// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_observabilityadmin_telemetry_evaluation_for_organization`.
const Set<String>
_awsObservabilityadminTelemetryEvaluationForOrganizationSensitive = <String>{};

/// At most one of `all_regions`, `regions` on `aws_observabilityadmin_telemetry_evaluation_for_organization`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.allRegions(...)`.
sealed class ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegions {
  const ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegions();

  /// Sets `all_regions`.
  const factory ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegions.allRegions(
    TfArg<bool> allRegions,
  ) = ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegionsAllRegions;

  /// Sets `regions`.
  const factory ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegions.regions(
    TfArg<List<String>> regions,
  ) = ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegionsChoice;

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

/// The [ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegions.allRegions] choice: sets `all_regions`.
final class ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegionsAllRegions
    extends
        ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegions {
  const ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegionsAllRegions(
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

/// The [ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegions.regions] choice: sets `regions`.
final class ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegionsChoice
    extends
        ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegions {
  const ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegionsChoice(
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

/// Factory wrapper for `aws_observabilityadmin_telemetry_evaluation_for_organization`.
final class AwsObservabilityadminTelemetryEvaluationForOrganization
    extends Resource {
  static const String tfType =
      'aws_observabilityadmin_telemetry_evaluation_for_organization';

  AwsObservabilityadminTelemetryEvaluationForOrganization(
    super.localName, {
    ObservabilityadminTelemetryEvaluationForOrganizationAllRegionsOrRegions?
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
      _awsObservabilityadminTelemetryEvaluationForOrganizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsObservabilityadminTelemetryEvaluationForOrganization>`.
  RefTo<AwsObservabilityadminTelemetryEvaluationForOrganization> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `home_region` attribute.
  TfRef<String> get homeRegion => TfRef.attribute<String>(this, 'home_region');

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
