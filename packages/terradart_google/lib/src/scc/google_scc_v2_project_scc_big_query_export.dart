// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_project_scc_big_query_export`.
const Set<String> _googleSccV2ProjectSccBigQueryExportSensitive = <String>{};

/// Factory wrapper for `google_scc_v2_project_scc_big_query_export`.
///
/// A Cloud Security Command Center (Cloud SCC) Big Query Export Config. It
/// represents exporting Security Command Center data, including assets,
/// findings, and security marks using gcloud scc bqexports ~> **Note:** In
/// order to use Cloud SCC resources, your organization must be enrolled in [SCC
/// Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
/// SCC v2 project BigQuery export — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccV2ProjectSccBigQueryExport extends Resource {
  static const String tfType = 'google_scc_v2_project_scc_big_query_export';

  GoogleSccV2ProjectSccBigQueryExport({
    required super.localName,
    required TfArg<String> bigQueryExportId,
    TfArg<String>? dataset,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? filter,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'big_query_export_id': bigQueryExportId,
           if (dataset != null) 'dataset': dataset,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (filter != null) 'filter': filter,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2ProjectSccBigQueryExportSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
