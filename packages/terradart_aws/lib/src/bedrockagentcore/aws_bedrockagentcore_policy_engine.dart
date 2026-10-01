// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockagentcore_policy_engine`.
const Set<String> _awsBedrockagentcorePolicyEngineSensitive = <String>{};

/// Factory wrapper for `aws_bedrockagentcore_policy_engine`.
final class AwsBedrockagentcorePolicyEngine extends Resource {
  static const String tfType = 'aws_bedrockagentcore_policy_engine';

  AwsBedrockagentcorePolicyEngine(
    super.localName, {
    TfArg<String>? description,
    RefTo<AwsKmsKey>? encryptionKeyArn,
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
           'description': ?description,
           'encryption_key_arn': ?encryptionKeyArn?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcorePolicyEngineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcorePolicyEngine>`.
  RefTo<AwsBedrockagentcorePolicyEngine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `policy_engine_arn` attribute.
  TfRef<String> get policyEngineArn =>
      TfRef.attribute<String>(this, 'policy_engine_arn');

  /// Reference to `policy_engine_id` attribute.
  TfRef<String> get policyEngineId =>
      TfRef.attribute<String>(this, 'policy_engine_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encryption_key_arn` attribute.
  TfRef<String> get encryptionKeyArn =>
      TfRef.attribute<String>(this, 'encryption_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
