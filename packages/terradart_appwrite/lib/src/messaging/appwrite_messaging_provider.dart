// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_messaging_provider`.
const Set<String> _appwriteMessagingProviderSensitive = <String>{
  'api_key',
  'api_secret',
  'auth_key',
  'auth_token',
  'password',
  'service_account_json',
};

/// Messaging Provider enum for `type`.
enum MessagingProviderType implements TerraformEnum {
  sendgrid('sendgrid'),
  mailgun('mailgun'),
  smtp('smtp'),
  resend('resend'),
  twilio('twilio'),
  vonage('vonage'),
  msg91('msg91'),
  telesign('telesign'),
  textmagic('textmagic'),
  apns('apns'),
  fcm('fcm');

  const MessagingProviderType(this.terraformValue);
  @override
  final String terraformValue;
}

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
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? replyToEmail,
    TfArg<String>? replyToName,
    TfArg<bool>? sandbox,
    TfArg<String>? senderId,
    TfArg<String>? serviceAccountJson,
    TfArg<String>? teamId,
    TfArg<String>? templateId,
    required TfArg<MessagingProviderType> type,
    TfArg<String>? username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_sid': ?accountSid,
           'api_key': ?apiKey,
           'api_secret': ?apiSecret,
           'auth_key': ?authKey,
           'auth_key_id': ?authKeyId,
           'auth_token': ?authToken,
           'auto_tls': ?autoTls,
           'bundle_id': ?bundleId,
           'customer_id': ?customerId,
           'domain': ?domain,
           'enabled': ?enabled,
           'encryption': ?encryption,
           'from': ?from,
           'from_email': ?fromEmail,
           'from_name': ?fromName,
           'host': ?host,
           'is_eu_region': ?isEuRegion,
           'name': name,
           'password': ?password,
           'port': ?port,
           'project_id': ?projectId?.encodeAs('id'),
           'reply_to_email': ?replyToEmail,
           'reply_to_name': ?replyToName,
           'sandbox': ?sandbox,
           'sender_id': ?senderId,
           'service_account_json': ?serviceAccountJson,
           'team_id': ?teamId,
           'template_id': ?templateId,
           'type': type,
           'username': ?username,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMessagingProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteMessagingProvider>`.
  RefTo<AppwriteMessagingProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_sid` attribute.
  TfRef<String> get accountSidRef =>
      TfRef.attribute<String>(this, 'account_sid');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKeyRef => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `api_secret` attribute.
  TfRef<String> get apiSecretRef => TfRef.attribute<String>(this, 'api_secret');

  /// Reference to `auth_key` attribute.
  TfRef<String> get authKeyRef => TfRef.attribute<String>(this, 'auth_key');

  /// Reference to `auth_key_id` attribute.
  TfRef<String> get authKeyIdRef =>
      TfRef.attribute<String>(this, 'auth_key_id');

  /// Reference to `auth_token` attribute.
  TfRef<String> get authTokenRef => TfRef.attribute<String>(this, 'auth_token');

  /// Reference to `auto_tls` attribute.
  TfRef<bool> get autoTlsRef => TfRef.attribute<bool>(this, 'auto_tls');

  /// Reference to `bundle_id` attribute.
  TfRef<String> get bundleIdRef => TfRef.attribute<String>(this, 'bundle_id');

  /// Reference to `customer_id` attribute.
  TfRef<String> get customerIdRef =>
      TfRef.attribute<String>(this, 'customer_id');

  /// Reference to `domain` attribute.
  TfRef<String> get domainRef => TfRef.attribute<String>(this, 'domain');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `encryption` attribute.
  TfRef<String> get encryptionRef =>
      TfRef.attribute<String>(this, 'encryption');

  /// Reference to `from` attribute.
  TfRef<String> get fromRef => TfRef.attribute<String>(this, 'from');

  /// Reference to `from_email` attribute.
  TfRef<String> get fromEmailRef => TfRef.attribute<String>(this, 'from_email');

  /// Reference to `from_name` attribute.
  TfRef<String> get fromNameRef => TfRef.attribute<String>(this, 'from_name');

  /// Reference to `host` attribute.
  TfRef<String> get hostRef => TfRef.attribute<String>(this, 'host');

  /// Reference to `is_eu_region` attribute.
  TfRef<bool> get isEuRegionRef => TfRef.attribute<bool>(this, 'is_eu_region');

  /// Reference to `password` attribute.
  TfRef<String> get passwordRef => TfRef.attribute<String>(this, 'password');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectIdRef => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `reply_to_email` attribute.
  TfRef<String> get replyToEmailRef =>
      TfRef.attribute<String>(this, 'reply_to_email');

  /// Reference to `reply_to_name` attribute.
  TfRef<String> get replyToNameRef =>
      TfRef.attribute<String>(this, 'reply_to_name');

  /// Reference to `sandbox` attribute.
  TfRef<bool> get sandboxRef => TfRef.attribute<bool>(this, 'sandbox');

  /// Reference to `sender_id` attribute.
  TfRef<String> get senderIdRef => TfRef.attribute<String>(this, 'sender_id');

  /// Reference to `service_account_json` attribute.
  TfRef<String> get serviceAccountJsonRef =>
      TfRef.attribute<String>(this, 'service_account_json');

  /// Reference to `team_id` attribute.
  TfRef<String> get teamIdRef => TfRef.attribute<String>(this, 'team_id');

  /// Reference to `template_id` attribute.
  TfRef<String> get templateIdRef =>
      TfRef.attribute<String>(this, 'template_id');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `username` attribute.
  TfRef<String> get usernameRef => TfRef.attribute<String>(this, 'username');
}
