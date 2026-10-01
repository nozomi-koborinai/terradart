// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleVertexAiFeatureOnlineStoreFeatureview;

/// Sensitive field paths for `google_vertex_ai_feature_online_store_featureview_iam_binding`.
const Set<String>
_googleVertexAiFeatureOnlineStoreFeatureviewIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_feature_online_store_featureview_iam_binding` (derived from provider schema).
@immutable
final class VertexAiFeatureOnlineStoreFeatureviewIamBindingCondition {
  const VertexAiFeatureOnlineStoreFeatureviewIamBindingCondition({
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

/// Factory wrapper for `google_vertex_ai_feature_online_store_featureview_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex Ai Feature Online Store Featureview.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleVertexAiFeatureOnlineStoreFeatureviewIamMember] for additive grants.
final class GoogleVertexAiFeatureOnlineStoreFeatureviewIamBinding
    extends Resource {
  static const String tfType =
      'google_vertex_ai_feature_online_store_featureview_iam_binding';

  GoogleVertexAiFeatureOnlineStoreFeatureviewIamBinding({
    required super.localName,
    TfArg<String>? featureOnlineStore,
    required RefTo<GoogleVertexAiFeatureOnlineStoreFeatureview> featureView,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    VertexAiFeatureOnlineStoreFeatureviewIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'feature_online_store':
               ?(featureOnlineStore ??
               featureView.alsoAs('feature_online_store')),
           'feature_view': featureView.encodeAs('name'),
           'members': members,
           'project': ?(project ?? featureView.alsoAs('project')),
           'region': ?(region ?? featureView.alsoAs('region')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreFeatureviewIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeatureOnlineStoreFeatureviewIamBinding>`.
  RefTo<GoogleVertexAiFeatureOnlineStoreFeatureviewIamBinding> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `feature_online_store` attribute.
  TfRef<String> get featureOnlineStoreRef =>
      TfRef.attribute<String>(this, 'feature_online_store');

  /// Reference to `feature_view` attribute.
  TfRef<String> get featureViewRef =>
      TfRef.attribute<String>(this, 'feature_view');

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
