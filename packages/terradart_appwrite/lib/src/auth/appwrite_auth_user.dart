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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'email': ?email,
           'email_verification': ?emailVerification,
           'labels': ?labels,
           'name': ?name,
           'password': ?password,
           'phone': ?phone,
           'phone_verification': ?phoneVerification,
           'project_id': ?projectId,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteAuthUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteAuthUser>`.
  RefTo<AppwriteAuthUser> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
