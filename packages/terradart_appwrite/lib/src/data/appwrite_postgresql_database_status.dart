// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_postgresql_database_status`.
const Set<String> _appwritePostgresqlDatabaseStatusSensitive = <String>{};

/// Factory wrapper for `appwrite_postgresql_database_status`.
///
/// Reads the live operational state of a dedicated Appwrite PostgreSQL
/// database: health, replication, connection counts and storage volumes.
///
/// These are measurements taken when Terraform refreshes, not configuration, so
/// they change between runs on their own. Use them for outputs and checks, not
/// to drive resource arguments.
final class DataAppwritePostgresqlDatabaseStatus extends Data {
  static const String tfType = 'appwrite_postgresql_database_status';

  DataAppwritePostgresqlDatabaseStatus({
    required super.localName,
    required TfArg<String> databaseId,
    TfArg<String>? projectId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           if (projectId != null) 'project_id': projectId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwritePostgresqlDatabaseStatusSensitive;

  /// Reference to `connections_current` attribute.
  TfRef<num> get connectionsCurrent =>
      TfRef.attribute<num>(this, 'connections_current');

  /// Reference to `connections_max` attribute.
  TfRef<num> get connectionsMax =>
      TfRef.attribute<num>(this, 'connections_max');

  /// Reference to `effective_sync_mode` attribute.
  TfRef<String> get effectiveSyncMode =>
      TfRef.attribute<String>(this, 'effective_sync_mode');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `health` attribute.
  TfRef<String> get health => TfRef.attribute<String>(this, 'health');

  /// Reference to `ready` attribute.
  TfRef<bool> get ready => TfRef.attribute<bool>(this, 'ready');

  /// Reference to `sync_acknowledgements` attribute.
  TfRef<num> get syncAcknowledgements =>
      TfRef.attribute<num>(this, 'sync_acknowledgements');

  /// Reference to `sync_degraded` attribute.
  TfRef<bool> get syncDegraded => TfRef.attribute<bool>(this, 'sync_degraded');

  /// Reference to `sync_mode` attribute.
  TfRef<String> get syncMode => TfRef.attribute<String>(this, 'sync_mode');

  /// Reference to `sync_standby_count` attribute.
  TfRef<num> get syncStandbyCount =>
      TfRef.attribute<num>(this, 'sync_standby_count');

  /// Reference to `sync_state_confirmed` attribute.
  TfRef<bool> get syncStateConfirmed =>
      TfRef.attribute<bool>(this, 'sync_state_confirmed');

  /// Reference to `uptime` attribute.
  TfRef<num> get uptime => TfRef.attribute<num>(this, 'uptime');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
