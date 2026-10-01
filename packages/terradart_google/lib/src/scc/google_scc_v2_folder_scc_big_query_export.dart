// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_folder_scc_big_query_export`.
const Set<String> _googleSccV2FolderSccBigQueryExportSensitive = <String>{};

/// Factory wrapper for `google_scc_v2_folder_scc_big_query_export`.
///
/// A Cloud Security Command Center (Cloud SCC) Big Query Export Config. It
/// represents exporting Security Command Center data, including assets,
/// findings, and security marks using gcloud scc bqexports ~> **Note:** In
/// order to use Cloud SCC resources, your organization must be enrolled in [SCC
/// Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
/// SCC v2 folder BigQuery export — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccV2FolderSccBigQueryExport extends Resource {
  static const String tfType = 'google_scc_v2_folder_scc_big_query_export';

  GoogleSccV2FolderSccBigQueryExport({
    required super.localName,
    required TfArg<String> bigQueryExportId,
    TfArg<String>? dataset,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? filter,
    required TfArg<String> folder,
    TfArg<String>? location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'big_query_export_id': bigQueryExportId,
           'dataset': ?dataset,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'filter': ?filter,
           'folder': folder,
           'location': ?location,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2FolderSccBigQueryExportSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccV2FolderSccBigQueryExport>`.
  RefTo<GoogleSccV2FolderSccBigQueryExport> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `most_recent_editor` attribute.
  TfRef<String> get mostRecentEditor =>
      TfRef.attribute<String>(this, 'most_recent_editor');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `big_query_export_id` attribute.
  TfRef<String> get bigQueryExportId =>
      TfRef.attribute<String>(this, 'big_query_export_id');

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}
