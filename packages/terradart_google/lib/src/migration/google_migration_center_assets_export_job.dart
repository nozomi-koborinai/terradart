// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_assets_export_job`.
const Set<String> _googleMigrationCenterAssetsExportJobSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center assets export jobs.
enum MigrationCenterAssetsExportJobDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterAssetsExportJobDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Export file format for `signed_uri_destination.file_format`.
enum MigrationCenterAssetsExportJobFileFormat implements TerraformEnum {
  fileFormatUnspecified('FILE_FORMAT_UNSPECIFIED'),
  fileFormatCsv('FILE_FORMAT_CSV'),
  fileFormatJson('FILE_FORMAT_JSON');

  const MigrationCenterAssetsExportJobFileFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_migration_center_assets_export_job`.
///
/// AssetsExportJob represents a batch job that exports Migration Center assets
/// to external destinations such as Cloud Storage.
///
/// Migration Center assets export job — batch export to Cloud Storage or signed URI.
///
/// Enable `migrationcenter.googleapis.com` before apply.
final class GoogleMigrationCenterAssetsExportJob extends Resource {
  static const String tfType = 'google_migration_center_assets_export_job';

  GoogleMigrationCenterAssetsExportJob({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> assetsExportJobId,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<Map<String, dynamic>>? performanceData,
    TfArg<Map<String, dynamic>>? signedUriDestination,
    TfArg<Map<String, String>>? labels,
    TfArg<MigrationCenterAssetsExportJobDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'assets_export_job_id': assetsExportJobId,
           if (condition != null) 'condition': condition,
           if (performanceData != null) 'performance_data': performanceData,
           if (signedUriDestination != null)
             'signed_uri_destination': signedUriDestination,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterAssetsExportJobSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `inventory` attribute.
  TfRef<List<Map<String, Object?>>> get inventory =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'inventory');

  /// Reference to `network_dependencies` attribute.
  TfRef<List<Map<String, Object?>>> get networkDependencies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_dependencies');

  /// Reference to `recent_executions` attribute.
  TfRef<List<Map<String, Object?>>> get recentExecutions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'recent_executions');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
