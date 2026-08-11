// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> reasoningEngine,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'reasoning_engine': reasoningEngine,
           'policy_data': policyData,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiReasoningEngineIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
