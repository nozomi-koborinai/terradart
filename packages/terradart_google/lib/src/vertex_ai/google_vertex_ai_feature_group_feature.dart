// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../vertex_ai/google_vertex_ai_feature_group.dart'
    show GoogleVertexAiFeatureGroup;

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
///   'score',
///   featureGroup: group.ref,
///   name: TfArg.literal('feature_score'),
///   region: TfArg.literal('us-central1'),
///   versionColumnName: TfArg.literal('feature_score'),
/// );
/// ```
final class GoogleVertexAiFeatureGroupFeature extends Resource {
  static const String tfType = 'google_vertex_ai_feature_group_feature';

  GoogleVertexAiFeatureGroupFeature(
    super.localName, {
    required RefTo<GoogleVertexAiFeatureGroup> featureGroup,
    required TfArg<String> name,
    required TfArg<String> region,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? versionColumnName,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'feature_group': featureGroup.encodeAs('name'),
           'name': name,
           'region': region,
           'description': ?description,
           'labels': ?labels,
           'project': ?project,
           'version_column_name': ?versionColumnName,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureGroupFeatureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeatureGroupFeature>`.
  RefTo<GoogleVertexAiFeatureGroupFeature> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `feature_group` attribute.
  TfRef<String> get featureGroup =>
      TfRef.attribute<String>(this, 'feature_group');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `version_column_name` attribute.
  TfRef<String> get versionColumnName =>
      TfRef.attribute<String>(this, 'version_column_name');
}
