// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../migration/google_migration_center_source.dart'
    show GoogleMigrationCenterSource;

/// Sensitive field paths for `google_migration_center_import_job`.
const Set<String> _googleMigrationCenterImportJobSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center import jobs.
enum MigrationCenterImportJobDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterImportJobDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_migration_center_import_job`.
///
/// ImportJob represents a batch data import task that processes uploaded data
/// files and populates Migration Center assets.
///
/// Migration Center import job that ingests uploaded data into a source.
///
/// Set [assetSource] to `source.name`.
final class GoogleMigrationCenterImportJob extends Resource {
  static const String tfType = 'google_migration_center_import_job';

  GoogleMigrationCenterImportJob({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> importJobId,
    required RefTo<GoogleMigrationCenterSource> assetSource,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<MigrationCenterImportJobDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'import_job_id': importJobId,
           'asset_source': assetSource.encodeAs('name'),
           'display_name': ?displayName,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMigrationCenterImportJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterImportJob>`.
  RefTo<GoogleMigrationCenterImportJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `complete_time` attribute.
  TfRef<String> get completeTime =>
      TfRef.attribute<String>(this, 'complete_time');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `execution_report` attribute.
  TfRef<List<Map<String, Object?>>> get executionReport =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'execution_report');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `validation_report` attribute.
  TfRef<List<Map<String, Object?>>> get validationReport =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'validation_report');

  /// Reference to `asset_source` attribute.
  TfRef<String> get assetSource =>
      TfRef.attribute<String>(this, 'asset_source');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `import_job_id` attribute.
  TfRef<String> get importJobId =>
      TfRef.attribute<String>(this, 'import_job_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
