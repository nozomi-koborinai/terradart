// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_resource_policy`.
const Set<String> _awsPrometheusResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_prometheus_resource_policy`.
final class AwsPrometheusResourcePolicy extends Resource {
  static const String tfType = 'aws_prometheus_resource_policy';

  AwsPrometheusResourcePolicy({
    required super.localName,
    required TfArg<String> policyDocument,
    TfArg<String>? region,
    TfArg<String>? revisionId,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_document': policyDocument,
           'region': ?region,
           'revision_id': ?revisionId,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPrometheusResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPrometheusResourcePolicy>`.
  RefTo<AwsPrometheusResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `policy_document` attribute.
  TfRef<String> get policyDocument =>
      TfRef.attribute<String>(this, 'policy_document');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
