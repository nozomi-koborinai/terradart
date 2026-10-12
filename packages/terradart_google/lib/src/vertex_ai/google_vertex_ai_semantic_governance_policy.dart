// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_semantic_governance_policy`.
const Set<String> _googleVertexAiSemanticGovernancePolicySensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_semantic_governance_policy`.
///
/// A Semantic Governance Policy governs an AI agent's actions and tool
/// execution using natural language constraints. A policy requires an active
/// SemanticGovernancePolicyEngine
/// (`google_vertex_ai_semantic_governance_policy_engine`) in the same project
/// and region.
final class GoogleVertexAiSemanticGovernancePolicy extends Resource {
  static const String tfType = 'google_vertex_ai_semantic_governance_policy';

  GoogleVertexAiSemanticGovernancePolicy(
    super.localName, {
    required TfArg<String> agent,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> naturalLanguageConstraint,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> semanticGovernancePolicyId,
    TfArg<Map<String, dynamic>>? agentResponseCustomization,
    TfArg<Map<String, dynamic>>? mcpTools,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent': agent,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'natural_language_constraint': naturalLanguageConstraint,
           'project': ?project,
           'region': ?region,
           'semantic_governance_policy_id': semanticGovernancePolicyId,
           'agent_response_customization': ?agentResponseCustomization,
           'mcp_tools': ?mcpTools,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiSemanticGovernancePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiSemanticGovernancePolicy>`.
  RefTo<GoogleVertexAiSemanticGovernancePolicy> get ref => RefTo.of(this);
}
