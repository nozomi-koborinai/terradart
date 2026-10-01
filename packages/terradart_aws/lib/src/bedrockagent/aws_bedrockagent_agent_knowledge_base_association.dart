// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent_knowledge_base_association`.
const Set<String> _awsBedrockagentAgentKnowledgeBaseAssociationSensitive =
    <String>{};

/// Bedrockagent Agent Knowledge Base Association Agent enum for `agent_version`.
enum BedrockagentAgentKnowledgeBaseAssociationAgentVersion
    implements TerraformEnum {
  draft('DRAFT');

  const BedrockagentAgentKnowledgeBaseAssociationAgentVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Bedrockagent Agent Knowledge Base Association Knowledge Base enum for `knowledge_base_state`.
enum BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bedrockagent_agent_knowledge_base_association`.
final class AwsBedrockagentAgentKnowledgeBaseAssociation extends Resource {
  static const String tfType =
      'aws_bedrockagent_agent_knowledge_base_association';

  AwsBedrockagentAgentKnowledgeBaseAssociation({
    required super.localName,
    required TfArg<String> agentId,
    TfArg<BedrockagentAgentKnowledgeBaseAssociationAgentVersion>? agentVersion,
    required TfArg<String> description,
    required TfArg<String> knowledgeBaseId,
    required TfArg<BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState>
    knowledgeBaseState,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
           'agent_version': ?agentVersion,
           'description': description,
           'knowledge_base_id': knowledgeBaseId,
           'knowledge_base_state': knowledgeBaseState,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentAgentKnowledgeBaseAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentAgentKnowledgeBaseAssociation>`.
  RefTo<AwsBedrockagentAgentKnowledgeBaseAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_id` attribute.
  TfRef<String> get agentId => TfRef.attribute<String>(this, 'agent_id');

  /// Reference to `agent_version` attribute.
  TfRef<String> get agentVersion =>
      TfRef.attribute<String>(this, 'agent_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `knowledge_base_id` attribute.
  TfRef<String> get knowledgeBaseId =>
      TfRef.attribute<String>(this, 'knowledge_base_id');

  /// Reference to `knowledge_base_state` attribute.
  TfRef<String> get knowledgeBaseState =>
      TfRef.attribute<String>(this, 'knowledge_base_state');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
