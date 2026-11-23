// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_guardrail_resource_policy`.
const Set<String> _awsBedrockGuardrailResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_bedrock_guardrail_resource_policy`.
final class AwsBedrockGuardrailResourcePolicy extends Resource {
  static const String tfType = 'aws_bedrock_guardrail_resource_policy';

  AwsBedrockGuardrailResourcePolicy(
    super.localName, {
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           'region': ?region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockGuardrailResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockGuardrailResourcePolicy>`.
  RefTo<AwsBedrockGuardrailResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
