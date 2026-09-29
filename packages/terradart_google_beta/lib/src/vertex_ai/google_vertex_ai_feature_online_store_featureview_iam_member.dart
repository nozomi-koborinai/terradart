// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_online_store_featureview_iam_member`.
const Set<String>
_googleVertexAiFeatureOnlineStoreFeatureviewIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_feature_online_store_featureview_iam_member` (derived from provider schema).
@immutable
final class VertexAiFeatureOnlineStoreFeatureviewIamMemberCondition {
  const VertexAiFeatureOnlineStoreFeatureviewIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_feature_online_store_featureview_iam_member`.
final class GoogleVertexAiFeatureOnlineStoreFeatureviewIamMember
    extends Resource {
  static const String tfType =
      'google_vertex_ai_feature_online_store_featureview_iam_member';

  GoogleVertexAiFeatureOnlineStoreFeatureviewIamMember({
    required super.localName,
    required TfArg<String> featureOnlineStore,
    required TfArg<String> featureView,
    required TfArg<String> member,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    VertexAiFeatureOnlineStoreFeatureviewIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'feature_online_store': featureOnlineStore,
           'feature_view': featureView,
           'member': member,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreFeatureviewIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
