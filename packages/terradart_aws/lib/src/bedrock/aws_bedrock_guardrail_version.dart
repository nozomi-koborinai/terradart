// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_guardrail_version`.
const Set<String> _awsBedrockGuardrailVersionSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_guardrail_version`.
final class AwsBedrockGuardrailVersion extends Resource {
  static const String tfType = 'aws_bedrock_guardrail_version';

  AwsBedrockGuardrailVersion({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> guardrailArn,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'guardrail_arn': guardrailArn,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockGuardrailVersionSensitive;

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
