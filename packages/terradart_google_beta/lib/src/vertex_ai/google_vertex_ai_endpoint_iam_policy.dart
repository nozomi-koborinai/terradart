// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_endpoint_iam_policy`.
const Set<String> _googleVertexAiEndpointIamPolicySensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_endpoint_iam_policy`.
///
/// Authoritative IAM policy for a Vertex Ai Endpoint.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleVertexAiEndpointIamMember] for additive grants.
final class GoogleVertexAiEndpointIamPolicy extends Resource {
  static const String tfType = 'google_vertex_ai_endpoint_iam_policy';

  GoogleVertexAiEndpointIamPolicy({
    required super.localName,
    required TfArg<String> endpoint,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'endpoint': endpoint,
           if (location != null) 'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiEndpointIamPolicySensitive;
}
