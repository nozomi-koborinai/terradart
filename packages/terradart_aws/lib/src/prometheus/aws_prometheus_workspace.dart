// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_prometheus_workspace`.
const Set<String> _awsPrometheusWorkspaceSensitive = <String>{};

/// Typed helper for the `logging_configuration` block of
/// `aws_prometheus_workspace` (derived from provider schema).
@immutable
final class PrometheusWorkspaceLoggingConfiguration {
  const PrometheusWorkspaceLoggingConfiguration({required this.logGroupArn});

  final RefTo<AwsCloudwatchLogGroup> logGroupArn;

  @internal
  Map<String, Object?> encode() => {
    'log_group_arn': logGroupArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_prometheus_workspace`.
final class AwsPrometheusWorkspace extends Resource {
  static const String tfType = 'aws_prometheus_workspace';

  AwsPrometheusWorkspace(
    super.localName, {
    TfArg<String>? alias,
    RefTo<AwsKmsKey>? kmsKeyArn,
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
           'alias': ?alias,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'region': ?region,
           'tags': ?tags,
           if (loggingConfiguration != null)
             'logging_configuration': TfArg.literal(
               loggingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPrometheusWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPrometheusWorkspace>`.
  RefTo<AwsPrometheusWorkspace> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `prometheus_endpoint` attribute.
  TfRef<String> get prometheusEndpoint =>
      TfRef.attribute<String>(this, 'prometheus_endpoint');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
