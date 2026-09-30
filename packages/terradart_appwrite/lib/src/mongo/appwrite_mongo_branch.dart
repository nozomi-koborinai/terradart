// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../mongo/appwrite_mongo_database.dart' show AppwriteMongoDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_mongo_branch`.
const Set<String> _appwriteMongoBranchSensitive = <String>{
  'connection_string',
  'password',
};

/// Factory wrapper for `appwrite_mongo_branch`.
///
/// Creates a branch of a dedicated Appwrite MongoDB database: a copy that
/// shares the parent's credentials but has its own host and database name.
///
/// Branches have no update route, so changing any argument replaces the branch
/// and discards its data. A branch given a `ttl` is deleted by the server when
/// it expires; the next refresh then drops it from state and the following plan
/// recreates it.
final class AppwriteMongoBranch extends Resource {
  static const String tfType = 'appwrite_mongo_branch';

  AppwriteMongoBranch({
    required super.localName,
    TfArg<String>? branchId,
    required RefTo<AppwriteMongoDatabase> databaseId,
    RefTo<AppwriteProject>? projectId,
    TfArg<num>? ttl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'branch_id': ?branchId,
           'database_id': databaseId.encodeAs('id'),
           'project_id': ?projectId?.encodeAs('id'),
           'ttl': ?ttl,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMongoBranchSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteMongoBranch>`.
  RefTo<AppwriteMongoBranch> get ref => RefTo.of(this);

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

  /// Reference to `branch_id` attribute.
  TfRef<String> get branchIdRef => TfRef.attribute<String>(this, 'branch_id');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseIdRef =>
      TfRef.attribute<String>(this, 'database_id');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectIdRef => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttlRef => TfRef.attribute<num>(this, 'ttl');
}
