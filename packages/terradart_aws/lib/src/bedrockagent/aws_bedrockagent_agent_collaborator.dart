// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent_collaborator`.
const Set<String> _awsBedrockagentAgentCollaboratorSensitive = <String>{};

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

  AwsBedrockagentAgentCollaborator({
    required super.localName,
    required TfArg<String> agentId,
    TfArg<String>? agentVersion,
    required TfArg<String> collaborationInstruction,
    required TfArg<String> collaboratorName,
    TfArg<bool>? prepareAgent,
    TfArg<String>? region,
    TfArg<String>? relayConversationHistory,
    List<BedrockagentAgentCollaboratorAgentDescriptor>? agentDescriptor,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
           if (agentVersion != null) 'agent_version': agentVersion,
           'collaboration_instruction': collaborationInstruction,
           'collaborator_name': collaboratorName,
           if (prepareAgent != null) 'prepare_agent': prepareAgent,
           if (region != null) 'region': region,
           if (relayConversationHistory != null)
             'relay_conversation_history': relayConversationHistory,
           if (agentDescriptor != null)
             'agent_descriptor': TfArg.literal([
               for (final e in agentDescriptor) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentAgentCollaboratorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `collaborator_id` attribute.
  TfRef<String> get collaboratorId =>
      TfRef.attribute<String>(this, 'collaborator_id');
}
