// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../auth/appwrite_auth_user.dart';
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_auth_user`.
const Set<String> _appwriteAuthUserSensitive = <String>{};

/// Factory wrapper for `appwrite_auth_user`.
///
/// Fetches an Appwrite user by ID.
final class DataAppwriteAuthUser extends Data {
  static const String tfType = 'appwrite_auth_user';

  DataAppwriteAuthUser(
    super.localName, {
    required TfArg<String> id,
    RefTo<AppwriteProject>? projectId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, 'project_id': ?projectId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _appwriteAuthUserSensitive;

  /// A reference to the `appwrite_auth_user` this data source reads, for
  /// arguments typed `RefTo<AppwriteAuthUser>`.
  RefTo<AppwriteAuthUser> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `email_verification` attribute.
  TfRef<bool> get emailVerification =>
      TfRef.attribute<bool>(this, 'email_verification');

  /// Reference to `labels` attribute.
  TfRef<List<String>> get labels =>
      TfRef.attribute<List<String>>(this, 'labels');

  /// Reference to `phone` attribute.
  TfRef<String> get phone => TfRef.attribute<String>(this, 'phone');

  /// Reference to `phone_verification` attribute.
  TfRef<bool> get phoneVerification =>
      TfRef.attribute<bool>(this, 'phone_verification');

  /// Reference to `status` attribute.
  TfRef<bool> get status => TfRef.attribute<bool>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
