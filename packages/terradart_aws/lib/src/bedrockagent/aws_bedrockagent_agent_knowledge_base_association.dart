// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent_knowledge_base_association`.
const Set<String> _awsBedrockagentAgentKnowledgeBaseAssociationSensitive =
    <String>{};

/// Bedrockagent Agent Knowledge Base Association Agent enum for `agent_version`.
extension type const BedrockagentAgentKnowledgeBaseAssociationAgentVersion._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentAgentKnowledgeBaseAssociationAgentVersion.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentAgentKnowledgeBaseAssociationAgentVersion.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentAgentKnowledgeBaseAssociationAgentVersion.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const draft = BedrockagentAgentKnowledgeBaseAssociationAgentVersion._(
    TfArgLiteral('DRAFT'),
  );

  static const List<BedrockagentAgentKnowledgeBaseAssociationAgentVersion>
  values = [draft];
}

/// Bedrockagent Agent Knowledge Base Association Knowledge Base enum for `knowledge_base_state`.
extension type const BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState.variable(
    String name,
  ) : this._(TfArg.variable(name));
  BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled =
      BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState._(
        TfArgLiteral('ENABLED'),
      );
  static const disabled =
      BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState._(
        TfArgLiteral('DISABLED'),
      );

  static const List<BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState>
  values = [enabled, disabled];
}

/// Factory wrapper for `aws_bedrockagent_agent_knowledge_base_association`.
final class AwsBedrockagentAgentKnowledgeBaseAssociation extends Resource {
  static const String tfType =
      'aws_bedrockagent_agent_knowledge_base_association';

  AwsBedrockagentAgentKnowledgeBaseAssociation(
    super.localName, {
    required TfArg<String> agentId,
    BedrockagentAgentKnowledgeBaseAssociationAgentVersion? agentVersion,
    required TfArg<String> description,
    required TfArg<String> knowledgeBaseId,
    required BedrockagentAgentKnowledgeBaseAssociationKnowledgeBaseState
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
