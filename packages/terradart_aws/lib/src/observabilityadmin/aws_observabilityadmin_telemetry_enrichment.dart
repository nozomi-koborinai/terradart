// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_observabilityadmin_telemetry_enrichment`.
const Set<String> _awsObservabilityadminTelemetryEnrichmentSensitive =
    <String>{};

/// Factory wrapper for `aws_observabilityadmin_telemetry_enrichment`.
final class AwsObservabilityadminTelemetryEnrichment extends Resource {
  static const String tfType = 'aws_observabilityadmin_telemetry_enrichment';

  AwsObservabilityadminTelemetryEnrichment({
    required super.localName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminTelemetryEnrichmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_resource_explorer_managed_view_arn` attribute.
  TfRef<String> get awsResourceExplorerManagedViewArn =>
      TfRef.attribute<String>(this, 'aws_resource_explorer_managed_view_arn');
}
