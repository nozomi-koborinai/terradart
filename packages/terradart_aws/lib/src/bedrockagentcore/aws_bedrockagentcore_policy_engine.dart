// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_policy_engine`.
const Set<String> _awsBedrockagentcorePolicyEngineSensitive = <String>{};

/// Factory wrapper for `aws_bedrockagentcore_policy_engine`.
final class AwsBedrockagentcorePolicyEngine extends Resource {
  static const String tfType = 'aws_bedrockagentcore_policy_engine';

  AwsBedrockagentcorePolicyEngine({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? encryptionKeyArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (encryptionKeyArn != null) 'encryption_key_arn': encryptionKeyArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcorePolicyEngineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `policy_engine_arn` attribute.
  TfRef<String> get policyEngineArn =>
      TfRef.attribute<String>(this, 'policy_engine_arn');

  /// Reference to `policy_engine_id` attribute.
  TfRef<String> get policyEngineId =>
      TfRef.attribute<String>(this, 'policy_engine_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
