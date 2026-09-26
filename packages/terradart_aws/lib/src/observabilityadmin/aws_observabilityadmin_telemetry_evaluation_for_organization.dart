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
           if (allRegions != null) 'all_regions': allRegions,
           if (region != null) 'region': region,
           if (regions != null) 'regions': regions,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminTelemetryEvaluationForOrganizationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `home_region` attribute.
  TfRef<String> get homeRegion => TfRef.attribute<String>(this, 'home_region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
