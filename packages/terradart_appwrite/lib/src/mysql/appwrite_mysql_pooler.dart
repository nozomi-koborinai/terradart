// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> databaseId,
    TfArg<num>? defaultPoolSize,
    TfArg<num>? maxConnections,
    TfArg<MysqlPoolerMode>? mode,
    TfArg<String>? poolerCpuLimit,
    TfArg<String>? poolerCpuRequest,
    TfArg<String>? poolerMemoryLimit,
    TfArg<String>? poolerMemoryRequest,
    TfArg<String>? projectId,
    TfArg<bool>? readWriteSplitting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           'default_pool_size': ?defaultPoolSize,
           'max_connections': ?maxConnections,
           'mode': ?mode,
           'pooler_cpu_limit': ?poolerCpuLimit,
           'pooler_cpu_request': ?poolerCpuRequest,
           'pooler_memory_limit': ?poolerMemoryLimit,
           'pooler_memory_request': ?poolerMemoryRequest,
           'project_id': ?projectId,
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
}
