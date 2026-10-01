// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiEndpoint, IamPrincipal;

/// Sensitive field paths for `google_vertex_ai_endpoint_iam_binding`.
const Set<String> _googleVertexAiEndpointIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_endpoint_iam_binding` (derived from provider schema).
@immutable
final class VertexAiEndpointIamBindingCondition {
  const VertexAiEndpointIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_endpoint_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex Ai Endpoint.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleVertexAiEndpointIamMember] for additive grants.
final class GoogleVertexAiEndpointIamBinding extends Resource {
  static const String tfType = 'google_vertex_ai_endpoint_iam_binding';

  GoogleVertexAiEndpointIamBinding(
    super.localName, {
    required RefTo<GoogleVertexAiEndpoint> endpoint,
    TfArg<String>? location,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    VertexAiEndpointIamBindingCondition? condition,
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
           'members': members,
           'project': ?(project ?? endpoint.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiEndpointIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiEndpointIamBinding>`.
  RefTo<GoogleVertexAiEndpointIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
