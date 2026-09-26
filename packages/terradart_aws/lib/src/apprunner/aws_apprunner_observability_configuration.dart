// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apprunner_observability_configuration`.
const Set<String> _awsApprunnerObservabilityConfigurationSensitive = <String>{};

/// Typed helper for the `trace_configuration` block of
/// `aws_apprunner_observability_configuration` (derived from provider schema).
@immutable
final class ApprunnerObservabilityConfigurationTraceConfiguration {
  const ApprunnerObservabilityConfigurationTraceConfiguration({this.vendor});

  final TfArg<String>? vendor;

  Map<String, Object?> encode() => {
    if (vendor != null) 'vendor': vendor!.toTfJson(),
  };
}

/// Factory wrapper for `aws_apprunner_observability_configuration`.
final class AwsApprunnerObservabilityConfiguration extends Resource {
  static const String tfType = 'aws_apprunner_observability_configuration';

  AwsApprunnerObservabilityConfiguration({
    required super.localName,
    required TfArg<String> observabilityConfigurationName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ApprunnerObservabilityConfigurationTraceConfiguration? traceConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'observability_configuration_name': observabilityConfigurationName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (traceConfiguration != null)
             'trace_configuration': TfArg.literal(traceConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApprunnerObservabilityConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest` attribute.
  TfRef<bool> get latest => TfRef.attribute<bool>(this, 'latest');

  /// Reference to `observability_configuration_revision` attribute.
  TfRef<num> get observabilityConfigurationRevision =>
      TfRef.attribute<num>(this, 'observability_configuration_revision');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
