// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_backup_run`.
const Set<String> _googleSqlBackupRunSensitive = <String>{};

/// Factory wrapper for `google_sql_backup_run`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlBackupRun extends Data {
  static const String tfType = 'google_sql_backup_run';

  DataGoogleSqlBackupRun({
    required super.localName,
    TfArg<num>? backupId,
    required TfArg<String> instance,
    TfArg<bool>? mostRecent,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (backupId != null) 'backup_id': backupId,
           'instance': instance,
           if (mostRecent != null) 'most_recent': mostRecent,
           if (project != null) 'project': project,
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
}
