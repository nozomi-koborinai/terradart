// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_featurestore_entitytype_iam_member`.
const Set<String> _googleVertexAiFeaturestoreEntitytypeIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_featurestore_entitytype_iam_member` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreEntitytypeIamMemberCondition {
  const VertexAiFeaturestoreEntitytypeIamMemberCondition({
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

/// Factory wrapper for `google_vertex_ai_featurestore_entitytype_iam_member`.
final class GoogleVertexAiFeaturestoreEntitytypeIamMember extends Resource {
  static const String tfType =
      'google_vertex_ai_featurestore_entitytype_iam_member';

  GoogleVertexAiFeaturestoreEntitytypeIamMember({
    required super.localName,
    required TfArg<String> entitytype,
    required TfArg<String> featurestore,
    required TfArg<String> member,
    required TfArg<String> role,
    VertexAiFeaturestoreEntitytypeIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'entitytype': entitytype,
           'featurestore': featurestore,
           'member': member,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreEntitytypeIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeaturestoreEntitytypeIamMember>`.
  RefTo<GoogleVertexAiFeaturestoreEntitytypeIamMember> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
