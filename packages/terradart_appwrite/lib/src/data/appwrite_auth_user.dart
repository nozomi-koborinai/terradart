// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_auth_user`.
const Set<String> _appwriteAuthUserSensitive = <String>{};

/// Factory wrapper for `appwrite_auth_user`.
///
/// Fetches an Appwrite user by ID.
final class DataAppwriteAuthUser extends Data {
  static const String tfType = 'appwrite_auth_user';

  DataAppwriteAuthUser({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? projectId,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (projectId != null) 'project_id': projectId},
       );

  @override
  Set<String> get sensitiveFields => _appwriteAuthUserSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
