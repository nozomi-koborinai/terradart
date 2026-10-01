// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_report`.
const Set<String> _googleMigrationCenterReportSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center reports.
extension type const MigrationCenterReportDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  MigrationCenterReportDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterReportDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterReportDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = MigrationCenterReportDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = MigrationCenterReportDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = MigrationCenterReportDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<MigrationCenterReportDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Report type for `google_migration_center_report.type`.
///
/// Required at apply time — the API rejects the default `TYPE_UNSPECIFIED`.
extension type const MigrationCenterReportType._(TfArg<String> _)
    implements TfArg<String> {
  MigrationCenterReportType.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterReportType.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterReportType.arg(TfArg<String> arg) : this._(arg);

  static const totalCostOfOwnership = MigrationCenterReportType._(
    TfArgLiteral('TOTAL_COST_OF_OWNERSHIP'),
  );

  static const List<MigrationCenterReportType> values = [totalCostOfOwnership];
}

/// Factory wrapper for `google_migration_center_report`.
///
/// Report represents an analytical assessment report summarizing infrastructure
/// size, costs, and target suggestions.
///
/// Migration Center assessment report generated from a [GoogleMigrationCenterReportConfig].
///
/// Set [reportConfig] to the report config **id segment** (e.g.
/// `TfArg.literal('my-report-config')`), not the full resource name —
/// same path-ID pattern as [GoogleMigrationCenterImportDataFile.importJob].
/// Always set [type] (API rejects `TYPE_UNSPECIFIED`).
final class GoogleMigrationCenterReport extends Resource {
  static const String tfType = 'google_migration_center_report';

  GoogleMigrationCenterReport(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> reportConfig,
    required TfArg<String> reportId,
    MigrationCenterReportType? type,
    TfArg<String>? displayName,
    TfArg<String>? description,
    MigrationCenterReportDeletionPolicy? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'report_config': reportConfig,
           'report_id': reportId,
           'type': ?type,
           'display_name': ?displayName,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMigrationCenterReportSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterReport>`.
  RefTo<GoogleMigrationCenterReport> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `summary` attribute.
  TfRef<List<Map<String, Object?>>> get summary =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'summary');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `report_config` attribute.
  TfRef<String> get reportConfig =>
      TfRef.attribute<String>(this, 'report_config');

  /// Reference to `report_id` attribute.
  TfRef<String> get reportId => TfRef.attribute<String>(this, 'report_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
