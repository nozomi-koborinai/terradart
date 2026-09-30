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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_version': ?databaseVersion,
           'project': ?project,
           'region': ?region,
           'state': ?state,
           'tier': ?tier,
           'zone': ?zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlDatabaseInstancesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instances` attribute.
  TfRef<List<Map<String, Object?>>> get instances =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instances');

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersionRef =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');

  /// Reference to `tier` attribute.
  TfRef<String> get tierRef => TfRef.attribute<String>(this, 'tier');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');
}
