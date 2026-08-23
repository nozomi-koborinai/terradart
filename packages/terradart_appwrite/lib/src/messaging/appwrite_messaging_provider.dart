// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_messaging_provider`.
const Set<String> _appwriteMessagingProviderSensitive = <String>{
  'api_key',
  'api_secret',
  'auth_key',
  'auth_token',
  'password',
  'service_account_json',
};

/// Factory wrapper for `appwrite_messaging_provider`.
///
/// Manages an Appwrite messaging provider.
final class AppwriteMessagingProvider extends Resource {
  static const String tfType = 'appwrite_messaging_provider';

  AppwriteMessagingProvider({
    required super.localName,
    TfArg<String>? accountSid,
    TfArg<String>? apiKey,
    TfArg<String>? apiSecret,
    TfArg<String>? authKey,
    TfArg<String>? authKeyId,
    TfArg<String>? authToken,
    TfArg<bool>? autoTls,
    TfArg<String>? bundleId,
    TfArg<String>? customerId,
    TfArg<String>? domain,
    TfArg<bool>? enabled,
    TfArg<String>? encryption,
    TfArg<String>? from,
    TfArg<String>? fromEmail,
    TfArg<String>? fromName,
    TfArg<String>? host,
    TfArg<bool>? isEuRegion,
    required TfArg<String> name,
    TfArg<String>? password,
    TfArg<num>? port,
    TfArg<String>? projectId,
    TfArg<String>? replyToEmail,
    TfArg<String>? replyToName,
    TfArg<bool>? sandbox,
    TfArg<String>? senderId,
    TfArg<String>? serviceAccountJson,
    TfArg<String>? teamId,
    TfArg<String>? templateId,
    required TfArg<String> type,
    TfArg<String>? username,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountSid != null) 'account_sid': accountSid,
           if (apiKey != null) 'api_key': apiKey,
           if (apiSecret != null) 'api_secret': apiSecret,
           if (authKey != null) 'auth_key': authKey,
           if (authKeyId != null) 'auth_key_id': authKeyId,
           if (authToken != null) 'auth_token': authToken,
           if (autoTls != null) 'auto_tls': autoTls,
           if (bundleId != null) 'bundle_id': bundleId,
           if (customerId != null) 'customer_id': customerId,
           if (domain != null) 'domain': domain,
           if (enabled != null) 'enabled': enabled,
           if (encryption != null) 'encryption': encryption,
           if (from != null) 'from': from,
           if (fromEmail != null) 'from_email': fromEmail,
           if (fromName != null) 'from_name': fromName,
           if (host != null) 'host': host,
           if (isEuRegion != null) 'is_eu_region': isEuRegion,
           'name': name,
           if (password != null) 'password': password,
           if (port != null) 'port': port,
           if (projectId != null) 'project_id': projectId,
           if (replyToEmail != null) 'reply_to_email': replyToEmail,
           if (replyToName != null) 'reply_to_name': replyToName,
           if (sandbox != null) 'sandbox': sandbox,
           if (senderId != null) 'sender_id': senderId,
           if (serviceAccountJson != null)
             'service_account_json': serviceAccountJson,
           if (teamId != null) 'team_id': teamId,
           if (templateId != null) 'template_id': templateId,
           'type': type,
           if (username != null) 'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMessagingProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
