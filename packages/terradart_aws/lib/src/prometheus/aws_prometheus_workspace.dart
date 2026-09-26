// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_workspace`.
const Set<String> _awsPrometheusWorkspaceSensitive = <String>{};

/// Typed helper for the `logging_configuration` block of
/// `aws_prometheus_workspace` (derived from provider schema).
@immutable
final class PrometheusWorkspaceLoggingConfiguration {
  const PrometheusWorkspaceLoggingConfiguration({required this.logGroupArn});

  final TfArg<String> logGroupArn;

  Map<String, Object?> encode() => {'log_group_arn': logGroupArn.toTfJson()};
}

/// Factory wrapper for `aws_prometheus_workspace`.
final class AwsPrometheusWorkspace extends Resource {
  static const String tfType = 'aws_prometheus_workspace';

  AwsPrometheusWorkspace({
    required super.localName,
    TfArg<String>? alias,
    TfArg<String>? kmsKeyArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    PrometheusWorkspaceLoggingConfiguration? loggingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (alias != null) 'alias': alias,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (loggingConfiguration != null)
             'logging_configuration': TfArg.literal(
               loggingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPrometheusWorkspaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `prometheus_endpoint` attribute.
  TfRef<String> get prometheusEndpoint =>
      TfRef.attribute<String>(this, 'prometheus_endpoint');
}
