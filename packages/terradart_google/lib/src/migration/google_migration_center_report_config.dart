// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_report_config`.
const Set<String> _googleMigrationCenterReportConfigSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center report configs.
enum MigrationCenterReportConfigDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterReportConfigDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `group_preferenceset_assignments` entry on a report config.
@immutable
class MigrationCenterReportConfigGroupPreferencesetAssignment {
  const MigrationCenterReportConfigGroupPreferencesetAssignment({
    required this.group,
    required this.preferenceSet,
  });

  final TfArg<String> group;
  final TfArg<String> preferenceSet;

  Map<String, Object?> toArgMap() => {
    'group': group.toTfJson(),
    'preference_set': preferenceSet.toTfJson(),
  };
}

/// Factory wrapper for `google_migration_center_report_config`.
///
/// ReportConfig defines the configuration and criteria used to generate
/// Migration Center reports.
///
/// Migration Center report configuration — group/preference-set pairings for reports.
///
/// Use [MigrationCenterReportConfigGroupPreferencesetAssignment] for
/// `group_preferenceset_assignments` entries.
final class GoogleMigrationCenterReportConfig extends Resource {
  static const String tfType = 'google_migration_center_report_config';

  GoogleMigrationCenterReportConfig({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> reportConfigId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    required List<MigrationCenterReportConfigGroupPreferencesetAssignment>
    groupPreferencesetAssignments,
    TfArg<MigrationCenterReportConfigDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'report_config_id': reportConfigId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           'group_preferenceset_assignments': TfArg.literal(
             groupPreferencesetAssignments.map((a) => a.toArgMap()).toList(),
           ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterReportConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
