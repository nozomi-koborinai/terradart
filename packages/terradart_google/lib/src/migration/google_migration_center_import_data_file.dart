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
/// Set [importJob] to `importJob.name` and pick a [format]
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'import_job': importJob,
           'import_data_file_id': importDataFileId,
           'format': format,
           'display_name': ?displayName,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterImportDataFileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterImportDataFile>`.
  RefTo<GoogleMigrationCenterImportDataFile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `upload_file_info` attribute.
  TfRef<List<Map<String, Object?>>> get uploadFileInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'upload_file_info');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `import_data_file_id` attribute.
  TfRef<String> get importDataFileId =>
      TfRef.attribute<String>(this, 'import_data_file_id');

  /// Reference to `import_job` attribute.
  TfRef<String> get importJob => TfRef.attribute<String>(this, 'import_job');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
