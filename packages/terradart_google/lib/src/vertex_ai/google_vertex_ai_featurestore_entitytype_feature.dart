// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_featurestore_entitytype_feature`.
const Set<String> _googleVertexAiFeaturestoreEntitytypeFeatureSensitive =
    <String>{};

/// Factory wrapper for `google_vertex_ai_featurestore_entitytype_feature`.
///
/// Feature Metadata information that describes an attribute of an entity type.
/// For example, apple is an entity type, and color is a feature that describes
/// apple.
///
/// Vertex AI Feature Store **feature** under an entity type — typed column
/// definition ([valueType] is immutable).
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` has **no
/// feature SKU** after MCP `list_skus` (Feature Store SKUs are store
/// online/offline serving and storage). Billing stays on the parent
/// Featurestore. Deferred with the never_apply Featurestore Wave (no
/// apply-smoke quickstart).
///
/// Requires [entitytype] and [valueType] (e.g. `INT64`, `STRING`,
/// `DOUBLE`). Enable `aiplatform.googleapis.com` via
/// [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiFeaturestoreEntitytypeFeature(
///   localName: 'age',
///   entitytype: entity.nameRef,
///   name: TfArg.literal('age'),
///   valueType: TfArg.literal('INT64'),
/// );
/// ```
final class GoogleVertexAiFeaturestoreEntitytypeFeature extends Resource {
  static const String tfType =
      'google_vertex_ai_featurestore_entitytype_feature';

  GoogleVertexAiFeaturestoreEntitytypeFeature({
    required super.localName,
    required TfArg<String> entitytype,
    TfArg<String>? name,
    required TfArg<String> valueType,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entitytype': entitytype,
           if (name != null) 'name': name,
           'value_type': valueType,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreEntitytypeFeatureSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

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
