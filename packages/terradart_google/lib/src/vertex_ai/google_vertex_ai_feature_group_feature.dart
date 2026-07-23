// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_group_feature`.
const Set<String> _googleVertexAiFeatureGroupFeatureSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_feature_group_feature`.
///
/// Vertex AI Feature Group Feature is feature metadata information.
///
/// Vertex AI Feature Registry **feature** under a
/// [GoogleVertexAiFeatureGroup] — column metadata over the group's
/// BigQuery source (`versionColumnName` selects the hosting column).
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` has **no
/// Feature Group / Feature Registry feature SKU** after MCP `list_skus`
/// (Feature Store SKUs are legacy store online/offline serving and
/// storage). Billing for Feature Registry stays on the BigQuery table
/// behind the parent feature group. Covered by `vertex_ai_quickstart`.
///
/// Requires [featureGroup], [name], and [region]. Enable
/// `aiplatform.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiFeatureGroupFeature(
///   localName: 'score',
///   featureGroup: TfArg.ref(group.nameRef),
///   name: TfArg.literal('feature_score'),
///   region: TfArg.literal('us-central1'),
///   versionColumnName: TfArg.literal('feature_score'),
/// );
/// ```
final class GoogleVertexAiFeatureGroupFeature extends Resource {
  static const String tfType = 'google_vertex_ai_feature_group_feature';

  GoogleVertexAiFeatureGroupFeature({
    required super.localName,
    required TfArg<String> featureGroup,
    required TfArg<String> name,
    required TfArg<String> region,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? versionColumnName,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'feature_group': featureGroup,
           'name': name,
           'region': region,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (versionColumnName != null)
             'version_column_name': versionColumnName,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureGroupFeatureSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
