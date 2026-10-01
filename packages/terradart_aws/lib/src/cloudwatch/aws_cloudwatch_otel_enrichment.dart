// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_otel_enrichment`.
const Set<String> _awsCloudwatchOtelEnrichmentSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_otel_enrichment`.
final class AwsCloudwatchOtelEnrichment extends Resource {
  static const String tfType = 'aws_cloudwatch_otel_enrichment';

  AwsCloudwatchOtelEnrichment(
    super.localName, {
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsCloudwatchOtelEnrichmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchOtelEnrichment>`.
  RefTo<AwsCloudwatchOtelEnrichment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
