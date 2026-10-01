// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeatureOnlineStore, IamPrincipal;

/// Sensitive field paths for `google_vertex_ai_feature_online_store_iam_member`.
const Set<String> _googleVertexAiFeatureOnlineStoreIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_feature_online_store_iam_member` (derived from provider schema).
@immutable
final class VertexAiFeatureOnlineStoreIamMemberCondition {
  const VertexAiFeatureOnlineStoreIamMemberCondition({
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

/// Factory wrapper for `google_vertex_ai_feature_online_store_iam_member`.
final class GoogleVertexAiFeatureOnlineStoreIamMember extends Resource {
  static const String tfType =
      'google_vertex_ai_feature_online_store_iam_member';

  GoogleVertexAiFeatureOnlineStoreIamMember({
    required super.localName,
    required RefTo<GoogleVertexAiFeatureOnlineStore> featureOnlineStore,
    required IamPrincipal member,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    VertexAiFeatureOnlineStoreIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'feature_online_store': featureOnlineStore.encodeAs('name'),
           'member': member,
           'project': ?(project ?? featureOnlineStore.alsoAs('project')),
           'region': ?(region ?? featureOnlineStore.alsoAs('region')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeatureOnlineStoreIamMember>`.
  RefTo<GoogleVertexAiFeatureOnlineStoreIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `feature_online_store` attribute.
  TfRef<String> get featureOnlineStore =>
      TfRef.attribute<String>(this, 'feature_online_store');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
