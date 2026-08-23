// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_mysql_backup_policy`.
const Set<String> _appwriteMysqlBackupPolicySensitive = <String>{};

/// Factory wrapper for `appwrite_mysql_backup_policy`.
///
/// Manages a scheduled backup policy for a dedicated Appwrite MySQL database.
/// Use `appwrite_backup_policy` instead for databases running on Appwrite's
/// shared infrastructure.
final class AppwriteMysqlBackupPolicy extends Resource {
  static const String tfType = 'appwrite_mysql_backup_policy';

  AppwriteMysqlBackupPolicy({
    required super.localName,
    required TfArg<String> databaseId,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<String>? projectId,
    required TfArg<num> retention,
    required TfArg<String> schedule,
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           if (enabled != null) 'enabled': enabled,
           'name': name,
           if (projectId != null) 'project_id': projectId,
           'retention': retention,
           'schedule': schedule,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMysqlBackupPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
