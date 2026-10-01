// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../migration/google_migration_center_preference_set.dart'
    show GoogleMigrationCenterPreferenceSet;

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
    RefTo<GoogleMigrationCenterPreferenceSet>? preferenceSet,
    TfArg<bool>? disableCloudLogging,
    TfArg<MigrationCenterSettingsDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'preference_set': ?preferenceSet?.encodeAs('name'),
           'disable_cloud_logging': ?disableCloudLogging,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMigrationCenterSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterSettings>`.
  RefTo<GoogleMigrationCenterSettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable_cloud_logging` attribute.
  TfRef<bool> get disableCloudLogging =>
      TfRef.attribute<bool>(this, 'disable_cloud_logging');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `preference_set` attribute.
  TfRef<String> get preferenceSet =>
      TfRef.attribute<String>(this, 'preference_set');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
