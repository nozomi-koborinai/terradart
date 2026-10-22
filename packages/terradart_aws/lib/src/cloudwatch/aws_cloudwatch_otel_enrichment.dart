// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_otel_enrichment`.
const Set<String> _awsCloudwatchOtelEnrichmentSensitive = <String>{};

/// Typed helper for the `exclude_filter` block of
/// `aws_cloudwatch_otel_enrichment` (derived from provider schema).
@immutable
final class CloudwatchOtelEnrichmentExcludeFilter {
  const CloudwatchOtelEnrichmentExcludeFilter({
    this.metricNames,
    required this.namespace,
  });

  final TfArg<List<String>>? metricNames;

  final TfArg<String> namespace;

  @internal
  Map<String, Object?> encode() => {
    'metric_names': ?metricNames?.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Typed helper for the `include_filter` block of
/// `aws_cloudwatch_otel_enrichment` (derived from provider schema).
@immutable
final class CloudwatchOtelEnrichmentIncludeFilter {
  const CloudwatchOtelEnrichmentIncludeFilter({
    this.metricNames,
    required this.namespace,
  });

  final TfArg<List<String>>? metricNames;

  final TfArg<String> namespace;

  @internal
  Map<String, Object?> encode() => {
    'metric_names': ?metricNames?.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_otel_enrichment`.
final class AwsCloudwatchOtelEnrichment extends Resource {
  static const String tfType = 'aws_cloudwatch_otel_enrichment';

  AwsCloudwatchOtelEnrichment(
    super.localName, {
    TfArg<String>? region,
    List<CloudwatchOtelEnrichmentExcludeFilter>? excludeFilter,
    List<CloudwatchOtelEnrichmentIncludeFilter>? includeFilter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           if (excludeFilter != null)
             'exclude_filter': TfArg.literal([
               for (final e in excludeFilter) e.encode(),
             ]),
           if (includeFilter != null)
             'include_filter': TfArg.literal([
               for (final e in includeFilter) e.encode(),
             ]),
         },
       );

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
