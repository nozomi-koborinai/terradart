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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'reasoning_engine': reasoningEngine,
           'role': role,
           'members': members,
           'condition': ?condition,
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiReasoningEngineIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiReasoningEngineIamBinding>`.
  RefTo<GoogleVertexAiReasoningEngineIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `reasoning_engine` attribute.
  TfRef<String> get reasoningEngineRef =>
      TfRef.attribute<String>(this, 'reasoning_engine');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
