// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_backup`.
const Set<String> _googleBackupDrBackupSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_backup`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrBackup extends Data {
  static const String tfType = 'google_backup_dr_backup';

  DataGoogleBackupDrBackup({
    required super.localName,
    required TfArg<String> backupVaultId,
    required TfArg<String> dataSourceId,
    required TfArg<String> location,
    required TfArg<String> project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_vault_id': backupVaultId,
           'data_source_id': dataSourceId,
           'location': location,
           'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrBackupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backups` attribute.
  TfRef<List<Map<String, Object?>>> get backups =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backups');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
