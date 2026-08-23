// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_mysql_branch`.
const Set<String> _appwriteMysqlBranchSensitive = <String>{
  'connection_string',
  'password',
};

/// Factory wrapper for `appwrite_mysql_branch`.
///
/// Creates a branch of a dedicated Appwrite MySQL database: a copy that shares
/// the parent's credentials but has its own host and database name.
///
/// Branches have no update route, so changing any argument replaces the branch
/// and discards its data. A branch given a `ttl` is deleted by the server when
/// it expires; the next refresh then drops it from state and the following plan
/// recreates it.
final class AppwriteMysqlBranch extends Resource {
  static const String tfType = 'appwrite_mysql_branch';

  AppwriteMysqlBranch({
    required super.localName,
    TfArg<String>? branchId,
    required TfArg<String> databaseId,
    TfArg<String>? projectId,
    TfArg<num>? ttl,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (branchId != null) 'branch_id': branchId,
           'database_id': databaseId,
           if (projectId != null) 'project_id': projectId,
           if (ttl != null) 'ttl': ttl,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMysqlBranchSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `branch_name` attribute.
  TfRef<String> get branchName => TfRef.attribute<String>(this, 'branch_name');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `expires_at` attribute.
  TfRef<num> get expiresAt => TfRef.attribute<num>(this, 'expires_at');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `ssl` attribute.
  TfRef<bool> get ssl => TfRef.attribute<bool>(this, 'ssl');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
