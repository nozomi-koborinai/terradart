// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent`.
const Set<String> _awsBedrockagentAgentSensitive = <String>{};

/// Bedrockagent Agent Agent enum for `agent_collaboration`.
enum BedrockagentAgentAgentCollaboration implements TerraformEnum {
  supervisor('SUPERVISOR'),
  supervisorRouter('SUPERVISOR_ROUTER'),
  disabled('DISABLED');

  const BedrockagentAgentAgentCollaboration(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bedrockagent_agent`.
final class AwsBedrockagentAgent extends Resource {
  static const String tfType = 'aws_bedrockagent_agent';

  AwsBedrockagentAgent({
    required super.localName,
    TfArg<BedrockagentAgentAgentCollaboration>? agentCollaboration,
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
  TfRef<String> get agentCollaborationRef =>
      TfRef.attribute<String>(this, 'agent_collaboration');

  /// Reference to `agent_name` attribute.
  TfRef<String> get agentNameRef => TfRef.attribute<String>(this, 'agent_name');

  /// Reference to `agent_resource_role_arn` attribute.
  TfRef<String> get agentResourceRoleArnRef =>
      TfRef.attribute<String>(this, 'agent_resource_role_arn');

  /// Reference to `customer_encryption_key_arn` attribute.
  TfRef<String> get customerEncryptionKeyArnRef =>
      TfRef.attribute<String>(this, 'customer_encryption_key_arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `foundation_model` attribute.
  TfRef<String> get foundationModelRef =>
      TfRef.attribute<String>(this, 'foundation_model');

  /// Reference to `guardrail_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get guardrailConfigurationRef =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'guardrail_configuration',
      );

  /// Reference to `idle_session_ttl_in_seconds` attribute.
  TfRef<num> get idleSessionTtlInSecondsRef =>
      TfRef.attribute<num>(this, 'idle_session_ttl_in_seconds');

  /// Reference to `instruction` attribute.
  TfRef<String> get instructionRef =>
      TfRef.attribute<String>(this, 'instruction');

  /// Reference to `memory_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get memoryConfigurationRef =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'memory_configuration');

  /// Reference to `prepare_agent` attribute.
  TfRef<bool> get prepareAgentRef =>
      TfRef.attribute<bool>(this, 'prepare_agent');

  /// Reference to `prompt_override_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get promptOverrideConfigurationRef =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'prompt_override_configuration',
      );

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_resource_in_use_check` attribute.
  TfRef<bool> get skipResourceInUseCheckRef =>
      TfRef.attribute<bool>(this, 'skip_resource_in_use_check');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
