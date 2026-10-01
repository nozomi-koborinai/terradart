// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiEndpoint, IamPrincipal;

/// Sensitive field paths for `google_vertex_ai_endpoint_iam_member`.
const Set<String> _googleVertexAiEndpointIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_endpoint_iam_member` (derived from provider schema).
@immutable
final class VertexAiEndpointIamMemberCondition {
  const VertexAiEndpointIamMemberCondition({
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

/// Factory wrapper for `google_vertex_ai_endpoint_iam_member`.
final class GoogleVertexAiEndpointIamMember extends Resource {
  static const String tfType = 'google_vertex_ai_endpoint_iam_member';

  GoogleVertexAiEndpointIamMember({
    required super.localName,
    required RefTo<GoogleVertexAiEndpoint> endpoint,
    TfArg<String>? location,
    required IamPrincipal member,
    TfArg<String>? project,
    required TfArg<String> role,
    VertexAiEndpointIamMemberCondition? condition,
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
           'member': member,
           'project': ?(project ?? endpoint.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiEndpointIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiEndpointIamMember>`.
  RefTo<GoogleVertexAiEndpointIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
