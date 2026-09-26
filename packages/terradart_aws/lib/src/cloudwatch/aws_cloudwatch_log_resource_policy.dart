// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_resource_policy`.
const Set<String> _awsCloudwatchLogResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_resource_policy`.
final class AwsCloudwatchLogResourcePolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_resource_policy';

  AwsCloudwatchLogResourcePolicy({
    required super.localName,
    required TfArg<String> policyDocument,
    TfArg<String>? policyName,
    TfArg<String>? region,
    TfArg<String>? resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_document': policyDocument,
           if (policyName != null) 'policy_name': policyName,
           if (region != null) 'region': region,
           if (resourceArn != null) 'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogResourcePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_scope` attribute.
  TfRef<String> get policyScope =>
      TfRef.attribute<String>(this, 'policy_scope');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');
}
