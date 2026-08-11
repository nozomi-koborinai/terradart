// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_reasoning_engine_iam_binding`.
const Set<String> _googleVertexAiReasoningEngineIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_vertex_ai_reasoning_engine_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex AI Reasoning Engine.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleVertexAiReasoningEngineIamMember] for additive grants.
final class GoogleVertexAiReasoningEngineIamBinding extends Resource {
  static const String tfType = 'google_vertex_ai_reasoning_engine_iam_binding';

  GoogleVertexAiReasoningEngineIamBinding({
    required super.localName,
    required TfArg<String> reasoningEngine,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'reasoning_engine': reasoningEngine,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiReasoningEngineIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
