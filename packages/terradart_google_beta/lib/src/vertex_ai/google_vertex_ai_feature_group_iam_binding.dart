// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeatureGroup, IamPrincipal;

/// Sensitive field paths for `google_vertex_ai_feature_group_iam_binding`.
const Set<String> _googleVertexAiFeatureGroupIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_feature_group_iam_binding` (derived from provider schema).
@immutable
final class VertexAiFeatureGroupIamBindingCondition {
  const VertexAiFeatureGroupIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_feature_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex Ai Feature Group.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleVertexAiFeatureGroupIamMember] for additive grants.
final class GoogleVertexAiFeatureGroupIamBinding extends Resource {
  static const String tfType = 'google_vertex_ai_feature_group_iam_binding';

  GoogleVertexAiFeatureGroupIamBinding(
    super.localName, {
    required RefTo<GoogleVertexAiFeatureGroup> featureGroup,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    VertexAiFeatureGroupIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'feature_group': featureGroup.encodeAs('name'),
           'members': members,
           'project': ?(project ?? featureGroup.alsoAs('project')),
           'region': ?(region ?? featureGroup.alsoAs('region')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureGroupIamBindingSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeatureGroupIamBinding>`.
  RefTo<GoogleVertexAiFeatureGroupIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `feature_group` attribute.
  TfRef<String> get featureGroup =>
      TfRef.attribute<String>(this, 'feature_group');

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
