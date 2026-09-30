// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
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

/// Typed helper for the `condition` block of
/// `google_migration_center_assets_export_job` (derived from provider schema).
@immutable
final class MigrationCenterAssetsExportJobCondition {
  const MigrationCenterAssetsExportJobCondition({this.filter});

  final TfArg<String>? filter;

  Map<String, Object?> encode() => {'filter': ?filter?.toTfJson()};
}

/// Typed helper for the `performance_data` block of
/// `google_migration_center_assets_export_job` (derived from provider schema).
@immutable
final class MigrationCenterAssetsExportJobPerformanceData {
  const MigrationCenterAssetsExportJobPerformanceData({this.maxDays});

  final TfArg<num>? maxDays;

  Map<String, Object?> encode() => {'max_days': ?maxDays?.toTfJson()};
}

/// Typed helper for the `signed_uri_destination` block of
/// `google_migration_center_assets_export_job` (derived from provider schema).
@immutable
final class MigrationCenterAssetsExportJobSignedUriDestination {
  const MigrationCenterAssetsExportJobSignedUriDestination({
    required this.fileFormat,
  });

  final TfArg<MigrationCenterAssetsExportJobFileFormat> fileFormat;

  Map<String, Object?> encode() => {'file_format': fileFormat.toTfJson()};
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
    MigrationCenterAssetsExportJobCondition? condition,
    MigrationCenterAssetsExportJobPerformanceData? performanceData,
    MigrationCenterAssetsExportJobSignedUriDestination? signedUriDestination,
    TfArg<Map<String, String>>? labels,
    TfArg<MigrationCenterAssetsExportJobDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'assets_export_job_id': assetsExportJobId,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           if (performanceData != null)
             'performance_data': TfArg.literal(performanceData.encode()),
           if (signedUriDestination != null)
             'signed_uri_destination': TfArg.literal(
               signedUriDestination.encode(),
             ),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterAssetsExportJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterAssetsExportJob>`.
  RefTo<GoogleMigrationCenterAssetsExportJob> get ref => RefTo.of(this);

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

  /// Reference to `assets_export_job_id` attribute.
  TfRef<String> get assetsExportJobIdRef =>
      TfRef.attribute<String>(this, 'assets_export_job_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `show_hidden` attribute.
  TfRef<bool> get showHiddenRef => TfRef.attribute<bool>(this, 'show_hidden');
}
