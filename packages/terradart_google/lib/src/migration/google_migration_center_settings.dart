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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'preference_set': ?preferenceSet,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable_cloud_logging` attribute.
  TfRef<bool> get disableCloudLoggingRef =>
      TfRef.attribute<bool>(this, 'disable_cloud_logging');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `preference_set` attribute.
  TfRef<String> get preferenceSetRef =>
      TfRef.attribute<String>(this, 'preference_set');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
