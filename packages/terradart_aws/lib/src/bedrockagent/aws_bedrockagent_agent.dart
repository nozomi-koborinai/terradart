// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent`.
const Set<String> _awsBedrockagentAgentSensitive = <String>{};

/// Factory wrapper for `aws_bedrockagent_agent`.
final class AwsBedrockagentAgent extends Resource {
  static const String tfType = 'aws_bedrockagent_agent';

  AwsBedrockagentAgent({
    required super.localName,
    TfArg<String>? agentCollaboration,
    required TfArg<String> agentName,
    required TfArg<String> agentResourceRoleArn,
    TfArg<String>? customerEncryptionKeyArn,
    TfArg<String>? description,
    required TfArg<String> foundationModel,
    TfArg<List<Map<String, Object?>>>? guardrailConfiguration,
    TfArg<num>? idleSessionTtlInSeconds,
    TfArg<String>? instruction,
    TfArg<List<Map<String, Object?>>>? memoryConfiguration,
    TfArg<bool>? prepareAgent,
    TfArg<List<Map<String, Object?>>>? promptOverrideConfiguration,
    TfArg<String>? region,
    TfArg<bool>? skipResourceInUseCheck,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (agentCollaboration != null)
             'agent_collaboration': agentCollaboration,
           'agent_name': agentName,
           'agent_resource_role_arn': agentResourceRoleArn,
           if (customerEncryptionKeyArn != null)
             'customer_encryption_key_arn': customerEncryptionKeyArn,
           if (description != null) 'description': description,
           'foundation_model': foundationModel,
           if (guardrailConfiguration != null)
             'guardrail_configuration': guardrailConfiguration,
           if (idleSessionTtlInSeconds != null)
             'idle_session_ttl_in_seconds': idleSessionTtlInSeconds,
           if (instruction != null) 'instruction': instruction,
           if (memoryConfiguration != null)
             'memory_configuration': memoryConfiguration,
           if (prepareAgent != null) 'prepare_agent': prepareAgent,
           if (promptOverrideConfiguration != null)
             'prompt_override_configuration': promptOverrideConfiguration,
           if (region != null) 'region': region,
           if (skipResourceInUseCheck != null)
             'skip_resource_in_use_check': skipResourceInUseCheck,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentAgentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_arn` attribute.
  TfRef<String> get agentArn => TfRef.attribute<String>(this, 'agent_arn');

  /// Reference to `agent_id` attribute.
  TfRef<String> get agentId => TfRef.attribute<String>(this, 'agent_id');

  /// Reference to `agent_version` attribute.
  TfRef<String> get agentVersion =>
      TfRef.attribute<String>(this, 'agent_version');

  /// Reference to `prepared_at` attribute.
  TfRef<String> get preparedAt => TfRef.attribute<String>(this, 'prepared_at');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
