// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent_knowledge_base_association`.
const Set<String> _awsBedrockagentAgentKnowledgeBaseAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_bedrockagent_agent_knowledge_base_association`.
final class AwsBedrockagentAgentKnowledgeBaseAssociation extends Resource {
  static const String tfType =
      'aws_bedrockagent_agent_knowledge_base_association';

  AwsBedrockagentAgentKnowledgeBaseAssociation({
    required super.localName,
    required TfArg<String> agentId,
    TfArg<String>? agentVersion,
    required TfArg<String> description,
    required TfArg<String> knowledgeBaseId,
    required TfArg<String> knowledgeBaseState,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
           if (agentVersion != null) 'agent_version': agentVersion,
           'description': description,
           'knowledge_base_id': knowledgeBaseId,
           'knowledge_base_state': knowledgeBaseState,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentAgentKnowledgeBaseAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
