// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_rule_group_namespace`.
const Set<String> _awsPrometheusRuleGroupNamespaceSensitive = <String>{};

/// Factory wrapper for `aws_prometheus_rule_group_namespace`.
final class AwsPrometheusRuleGroupNamespace extends Resource {
  static const String tfType = 'aws_prometheus_rule_group_namespace';

  AwsPrometheusRuleGroupNamespace({
    required super.localName,
    required TfArg<String> data,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data': data,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPrometheusRuleGroupNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPrometheusRuleGroupNamespace>`.
  RefTo<AwsPrometheusRuleGroupNamespace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `data` attribute.
  TfRef<String> get dataRef => TfRef.attribute<String>(this, 'data');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceIdRef =>
      TfRef.attribute<String>(this, 'workspace_id');
}
