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
    TfArg<String>? projectId,
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
           'project_id': ?projectId,
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
}
