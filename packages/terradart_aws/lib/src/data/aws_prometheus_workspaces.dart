// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_workspaces`.
const Set<String> _awsPrometheusWorkspacesSensitive = <String>{};

/// Factory wrapper for `aws_prometheus_workspaces`.
final class DataAwsPrometheusWorkspaces extends Data {
  static const String tfType = 'aws_prometheus_workspaces';

  DataAwsPrometheusWorkspaces(
    super.localName, {
    TfArg<String>? aliasPrefix,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'alias_prefix': ?aliasPrefix, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsPrometheusWorkspacesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aliases` attribute.
  TfRef<List<String>> get aliases =>
      TfRef.attribute<List<String>>(this, 'aliases');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `workspace_ids` attribute.
  TfRef<List<String>> get workspaceIds =>
      TfRef.attribute<List<String>>(this, 'workspace_ids');

  /// Reference to `alias_prefix` attribute.
  TfRef<String> get aliasPrefix =>
      TfRef.attribute<String>(this, 'alias_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
