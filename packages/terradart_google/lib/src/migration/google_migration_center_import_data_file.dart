// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_import_data_file`.
const Set<String> _googleMigrationCenterImportDataFileSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center import data files.
enum MigrationCenterImportDataFileDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterImportDataFileDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Import payload format for `google_migration_center_import_data_file.format`.
enum MigrationCenterImportDataFileFormat implements TerraformEnum {
  rvtoolsXlsx('IMPORT_JOB_FORMAT_RVTOOLS_XLSX'),
  rvtoolsCsv('IMPORT_JOB_FORMAT_RVTOOLS_CSV'),
  exportedAwsCsv('IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV'),
  exportedAzureCsv('IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV'),
  stratozoneCsv('IMPORT_JOB_FORMAT_STRATOZONE_CSV'),
  databaseZip('IMPORT_JOB_FORMAT_DATABASE_ZIP');

  const MigrationCenterImportDataFileFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_migration_center_import_data_file`.
///
/// ImportDataFile represents a user-uploaded data payload file containing
/// infrastructure discovery data.
///
/// Migration Center import data file — upload slot for an import job payload.
///
/// Set [importJob] to `TfArg.ref(importJob.nameRef)` and pick a [format]
/// matching the file you upload to the signed URI in [uploadFileInfo].
final class GoogleMigrationCenterImportDataFile extends Resource {
  static const String tfType = 'google_migration_center_import_data_file';

  GoogleMigrationCenterImportDataFile({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> importJob,
    required TfArg<String> importDataFileId,
    required TfArg<MigrationCenterImportDataFileFormat> format,
    TfArg<String>? displayName,
    TfArg<MigrationCenterImportDataFileDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'import_job': importJob,
           'import_data_file_id': importDataFileId,
           'format': format,
           if (displayName != null) 'display_name': displayName,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterImportDataFileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `upload_file_info` attribute.
  TfRef<List<Map<String, Object?>>> get uploadFileInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'upload_file_info');
}
