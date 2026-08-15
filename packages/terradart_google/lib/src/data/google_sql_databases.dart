// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_databases`.
const Set<String> _googleSqlDatabasesSensitive = <String>{};

/// Factory wrapper for `google_sql_databases`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlDatabases extends Data {
  static const String tfType = 'google_sql_databases';

  DataGoogleSqlDatabases({
    required super.localName,
    required TfArg<String> instance,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlDatabasesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `databases` attribute.
  TfRef<List<Map<String, Object?>>> get databases =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'databases');
}
