// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleVertexAiFeatureGroupIamBinding({
    required super.localName,
    required TfArg<String> featureGroup,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    VertexAiFeatureGroupIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'feature_group': featureGroup,
           'members': members,
           'project': ?project,
           'region': ?region,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureGroupIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeatureGroupIamBinding>`.
  RefTo<GoogleVertexAiFeatureGroupIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `feature_group` attribute.
  TfRef<String> get featureGroupRef =>
      TfRef.attribute<String>(this, 'feature_group');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
