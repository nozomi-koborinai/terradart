// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_endpoint_iam_binding`.
const Set<String> _googleVertexAiEndpointIamBindingSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_endpoint_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex Ai Endpoint.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleVertexAiEndpointIamMember] for additive grants.
final class GoogleVertexAiEndpointIamBinding extends Resource {
  static const String tfType = 'google_vertex_ai_endpoint_iam_binding';

  GoogleVertexAiEndpointIamBinding({
    required super.localName,
    required TfArg<String> endpoint,
    TfArg<String>? location,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'endpoint': endpoint,
           if (location != null) 'location': location,
           'members': members,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiEndpointIamBindingSensitive;
}
