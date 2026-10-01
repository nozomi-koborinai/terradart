// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_observabilityadmin_telemetry_evaluation_for_organization`.
const Set<String>
_awsObservabilityadminTelemetryEvaluationForOrganizationSensitive = <String>{};

/// Factory wrapper for `aws_observabilityadmin_telemetry_evaluation_for_organization`.
final class AwsObservabilityadminTelemetryEvaluationForOrganization
    extends Resource {
  static const String tfType =
      'aws_observabilityadmin_telemetry_evaluation_for_organization';

  AwsObservabilityadminTelemetryEvaluationForOrganization({
    required super.localName,
    TfArg<bool>? allRegions,
    TfArg<String>? region,
    TfArg<List<String>>? regions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'all_regions': ?allRegions,
           'region': ?region,
           'regions': ?regions,
         },
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
