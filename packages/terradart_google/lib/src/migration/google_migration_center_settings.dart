// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_settings`.
const Set<String> _googleMigrationCenterSettingsSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center settings.
enum MigrationCenterSettingsDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterSettingsDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_migration_center_settings`.
///
/// Settings represents the global or regional settings configuration for a
/// Migration Center project.
///
/// Migration Center regional settings singleton (preference set default, logging).
///
/// Enable `migrationcenter.googleapis.com` before apply. One settings resource
/// exists per project location.
final class GoogleMigrationCenterSettings extends Resource {
  static const String tfType = 'google_migration_center_settings';

  GoogleMigrationCenterSettings({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? preferenceSet,
    TfArg<bool>? disableCloudLogging,
    TfArg<MigrationCenterSettingsDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (preferenceSet != null) 'preference_set': preferenceSet,
           if (disableCloudLogging != null)
             'disable_cloud_logging': disableCloudLogging,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMigrationCenterSettingsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
