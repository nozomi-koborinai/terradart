// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../prometheus/aws_prometheus_workspace.dart';

/// Sensitive field paths for `aws_prometheus_workspace`.
const Set<String> _awsPrometheusWorkspaceSensitive = <String>{};

/// Factory wrapper for `aws_prometheus_workspace`.
final class DataAwsPrometheusWorkspace extends Data {
  static const String tfType = 'aws_prometheus_workspace';

  DataAwsPrometheusWorkspace({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'tags': ?tags,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPrometheusWorkspaceSensitive;

  /// A reference to the `aws_prometheus_workspace` this data source reads, for
  /// arguments typed `RefTo<AwsPrometheusWorkspace>`.
  RefTo<AwsPrometheusWorkspace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `prometheus_endpoint` attribute.
  TfRef<String> get prometheusEndpoint =>
      TfRef.attribute<String>(this, 'prometheus_endpoint');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
