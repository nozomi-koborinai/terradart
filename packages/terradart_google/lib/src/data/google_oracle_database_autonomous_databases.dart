// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_autonomous_databases`.
const Set<String> _googleOracleDatabaseAutonomousDatabasesSensitive =
    <String>{};

/// Factory wrapper for `google_oracle_database_autonomous_databases`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseAutonomousDatabases extends Data {
  static const String tfType = 'google_oracle_database_autonomous_databases';

  DataGoogleOracleDatabaseAutonomousDatabases({
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
      _googleOracleDatabaseAutonomousDatabasesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autonomous_databases` attribute.
  TfRef<List<Map<String, Object?>>> get autonomousDatabases =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'autonomous_databases');
}
