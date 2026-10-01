// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent`.
const Set<String> _awsBedrockagentAgentSensitive = <String>{};

/// Bedrockagent Agent enum for `agent_collaboration`.
enum BedrockagentAgentCollaboration implements TerraformEnum {
  supervisor('SUPERVISOR'),
  supervisorRouter('SUPERVISOR_ROUTER'),
  disabled('DISABLED');

  const BedrockagentAgentCollaboration(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bedrockagent_agent`.
final class AwsBedrockagentAgent extends Resource {
  static const String tfType = 'aws_bedrockagent_agent';

  AwsBedrockagentAgent({
    required super.localName,
    TfArg<BedrockagentAgentCollaboration>? agentCollaboration,
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
           'agent_collaboration': ?agentCollaboration,
           'agent_name': agentName,
           'agent_resource_role_arn': agentResourceRoleArn,
           'customer_encryption_key_arn': ?customerEncryptionKeyArn,
           'description': ?description,
           'foundation_model': foundationModel,
           'guardrail_configuration': ?guardrailConfiguration,
           'idle_session_ttl_in_seconds': ?idleSessionTtlInSeconds,
           'instruction': ?instruction,
           'memory_configuration': ?memoryConfiguration,
           'prepare_agent': ?prepareAgent,
           'prompt_override_configuration': ?promptOverrideConfiguration,
           'region': ?region,
           'skip_resource_in_use_check': ?skipResourceInUseCheck,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentAgent>`.
  RefTo<AwsBedrockagentAgent> get ref => RefTo.of(this);

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

  /// Reference to `agent_collaboration` attribute.
  TfRef<String> get agentCollaboration =>
      TfRef.attribute<String>(this, 'agent_collaboration');

  /// Reference to `agent_name` attribute.
  TfRef<String> get agentName => TfRef.attribute<String>(this, 'agent_name');

  /// Reference to `agent_resource_role_arn` attribute.
  TfRef<String> get agentResourceRoleArn =>
      TfRef.attribute<String>(this, 'agent_resource_role_arn');

  /// Reference to `customer_encryption_key_arn` attribute.
  TfRef<String> get customerEncryptionKeyArn =>
      TfRef.attribute<String>(this, 'customer_encryption_key_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `foundation_model` attribute.
  TfRef<String> get foundationModel =>
      TfRef.attribute<String>(this, 'foundation_model');

  /// Reference to `guardrail_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get guardrailConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'guardrail_configuration',
      );

  /// Reference to `idle_session_ttl_in_seconds` attribute.
  TfRef<num> get idleSessionTtlInSeconds =>
      TfRef.attribute<num>(this, 'idle_session_ttl_in_seconds');

  /// Reference to `instruction` attribute.
  TfRef<String> get instruction => TfRef.attribute<String>(this, 'instruction');

  /// Reference to `memory_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get memoryConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'memory_configuration');

  /// Reference to `prepare_agent` attribute.
  TfRef<bool> get prepareAgent => TfRef.attribute<bool>(this, 'prepare_agent');

  /// Reference to `prompt_override_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get promptOverrideConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'prompt_override_configuration',
      );

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_resource_in_use_check` attribute.
  TfRef<bool> get skipResourceInUseCheck =>
      TfRef.attribute<bool>(this, 'skip_resource_in_use_check');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
