// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeaturestoreEntitytype, IamPrincipal;

/// Sensitive field paths for `google_vertex_ai_featurestore_entitytype_iam_binding`.
const Set<String> _googleVertexAiFeaturestoreEntitytypeIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_featurestore_entitytype_iam_binding` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreEntitytypeIamBindingCondition {
  const VertexAiFeaturestoreEntitytypeIamBindingCondition({
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

/// Factory wrapper for `google_vertex_ai_featurestore_entitytype_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex Ai Featurestore Entitytype.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleVertexAiFeaturestoreEntitytypeIamMember] for additive grants.
final class GoogleVertexAiFeaturestoreEntitytypeIamBinding extends Resource {
  static const String tfType =
      'google_vertex_ai_featurestore_entitytype_iam_binding';

  GoogleVertexAiFeaturestoreEntitytypeIamBinding(
    super.localName, {
    required RefTo<GoogleVertexAiFeaturestoreEntitytype> entitytype,
    TfArg<String>? featurestore,
    required TfArg<List<IamPrincipal>> members,
    required TfArg<String> role,
    VertexAiFeaturestoreEntitytypeIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entitytype': entitytype.encodeAs('name'),
           'featurestore': ?(featurestore ?? entitytype.alsoAs('featurestore')),
           'members': members,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreEntitytypeIamBindingSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeaturestoreEntitytypeIamBinding>`.
  RefTo<GoogleVertexAiFeaturestoreEntitytypeIamBinding> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entitytype` attribute.
  TfRef<String> get entitytype => TfRef.attribute<String>(this, 'entitytype');

  /// Reference to `featurestore` attribute.
  TfRef<String> get featurestore =>
      TfRef.attribute<String>(this, 'featurestore');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
