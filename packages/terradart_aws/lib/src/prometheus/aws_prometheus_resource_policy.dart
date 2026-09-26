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
           if (region != null) 'region': region,
           if (revisionId != null) 'revision_id': revisionId,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPrometheusResourcePolicySensitive;
}
