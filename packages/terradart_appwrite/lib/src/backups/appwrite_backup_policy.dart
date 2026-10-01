// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

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
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? resourceId,
    required TfArg<num> retention,
    required TfArg<String> schedule,
    required TfArg<List<String>> services,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'name': ?name,
           'project_id': ?projectId?.encodeAs('id'),
           'resource_id': ?resourceId,
           'retention': retention,
           'schedule': schedule,
           'services': services,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteBackupPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteBackupPolicy>`.
  RefTo<AppwriteBackupPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `retention` attribute.
  TfRef<num> get retention => TfRef.attribute<num>(this, 'retention');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `services` attribute.
  TfRef<List<String>> get services =>
      TfRef.attribute<List<String>>(this, 'services');
}
