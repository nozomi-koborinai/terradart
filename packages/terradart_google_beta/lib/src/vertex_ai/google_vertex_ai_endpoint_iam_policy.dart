// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiEndpoint;

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
    required RefTo<GoogleVertexAiEndpoint> endpoint,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'endpoint': endpoint.encodeAs('name'),
           'location': ?(location ?? endpoint.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? endpoint.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiEndpointIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiEndpointIamPolicy>`.
  RefTo<GoogleVertexAiEndpointIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpointRef => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
