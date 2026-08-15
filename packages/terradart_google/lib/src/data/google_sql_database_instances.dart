// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_database_instances`.
const Set<String> _googleSqlDatabaseInstancesSensitive = <String>{};

/// Factory wrapper for `google_sql_database_instances`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlDatabaseInstances extends Data {
  static const String tfType = 'google_sql_database_instances';

  DataGoogleSqlDatabaseInstances({
    required super.localName,
    TfArg<String>? databaseVersion,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? state,
    TfArg<String>? tier,
    TfArg<String>? zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (databaseVersion != null) 'database_version': databaseVersion,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (tier != null) 'tier': tier,
           if (zone != null) 'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlDatabaseInstancesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instances` attribute.
  TfRef<List<Map<String, Object?>>> get instances =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instances');
}
