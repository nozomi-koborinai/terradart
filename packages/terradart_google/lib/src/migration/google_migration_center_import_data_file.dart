// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_import_data_file`.
const Set<String> _googleMigrationCenterImportDataFileSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center import data files.
extension type const MigrationCenterImportDataFileDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterImportDataFileDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterImportDataFileDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterImportDataFileDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = MigrationCenterImportDataFileDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = MigrationCenterImportDataFileDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = MigrationCenterImportDataFileDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<MigrationCenterImportDataFileDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Import payload format for `google_migration_center_import_data_file.format`.
extension type const MigrationCenterImportDataFileFormat._(TfArg<String> _)
    implements TfArg<String> {
  MigrationCenterImportDataFileFormat.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterImportDataFileFormat.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterImportDataFileFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const rvtoolsXlsx = MigrationCenterImportDataFileFormat._(
    TfArgLiteral('IMPORT_JOB_FORMAT_RVTOOLS_XLSX'),
  );
  static const rvtoolsCsv = MigrationCenterImportDataFileFormat._(
    TfArgLiteral('IMPORT_JOB_FORMAT_RVTOOLS_CSV'),
  );
  static const exportedAwsCsv = MigrationCenterImportDataFileFormat._(
    TfArgLiteral('IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV'),
  );
  static const exportedAzureCsv = MigrationCenterImportDataFileFormat._(
    TfArgLiteral('IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV'),
  );
  static const stratozoneCsv = MigrationCenterImportDataFileFormat._(
    TfArgLiteral('IMPORT_JOB_FORMAT_STRATOZONE_CSV'),
  );
  static const databaseZip = MigrationCenterImportDataFileFormat._(
    TfArgLiteral('IMPORT_JOB_FORMAT_DATABASE_ZIP'),
  );

  static const List<MigrationCenterImportDataFileFormat> values = [
    rvtoolsXlsx,
    rvtoolsCsv,
    exportedAwsCsv,
    exportedAzureCsv,
    stratozoneCsv,
    databaseZip,
  ];
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

  GoogleMigrationCenterImportDataFile(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> importJob,
    required TfArg<String> importDataFileId,
    required MigrationCenterImportDataFileFormat format,
    TfArg<String>? displayName,
    MigrationCenterImportDataFileDeletionPolicy? deletionPolicy,
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
