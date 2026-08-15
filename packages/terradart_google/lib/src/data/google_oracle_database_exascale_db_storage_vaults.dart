// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_exascale_db_storage_vaults`.
const Set<String> _googleOracleDatabaseExascaleDbStorageVaultsSensitive =
    <String>{};

/// Factory wrapper for `google_oracle_database_exascale_db_storage_vaults`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseExascaleDbStorageVaults extends Data {
  static const String tfType =
      'google_oracle_database_exascale_db_storage_vaults';

  DataGoogleOracleDatabaseExascaleDbStorageVaults({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseExascaleDbStorageVaultsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `exascale_db_storage_vaults` attribute.
  TfRef<List<Map<String, Object?>>> get exascaleDbStorageVaults =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'exascale_db_storage_vaults',
      );
}
