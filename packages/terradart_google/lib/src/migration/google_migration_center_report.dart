// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_report`.
const Set<String> _googleMigrationCenterReportSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center reports.
enum MigrationCenterReportDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterReportDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_migration_center_report`.
///
/// Report represents an analytical assessment report summarizing infrastructure
/// size, costs, and target suggestions.
///
/// Migration Center assessment report generated from a [GoogleMigrationCenterReportConfig].
///
/// Set [reportConfig] to `TfArg.ref(config.nameRef)`.
final class GoogleMigrationCenterReport extends Resource {
  static const String tfType = 'google_migration_center_report';

  GoogleMigrationCenterReport({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> reportConfig,
    required TfArg<String> reportId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<MigrationCenterReportDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'report_config': reportConfig,
           'report_id': reportId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMigrationCenterReportSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
