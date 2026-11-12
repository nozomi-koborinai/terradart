// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_auth_methods`.
const Set<String> _appwriteProjectAuthMethodsSensitive = <String>{};

/// Factory wrapper for `appwrite_project_auth_methods`.
///
/// Enables or disables the ways users can sign in to a project. Requests made
/// with an API key are not affected. Every project has these settings, so
/// creating this resource takes them over rather than creating anything, and
/// destroying it resets them to Appwrite's defaults. An attribute left out of
/// the configuration is set to its default too. Use one per project: two would
/// overwrite each other.
final class AppwriteProjectAuthMethods extends Resource {
  static const String tfType = 'appwrite_project_auth_methods';

  AppwriteProjectAuthMethods(
    super.localName, {
    TfArg<bool>? anonymous,
    TfArg<bool>? emailOtp,
    TfArg<bool>? emailPassword,
    TfArg<bool>? invites,
    TfArg<bool>? jwt,
    TfArg<bool>? magicUrl,
    TfArg<bool>? phone,
    RefTo<AppwriteProject>? projectId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'anonymous': ?anonymous,
           'email_otp': ?emailOtp,
           'email_password': ?emailPassword,
           'invites': ?invites,
           'jwt': ?jwt,
           'magic_url': ?magicUrl,
           'phone': ?phone,
           'project_id': ?projectId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectAuthMethodsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectAuthMethods>`.
  RefTo<AppwriteProjectAuthMethods> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `anonymous` attribute.
  TfRef<bool> get anonymous => TfRef.attribute<bool>(this, 'anonymous');

  /// Reference to `email_otp` attribute.
  TfRef<bool> get emailOtp => TfRef.attribute<bool>(this, 'email_otp');

  /// Reference to `email_password` attribute.
  TfRef<bool> get emailPassword =>
      TfRef.attribute<bool>(this, 'email_password');

  /// Reference to `invites` attribute.
  TfRef<bool> get invites => TfRef.attribute<bool>(this, 'invites');

  /// Reference to `jwt` attribute.
  TfRef<bool> get jwt => TfRef.attribute<bool>(this, 'jwt');

  /// Reference to `magic_url` attribute.
  TfRef<bool> get magicUrl => TfRef.attribute<bool>(this, 'magic_url');

  /// Reference to `phone` attribute.
  TfRef<bool> get phone => TfRef.attribute<bool>(this, 'phone');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
