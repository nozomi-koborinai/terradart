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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_identity` attribute.
  TfRef<String> get agentIdentity =>
      TfRef.attribute<String>(this, 'agent_identity');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `agent` attribute.
  TfRef<String> get agent => TfRef.attribute<String>(this, 'agent');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `natural_language_constraint` attribute.
  TfRef<String> get naturalLanguageConstraint =>
      TfRef.attribute<String>(this, 'natural_language_constraint');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `semantic_governance_policy_id` attribute.
  TfRef<String> get semanticGovernancePolicyId =>
      TfRef.attribute<String>(this, 'semantic_governance_policy_id');
}
