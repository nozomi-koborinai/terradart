// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_assets_export_job`.
const Set<String> _googleMigrationCenterAssetsExportJobSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center assets export jobs.
extension type const MigrationCenterAssetsExportJobDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterAssetsExportJobDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterAssetsExportJobDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterAssetsExportJobDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = MigrationCenterAssetsExportJobDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = MigrationCenterAssetsExportJobDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = MigrationCenterAssetsExportJobDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<MigrationCenterAssetsExportJobDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Export file format for `signed_uri_destination.file_format`.
extension type const MigrationCenterAssetsExportJobFileFormat._(TfArg<String> _)
    implements TfArg<String> {
  MigrationCenterAssetsExportJobFileFormat.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterAssetsExportJobFileFormat.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterAssetsExportJobFileFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const fileFormatUnspecified =
      MigrationCenterAssetsExportJobFileFormat._(
        TfArgLiteral('FILE_FORMAT_UNSPECIFIED'),
      );
  static const fileFormatCsv = MigrationCenterAssetsExportJobFileFormat._(
    TfArgLiteral('FILE_FORMAT_CSV'),
  );
  static const fileFormatJson = MigrationCenterAssetsExportJobFileFormat._(
    TfArgLiteral('FILE_FORMAT_JSON'),
  );

  static const List<MigrationCenterAssetsExportJobFileFormat> values = [
    fileFormatUnspecified,
    fileFormatCsv,
    fileFormatJson,
  ];
}

/// Typed helper for the `condition` block of
/// `google_migration_center_assets_export_job` (derived from provider schema).
@immutable
final class MigrationCenterAssetsExportJobCondition {
  const MigrationCenterAssetsExportJobCondition({this.filter});

  final TfArg<String>? filter;

  @internal
  Map<String, Object?> encode() => {'filter': ?filter?.toTfJson()};
}

/// Typed helper for the `performance_data` block of
/// `google_migration_center_assets_export_job` (derived from provider schema).
@immutable
final class MigrationCenterAssetsExportJobPerformanceData {
  const MigrationCenterAssetsExportJobPerformanceData({this.maxDays});

  final TfArg<num>? maxDays;

  @internal
  Map<String, Object?> encode() => {'max_days': ?maxDays?.toTfJson()};
}

/// Typed helper for the `signed_uri_destination` block of
/// `google_migration_center_assets_export_job` (derived from provider schema).
@immutable
final class MigrationCenterAssetsExportJobSignedUriDestination {
  const MigrationCenterAssetsExportJobSignedUriDestination({
    required this.fileFormat,
  });

  final MigrationCenterAssetsExportJobFileFormat fileFormat;

  @internal
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

  GoogleMigrationCenterAssetsExportJob(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> assetsExportJobId,
    MigrationCenterAssetsExportJobCondition? condition,
    MigrationCenterAssetsExportJobPerformanceData? performanceData,
    MigrationCenterAssetsExportJobSignedUriDestination? signedUriDestination,
    TfArg<Map<String, String>>? labels,
    MigrationCenterAssetsExportJobDeletionPolicy? deletionPolicy,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get assetsExportJobId =>
      TfRef.attribute<String>(this, 'assets_export_job_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `show_hidden` attribute.
  TfRef<bool> get showHidden => TfRef.attribute<bool>(this, 'show_hidden');
}
