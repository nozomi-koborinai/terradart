// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_backup_policy`.
const Set<String> _appwriteBackupPolicySensitive = <String>{};

/// Factory wrapper for `appwrite_backup_policy`.
///
/// Manages an Appwrite backup policy.
final class AppwriteBackupPolicy extends Resource {
  static const String tfType = 'appwrite_backup_policy';

  AppwriteBackupPolicy({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<String>? name,
    TfArg<String>? projectId,
    TfArg<String>? resourceId,
    required TfArg<num> retention,
    required TfArg<String> schedule,
    required TfArg<List<String>> services,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           if (name != null) 'name': name,
           if (projectId != null) 'project_id': projectId,
           if (resourceId != null) 'resource_id': resourceId,
           'retention': retention,
           'schedule': schedule,
           'services': services,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteBackupPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
