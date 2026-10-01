// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeaturestore, IamPrincipal;

/// Sensitive field paths for `google_vertex_ai_featurestore_iam_member`.
const Set<String> _googleVertexAiFeaturestoreIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_featurestore_iam_member` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreIamMemberCondition {
  const VertexAiFeaturestoreIamMemberCondition({
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

/// Factory wrapper for `google_vertex_ai_featurestore_iam_member`.
final class GoogleVertexAiFeaturestoreIamMember extends Resource {
  static const String tfType = 'google_vertex_ai_featurestore_iam_member';

  GoogleVertexAiFeaturestoreIamMember(
    super.localName, {
    required RefTo<GoogleVertexAiFeaturestore> featurestore,
    required IamPrincipal member,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    VertexAiFeaturestoreIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'featurestore': featurestore.encodeAs('name'),
           'member': member,
           'project': ?(project ?? featurestore.alsoAs('project')),
           'region': ?(region ?? featurestore.alsoAs('region')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreIamMemberSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeaturestoreIamMember>`.
  RefTo<GoogleVertexAiFeaturestoreIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `featurestore` attribute.
  TfRef<String> get featurestore =>
      TfRef.attribute<String>(this, 'featurestore');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
