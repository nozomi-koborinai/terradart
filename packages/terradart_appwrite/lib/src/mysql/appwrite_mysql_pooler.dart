// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_mysql_pooler`.
const Set<String> _appwriteMysqlPoolerSensitive = <String>{};

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
    TfArg<String>? mode,
    TfArg<String>? poolerCpuLimit,
    TfArg<String>? poolerCpuRequest,
    TfArg<String>? poolerMemoryLimit,
    TfArg<String>? poolerMemoryRequest,
    TfArg<String>? projectId,
    TfArg<bool>? readWriteSplitting,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           if (defaultPoolSize != null) 'default_pool_size': defaultPoolSize,
           if (maxConnections != null) 'max_connections': maxConnections,
           if (mode != null) 'mode': mode,
           if (poolerCpuLimit != null) 'pooler_cpu_limit': poolerCpuLimit,
           if (poolerCpuRequest != null) 'pooler_cpu_request': poolerCpuRequest,
           if (poolerMemoryLimit != null)
             'pooler_memory_limit': poolerMemoryLimit,
           if (poolerMemoryRequest != null)
             'pooler_memory_request': poolerMemoryRequest,
           if (projectId != null) 'project_id': projectId,
           if (readWriteSplitting != null)
             'read_write_splitting': readWriteSplitting,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMysqlPoolerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');
}
