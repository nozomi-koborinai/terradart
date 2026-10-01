// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent_collaborator`.
const Set<String> _awsBedrockagentAgentCollaboratorSensitive = <String>{};

/// Bedrockagent Agent Collaborator Relay Conversation enum for `relay_conversation_history`.
enum BedrockagentAgentCollaboratorRelayConversationHistory
    implements TerraformEnum {
  toCollaborator('TO_COLLABORATOR'),
  disabled('DISABLED');

  const BedrockagentAgentCollaboratorRelayConversationHistory(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `agent_descriptor` block of
/// `aws_bedrockagent_agent_collaborator` (derived from provider schema).
@immutable
final class BedrockagentAgentCollaboratorAgentDescriptor {
  const BedrockagentAgentCollaboratorAgentDescriptor({required this.aliasArn});

  final TfArg<String> aliasArn;

  Map<String, Object?> encode() => {'alias_arn': aliasArn.toTfJson()};
}

/// Factory wrapper for `aws_bedrockagent_agent_collaborator`.
final class AwsBedrockagentAgentCollaborator extends Resource {
  static const String tfType = 'aws_bedrockagent_agent_collaborator';

  AwsBedrockagentAgentCollaborator(
    super.localName, {
    required TfArg<String> agentId,
    TfArg<String>? agentVersion,
    required TfArg<String> collaborationInstruction,
    required TfArg<String> collaboratorName,
    TfArg<bool>? prepareAgent,
    TfArg<String>? region,
    TfArg<BedrockagentAgentCollaboratorRelayConversationHistory>?
    relayConversationHistory,
    List<BedrockagentAgentCollaboratorAgentDescriptor>? agentDescriptor,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
           'agent_version': ?agentVersion,
           'collaboration_instruction': collaborationInstruction,
           'collaborator_name': collaboratorName,
           'prepare_agent': ?prepareAgent,
           'region': ?region,
           'relay_conversation_history': ?relayConversationHistory,
           if (agentDescriptor != null)
             'agent_descriptor': TfArg.literal([
               for (final e in agentDescriptor) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentAgentCollaboratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentAgentCollaborator>`.
  RefTo<AwsBedrockagentAgentCollaborator> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `collaborator_id` attribute.
  TfRef<String> get collaboratorId =>
      TfRef.attribute<String>(this, 'collaborator_id');

  /// Reference to `agent_id` attribute.
  TfRef<String> get agentId => TfRef.attribute<String>(this, 'agent_id');

  /// Reference to `agent_version` attribute.
  TfRef<String> get agentVersion =>
      TfRef.attribute<String>(this, 'agent_version');

  /// Reference to `collaboration_instruction` attribute.
  TfRef<String> get collaborationInstruction =>
      TfRef.attribute<String>(this, 'collaboration_instruction');

  /// Reference to `collaborator_name` attribute.
  TfRef<String> get collaboratorName =>
      TfRef.attribute<String>(this, 'collaborator_name');

  /// Reference to `prepare_agent` attribute.
  TfRef<bool> get prepareAgent => TfRef.attribute<bool>(this, 'prepare_agent');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `relay_conversation_history` attribute.
  TfRef<String> get relayConversationHistory =>
      TfRef.attribute<String>(this, 'relay_conversation_history');
}
