// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_observabilityadmin_telemetry_pipeline`.
const Set<String> _awsObservabilityadminTelemetryPipelineSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_observabilityadmin_telemetry_pipeline` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryPipelineConfiguration {
  const ObservabilityadminTelemetryPipelineConfiguration({required this.body});

  final TfArg<String> body;

  Map<String, Object?> encode() => {'body': body.toTfJson()};
}

/// Factory wrapper for `aws_observabilityadmin_telemetry_pipeline`.
final class AwsObservabilityadminTelemetryPipeline extends Resource {
  static const String tfType = 'aws_observabilityadmin_telemetry_pipeline';

  AwsObservabilityadminTelemetryPipeline({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<ObservabilityadminTelemetryPipelineConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminTelemetryPipelineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
