// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_webhook`.
const Set<String> _appwriteWebhookSensitive = <String>{
  'auth_password',
  'secret',
};

/// Factory wrapper for `appwrite_webhook`.
///
/// Manages an Appwrite webhook.
final class AppwriteWebhook extends Resource {
  static const String tfType = 'appwrite_webhook';

  AppwriteWebhook({
    required super.localName,
    TfArg<String>? authPassword,
    TfArg<String>? authUsername,
    TfArg<bool>? enabled,
    required TfArg<List<String>> events,
    required TfArg<String> name,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? tls,
    required TfArg<String> url,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_password': ?authPassword,
           'auth_username': ?authUsername,
           'enabled': ?enabled,
           'events': events,
           'name': name,
           'project_id': ?projectId?.encodeAs('id'),
           'tls': ?tls,
           'url': url,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteWebhookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteWebhook>`.
  RefTo<AppwriteWebhook> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `auth_password` attribute.
  TfRef<String> get authPasswordRef =>
      TfRef.attribute<String>(this, 'auth_password');

  /// Reference to `auth_username` attribute.
  TfRef<String> get authUsernameRef =>
      TfRef.attribute<String>(this, 'auth_username');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `events` attribute.
  TfRef<List<String>> get eventsRef =>
      TfRef.attribute<List<String>>(this, 'events');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectIdRef => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `tls` attribute.
  TfRef<bool> get tlsRef => TfRef.attribute<bool>(this, 'tls');

  /// Reference to `url` attribute.
  TfRef<String> get urlRef => TfRef.attribute<String>(this, 'url');
}
