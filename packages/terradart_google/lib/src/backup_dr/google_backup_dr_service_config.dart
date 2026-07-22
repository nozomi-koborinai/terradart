// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_service_config`.
const Set<String> _googleBackupDrServiceConfigSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_service_config`.
///
/// Initializes a Project-level default Backupdr config. It creates default
/// Backupvault and default Backup Plan in same project for customers to protect
/// instances.
///
/// Backup and DR Service **service config** — initializes Backup and DR
/// for a project/location and resource type.
///
/// **Cost:** no separate Cloud Billing Catalog SKU under BackupDR
/// `3DAD-299B-0D94` for the config object itself (management/storage
/// SKUs apply when vaults/associations exist). Deferred with the
/// never_apply Backup DR Wave (no apply-smoke quickstart).
///
/// Enable `backupdr.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleBackupDrServiceConfig extends Resource {
  static const String tfType = 'google_backup_dr_service_config';

  GoogleBackupDrServiceConfig({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> resourceType,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'resource_type': resourceType,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrServiceConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
