// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_index`.
const Set<String> _googleVertexAiIndexSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_index`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVertexAiIndex extends Data {
  static const String tfType = 'google_vertex_ai_index';

  DataGoogleVertexAiIndex({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiIndexSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deployed_indexes` attribute.
  TfRef<List<Map<String, Object?>>> get deployedIndexes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'deployed_indexes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `encryption_spec` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionSpec =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_spec');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `index_stats` attribute.
  TfRef<List<Map<String, Object?>>> get indexStats =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'index_stats');

  /// Reference to `index_update_method` attribute.
  TfRef<String> get indexUpdateMethod =>
      TfRef.attribute<String>(this, 'index_update_method');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `metadata` attribute.
  TfRef<List<Map<String, Object?>>> get metadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata');

  /// Reference to `metadata_schema_uri` attribute.
  TfRef<String> get metadataSchemaUri =>
      TfRef.attribute<String>(this, 'metadata_schema_uri');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
