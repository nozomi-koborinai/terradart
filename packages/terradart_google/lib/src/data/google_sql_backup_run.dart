// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../sql/google_sql_database_instance.dart'
    show GoogleSqlDatabaseInstance;

/// Sensitive field paths for `google_sql_backup_run`.
const Set<String> _googleSqlBackupRunSensitive = <String>{};

/// Factory wrapper for `google_sql_backup_run`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlBackupRun extends Data {
  static const String tfType = 'google_sql_backup_run';

  DataGoogleSqlBackupRun(
    super.localName, {
    TfArg<num>? backupId,
    required RefTo<GoogleSqlDatabaseInstance> instance,
    TfArg<bool>? mostRecent,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_id': ?backupId,
           'instance': instance.encodeAs('name'),
           'most_recent': ?mostRecent,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlBackupRunSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `backup_id` attribute.
  TfRef<num> get backupId => TfRef.attribute<num>(this, 'backup_id');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `most_recent` attribute.
  TfRef<bool> get mostRecent => TfRef.attribute<bool>(this, 'most_recent');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
