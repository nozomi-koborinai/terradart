// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../mongo/appwrite_mongo_database.dart' show AppwriteMongoDatabase;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_mongo_backup_policy`.
const Set<String> _appwriteMongoBackupPolicySensitive = <String>{};

/// Mongo Backup Policy enum for `type`.
enum MongoBackupPolicyType implements TerraformEnum {
  full('full'),
  incremental('incremental');

  const MongoBackupPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `appwrite_mongo_backup_policy`.
///
/// Manages a scheduled backup policy for a dedicated Appwrite MongoDB database.
/// Use `appwrite_backup_policy` instead for databases running on Appwrite's
/// shared infrastructure.
final class AppwriteMongoBackupPolicy extends Resource {
  static const String tfType = 'appwrite_mongo_backup_policy';

  AppwriteMongoBackupPolicy({
    required super.localName,
    required RefTo<AppwriteMongoDatabase> databaseId,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    RefTo<AppwriteProject>? projectId,
    required TfArg<num> retention,
    required TfArg<String> schedule,
    TfArg<MongoBackupPolicyType>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId.encodeAs('id'),
           'enabled': ?enabled,
           'name': name,
           'project_id': ?projectId?.encodeAs('id'),
           'retention': retention,
           'schedule': schedule,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMongoBackupPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteMongoBackupPolicy>`.
  RefTo<AppwriteMongoBackupPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `resources` attribute.
  TfRef<List<String>> get resources =>
      TfRef.attribute<List<String>>(this, 'resources');

  /// Reference to `services` attribute.
  TfRef<List<String>> get services =>
      TfRef.attribute<List<String>>(this, 'services');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `retention` attribute.
  TfRef<num> get retention => TfRef.attribute<num>(this, 'retention');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
