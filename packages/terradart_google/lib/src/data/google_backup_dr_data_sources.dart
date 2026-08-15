// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_data_sources`.
const Set<String> _googleBackupDrDataSourcesSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_data_sources`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrDataSources extends Data {
  static const String tfType = 'google_backup_dr_data_sources';

  DataGoogleBackupDrDataSources({
    required super.localName,
    required TfArg<String> backupVaultId,
    TfArg<String>? filter,
    required TfArg<String> location,
    TfArg<String>? orderBy,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_vault_id': backupVaultId,
           if (filter != null) 'filter': filter,
           'location': location,
           if (orderBy != null) 'order_by': orderBy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrDataSourcesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_sources` attribute.
  TfRef<List<Map<String, Object?>>> get dataSources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'data_sources');
}
