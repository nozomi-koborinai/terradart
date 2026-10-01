// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../vertex_ai/google_vertex_ai_reasoning_engine.dart'
    show GoogleVertexAiReasoningEngine;

/// Sensitive field paths for `google_vertex_ai_reasoning_engine_iam_policy`.
const Set<String> _googleVertexAiReasoningEngineIamPolicySensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_reasoning_engine_iam_policy`.
///
/// Authoritative IAM policy for a Vertex AI Reasoning Engine.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleVertexAiReasoningEngineIamMember] for single-principal grants.
final class GoogleVertexAiReasoningEngineIamPolicy extends Resource {
  static const String tfType = 'google_vertex_ai_reasoning_engine_iam_policy';

  GoogleVertexAiReasoningEngineIamPolicy({
    required super.localName,
    required RefTo<GoogleVertexAiReasoningEngine> reasoningEngine,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'reasoning_engine': reasoningEngine.encodeAs('name'),
           'policy_data': policyData,
           'region': ?(region ?? reasoningEngine.alsoAs('region')),
           'project': ?(project ?? reasoningEngine.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiReasoningEngineIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiReasoningEngineIamPolicy>`.
  RefTo<GoogleVertexAiReasoningEngineIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reasoning_engine` attribute.
  TfRef<String> get reasoningEngine =>
      TfRef.attribute<String>(this, 'reasoning_engine');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
