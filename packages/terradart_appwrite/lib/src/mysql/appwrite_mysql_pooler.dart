// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../mysql/appwrite_mysql_database.dart' show AppwriteMysqlDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_mysql_pooler`.
const Set<String> _appwriteMysqlPoolerSensitive = <String>{};

/// Mysql Pooler enum for `mode`.
enum MysqlPoolerMode implements TerraformEnum {
  transaction('transaction'),
  session('session');

  const MysqlPoolerMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `appwrite_mysql_pooler`.
///
/// Configures the connection pooler of a dedicated Appwrite MySQL database. The
/// pooler exists for the lifetime of the database, so this resource only ever
/// updates its settings: destroying it leaves the pooler running with its last
/// applied configuration.
final class AppwriteMysqlPooler extends Resource {
  static const String tfType = 'appwrite_mysql_pooler';

  AppwriteMysqlPooler({
    required super.localName,
    required RefTo<AppwriteMysqlDatabase> databaseId,
    TfArg<num>? defaultPoolSize,
    TfArg<num>? maxConnections,
    TfArg<MysqlPoolerMode>? mode,
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
           'max_connections': ?maxConnections,
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
  Set<String> get sensitiveFields => _appwriteMysqlPoolerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteMysqlPooler>`.
  RefTo<AppwriteMysqlPooler> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `default_pool_size` attribute.
  TfRef<num> get defaultPoolSize =>
      TfRef.attribute<num>(this, 'default_pool_size');

  /// Reference to `max_connections` attribute.
  TfRef<num> get maxConnections =>
      TfRef.attribute<num>(this, 'max_connections');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `pooler_cpu_limit` attribute.
  TfRef<String> get poolerCpuLimit =>
      TfRef.attribute<String>(this, 'pooler_cpu_limit');

  /// Reference to `pooler_cpu_request` attribute.
  TfRef<String> get poolerCpuRequest =>
      TfRef.attribute<String>(this, 'pooler_cpu_request');

  /// Reference to `pooler_memory_limit` attribute.
  TfRef<String> get poolerMemoryLimit =>
      TfRef.attribute<String>(this, 'pooler_memory_limit');

  /// Reference to `pooler_memory_request` attribute.
  TfRef<String> get poolerMemoryRequest =>
      TfRef.attribute<String>(this, 'pooler_memory_request');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `read_write_splitting` attribute.
  TfRef<bool> get readWriteSplitting =>
      TfRef.attribute<bool>(this, 'read_write_splitting');
}
