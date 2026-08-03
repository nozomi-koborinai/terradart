// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_semantic_governance_policy_engine`.
const Set<String> _googleVertexAiSemanticGovernancePolicyEngineSensitive =
    <String>{};

/// Factory wrapper for `google_vertex_ai_semantic_governance_policy_engine`.
///
/// A SemanticGovernancePolicyEngine (SGPE) is the managed, runtime evaluation
/// infrastructure for Semantic Governance Policies (SGP): the natural-language
/// constraints that govern an AI agent's tool calls. It is a project-level,
/// regional singleton, so each project has at most one engine per region.
///
/// Provisioning the engine sets up managed Private Service Connect (PSC)
/// networking in your VPC and a policy decision point that the Agent Gateway
/// consults at runtime to allow or deny an agent's proposed tool calls. The
/// Semantic Governance Policies themselves, and the Agent Gateway integration
/// that routes agent traffic through the engine, are configured separately and
/// are not managed by this resource.
///
/// Reading an uninitialized or deprovisioned engine returns the singleton with
/// state INACTIVE rather than reporting it as absent.
///
/// Vertex AI **Semantic Governance Policy Engine** (SGPE) — regional
/// singleton that provisions managed PSC networking plus a policy
/// decision point for Gemini Enterprise Agent Platform tool-call
/// governance.
///
/// **Cost / apply:** No dedicated SGPE SKU in Cloud Billing Catalog
/// (Vertex AI `C7E2-9256-1C43` list_skus keyword=Semantic/Governance → 0).
/// Related Agent Platform Compute `D4E0-46FF-A0E0` (**$0.085/h** after
/// free tier), Memory `8184-BF16-D3F4` (**$0.009/GiBy.h** after free
/// tier), and Storage `1B9B-8D66-DD5E` (**$0.3/GiBy.mo** after free
/// tier) exist. Docs say Semantic Governance Policy billing commenced
/// 2026-08-01. Create/delete timeouts are **60m**; destroy deprovisions
/// to state `INACTIVE` (not 404). Existence vs usage billing for the
/// engine itself is unclear — ships `never_apply` /
/// `tool/example_debt.yaml` (no apply-smoke).
///
/// Project×region singleton (at most one). Prefer setting [region]
/// explicitly (e.g. `us-central1`). Enable `aiplatform.googleapis.com`
/// via [GoogleProjectService] before apply. Semantic Governance Policies
/// and Agent Gateway routing are configured separately.
final class GoogleVertexAiSemanticGovernancePolicyEngine extends Resource {
  static const String tfType =
      'google_vertex_ai_semantic_governance_policy_engine';

  GoogleVertexAiSemanticGovernancePolicyEngine({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiSemanticGovernancePolicyEngineSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `psc_forwarding_rule` attribute.
  TfRef<String> get pscForwardingRule =>
      TfRef.attribute<String>(this, 'psc_forwarding_rule');

  /// Reference to `psc_service_attachment` attribute.
  TfRef<String> get pscServiceAttachment =>
      TfRef.attribute<String>(this, 'psc_service_attachment');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');
}
