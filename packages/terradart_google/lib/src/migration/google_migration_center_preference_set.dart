// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_preference_set`.
const Set<String> _googleMigrationCenterPreferenceSetSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center preference sets.
enum MigrationCenterPreferenceSetDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterPreferenceSetDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_migration_center_preference_set`.
///
/// Manages the PreferenceSet resource.
///
/// Migration Center preference set — sizing / target-product assumptions for reports.
///
/// Pair with [GoogleMigrationCenterGroup] via
/// [GoogleMigrationCenterReportConfig] `group_preferenceset_assignments`.
/// Optional `virtual_machine_preferences` nested blocks are omitted from this
/// curated surface; extend the override when a Wave needs typed VM prefs.
final class GoogleMigrationCenterPreferenceSet extends Resource {
  static const String tfType = 'google_migration_center_preference_set';

  GoogleMigrationCenterPreferenceSet({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> preferenceSetId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<MigrationCenterPreferenceSetDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'preference_set_id': preferenceSetId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterPreferenceSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
