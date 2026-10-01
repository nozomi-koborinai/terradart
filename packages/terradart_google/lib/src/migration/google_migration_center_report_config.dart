// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../migration/google_migration_center_group.dart'
    show GoogleMigrationCenterGroup;
import '../migration/google_migration_center_preference_set.dart'
    show GoogleMigrationCenterPreferenceSet;

/// Sensitive field paths for `google_migration_center_report_config`.
const Set<String> _googleMigrationCenterReportConfigSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center report configs.
extension type const MigrationCenterReportConfigDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterReportConfigDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterReportConfigDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterReportConfigDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = MigrationCenterReportConfigDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = MigrationCenterReportConfigDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = MigrationCenterReportConfigDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<MigrationCenterReportConfigDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// `group_preferenceset_assignments` entry on a report config.
@immutable
class MigrationCenterReportConfigGroupPreferencesetAssignment {
  const MigrationCenterReportConfigGroupPreferencesetAssignment({
    required this.group,
    required this.preferenceSet,
  });

  final RefTo<GoogleMigrationCenterGroup> group;
  final RefTo<GoogleMigrationCenterPreferenceSet> preferenceSet;

  Map<String, Object?> toArgMap() => {
    'group': group.encodeAs('name').toTfJson(),
    'preference_set': preferenceSet.encodeAs('name').toTfJson(),
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

  GoogleMigrationCenterReportConfig(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> reportConfigId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    required List<MigrationCenterReportConfigGroupPreferencesetAssignment>
    groupPreferencesetAssignments,
    MigrationCenterReportConfigDeletionPolicy? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'report_config_id': reportConfigId,
           'display_name': ?displayName,
           'description': ?description,
           'group_preferenceset_assignments': TfArg.literal(
             groupPreferencesetAssignments.map((a) => a.toArgMap()).toList(),
           ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterReportConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterReportConfig>`.
  RefTo<GoogleMigrationCenterReportConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

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

  /// Reference to `report_config_id` attribute.
  TfRef<String> get reportConfigId =>
      TfRef.attribute<String>(this, 'report_config_id');
}
