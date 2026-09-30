// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../postgresql/appwrite_postgresql_database.dart'
    show AppwritePostgresqlDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_postgresql_pooler`.
const Set<String> _appwritePostgresqlPoolerSensitive = <String>{};

/// Postgresql Pooler enum for `mode`.
enum PostgresqlPoolerMode implements TerraformEnum {
  transaction('transaction'),
  session('session');

  const PostgresqlPoolerMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `appwrite_postgresql_pooler`.
///
/// Configures the connection pooler of a dedicated Appwrite PostgreSQL
/// database. The pooler exists for the lifetime of the database, so this
/// resource only ever updates its settings: destroying it leaves the pooler
/// running with its last applied configuration.
final class AppwritePostgresqlPooler extends Resource {
  static const String tfType = 'appwrite_postgresql_pooler';

  AppwritePostgresqlPooler({
    required super.localName,
    required RefTo<AppwritePostgresqlDatabase> databaseId,
    TfArg<num>? defaultPoolSize,
    TfArg<PostgresqlPoolerMode>? mode,
    TfArg<String>? poolerCpuLimit,
    TfArg<String>? poolerCpuRequest,
    TfArg<String>? poolerMemoryLimit,
    TfArg<String>? poolerMemoryRequest,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? readWriteSplitting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId.encodeAs('id'),
           'default_pool_size': ?defaultPoolSize,
           'mode': ?mode,
           'pooler_cpu_limit': ?poolerCpuLimit,
           'pooler_cpu_request': ?poolerCpuRequest,
           'pooler_memory_limit': ?poolerMemoryLimit,
           'pooler_memory_request': ?poolerMemoryRequest,
           'project_id': ?projectId?.encodeAs('id'),
           'read_write_splitting': ?readWriteSplitting,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwritePostgresqlPoolerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwritePostgresqlPooler>`.
  RefTo<AppwritePostgresqlPooler> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `max_connections` attribute.
  TfRef<num> get maxConnections =>
      TfRef.attribute<num>(this, 'max_connections');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseIdRef =>
      TfRef.attribute<String>(this, 'database_id');

  /// Reference to `default_pool_size` attribute.
  TfRef<num> get defaultPoolSizeRef =>
      TfRef.attribute<num>(this, 'default_pool_size');

  /// Reference to `mode` attribute.
  TfRef<String> get modeRef => TfRef.attribute<String>(this, 'mode');

  /// Reference to `pooler_cpu_limit` attribute.
  TfRef<String> get poolerCpuLimitRef =>
      TfRef.attribute<String>(this, 'pooler_cpu_limit');

  /// Reference to `pooler_cpu_request` attribute.
  TfRef<String> get poolerCpuRequestRef =>
      TfRef.attribute<String>(this, 'pooler_cpu_request');

  /// Reference to `pooler_memory_limit` attribute.
  TfRef<String> get poolerMemoryLimitRef =>
      TfRef.attribute<String>(this, 'pooler_memory_limit');

  /// Reference to `pooler_memory_request` attribute.
  TfRef<String> get poolerMemoryRequestRef =>
      TfRef.attribute<String>(this, 'pooler_memory_request');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectIdRef => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `read_write_splitting` attribute.
  TfRef<bool> get readWriteSplittingRef =>
      TfRef.attribute<bool>(this, 'read_write_splitting');
}
