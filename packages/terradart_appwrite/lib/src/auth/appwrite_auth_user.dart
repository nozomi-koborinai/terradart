// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_auth_user`.
const Set<String> _appwriteAuthUserSensitive = <String>{'password'};

/// Factory wrapper for `appwrite_auth_user`.
///
/// Manages an Appwrite user.
final class AppwriteAuthUser extends Resource {
  static const String tfType = 'appwrite_auth_user';

  AppwriteAuthUser({
    required super.localName,
    TfArg<String>? email,
    TfArg<bool>? emailVerification,
    TfArg<List<String>>? labels,
    TfArg<String>? name,
    TfArg<String>? password,
    TfArg<String>? phone,
    TfArg<bool>? phoneVerification,
    TfArg<String>? projectId,
    TfArg<bool>? status,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (email != null) 'email': email,
           if (emailVerification != null)
             'email_verification': emailVerification,
           if (labels != null) 'labels': labels,
           if (name != null) 'name': name,
           if (password != null) 'password': password,
           if (phone != null) 'phone': phone,
           if (phoneVerification != null)
             'phone_verification': phoneVerification,
           if (projectId != null) 'project_id': projectId,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteAuthUserSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
