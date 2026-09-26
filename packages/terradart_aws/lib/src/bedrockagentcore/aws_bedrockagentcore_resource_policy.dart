// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_resource_policy`.
const Set<String> _awsBedrockagentcoreResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_bedrockagentcore_resource_policy`.
final class AwsBedrockagentcoreResourcePolicy extends Resource {
  static const String tfType = 'aws_bedrockagentcore_resource_policy';

  AwsBedrockagentcoreResourcePolicy({
    required super.localName,
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
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreResourcePolicySensitive;
}
