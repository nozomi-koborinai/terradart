// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeaturestore, IamPrincipal;

/// Sensitive field paths for `google_vertex_ai_featurestore_iam_binding`.
const Set<String> _googleVertexAiFeaturestoreIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_featurestore_iam_binding` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreIamBindingCondition {
  const VertexAiFeaturestoreIamBindingCondition({
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

/// Factory wrapper for `google_vertex_ai_featurestore_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex Ai Featurestore.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleVertexAiFeaturestoreIamMember] for additive grants.
final class GoogleVertexAiFeaturestoreIamBinding extends Resource {
  static const String tfType = 'google_vertex_ai_featurestore_iam_binding';

  GoogleVertexAiFeaturestoreIamBinding({
    required super.localName,
    required RefTo<GoogleVertexAiFeaturestore> featurestore,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    VertexAiFeaturestoreIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'featurestore': featurestore.encodeAs('name'),
           'members': members,
           'project': ?(project ?? featurestore.alsoAs('project')),
           'region': ?(region ?? featurestore.alsoAs('region')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeaturestoreIamBinding>`.
  RefTo<GoogleVertexAiFeaturestoreIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `featurestore` attribute.
  TfRef<String> get featurestore =>
      TfRef.attribute<String>(this, 'featurestore');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
