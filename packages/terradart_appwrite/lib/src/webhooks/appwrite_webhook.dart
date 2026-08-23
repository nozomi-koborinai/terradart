// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? projectId,
    TfArg<bool>? tls,
    required TfArg<String> url,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (authPassword != null) 'auth_password': authPassword,
           if (authUsername != null) 'auth_username': authUsername,
           if (enabled != null) 'enabled': enabled,
           'events': events,
           'name': name,
           if (projectId != null) 'project_id': projectId,
           if (tls != null) 'tls': tls,
           'url': url,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteWebhookSensitive;

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
}
