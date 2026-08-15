// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_db_servers`.
const Set<String> _googleOracleDatabaseDbServersSensitive = <String>{};

/// Factory wrapper for `google_oracle_database_db_servers`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseDbServers extends Data {
  static const String tfType = 'google_oracle_database_db_servers';

  DataGoogleOracleDatabaseDbServers({
    required super.localName,
    required TfArg<String> cloudExadataInfrastructure,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_exadata_infrastructure': cloudExadataInfrastructure,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseDbServersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `db_servers` attribute.
  TfRef<List<Map<String, Object?>>> get dbServers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'db_servers');
}
