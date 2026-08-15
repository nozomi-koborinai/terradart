// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_database_instance_latest_recovery_time`.
const Set<String> _googleSqlDatabaseInstanceLatestRecoveryTimeSensitive =
    <String>{};

/// Factory wrapper for `google_sql_database_instance_latest_recovery_time`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlDatabaseInstanceLatestRecoveryTime extends Data {
  static const String tfType =
      'google_sql_database_instance_latest_recovery_time';

  DataGoogleSqlDatabaseInstanceLatestRecoveryTime({
    required super.localName,
    required TfArg<String> instance,
    TfArg<String>? project,
    TfArg<String>? sourceInstanceDeletionTime,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           if (project != null) 'project': project,
           if (sourceInstanceDeletionTime != null)
             'source_instance_deletion_time': sourceInstanceDeletionTime,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSqlDatabaseInstanceLatestRecoveryTimeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `latest_recovery_time` attribute.
  TfRef<String> get latestRecoveryTime =>
      TfRef.attribute<String>(this, 'latest_recovery_time');
}
