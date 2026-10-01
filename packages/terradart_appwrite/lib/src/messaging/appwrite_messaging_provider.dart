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
extension type const MessagingProviderType._(TfArg<String> _)
    implements TfArg<String> {
  MessagingProviderType.variable(String name) : this._(TfArg.variable(name));
  MessagingProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const MessagingProviderType.arg(TfArg<String> arg) : this._(arg);

  static const sendgrid = MessagingProviderType._(TfArgLiteral('sendgrid'));
  static const mailgun = MessagingProviderType._(TfArgLiteral('mailgun'));
  static const smtp = MessagingProviderType._(TfArgLiteral('smtp'));
  static const resend = MessagingProviderType._(TfArgLiteral('resend'));
  static const twilio = MessagingProviderType._(TfArgLiteral('twilio'));
  static const vonage = MessagingProviderType._(TfArgLiteral('vonage'));
  static const msg91 = MessagingProviderType._(TfArgLiteral('msg91'));
  static const telesign = MessagingProviderType._(TfArgLiteral('telesign'));
  static const textmagic = MessagingProviderType._(TfArgLiteral('textmagic'));
  static const apns = MessagingProviderType._(TfArgLiteral('apns'));
  static const fcm = MessagingProviderType._(TfArgLiteral('fcm'));

  static const List<MessagingProviderType> values = [
    sendgrid,
    mailgun,
    smtp,
    resend,
    twilio,
    vonage,
    msg91,
    telesign,
    textmagic,
    apns,
    fcm,
  ];
}

/// Factory wrapper for `appwrite_messaging_provider`.
///
/// Manages an Appwrite messaging provider.
final class AppwriteMessagingProvider extends Resource {
  static const String tfType = 'appwrite_messaging_provider';

  AppwriteMessagingProvider(
    super.localName, {
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
    required MessagingProviderType type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_sid` attribute.
  TfRef<String> get accountSid => TfRef.attribute<String>(this, 'account_sid');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `api_secret` attribute.
  TfRef<String> get apiSecret => TfRef.attribute<String>(this, 'api_secret');

  /// Reference to `auth_key` attribute.
  TfRef<String> get authKey => TfRef.attribute<String>(this, 'auth_key');

  /// Reference to `auth_key_id` attribute.
  TfRef<String> get authKeyId => TfRef.attribute<String>(this, 'auth_key_id');

  /// Reference to `auth_token` attribute.
  TfRef<String> get authToken => TfRef.attribute<String>(this, 'auth_token');

  /// Reference to `auto_tls` attribute.
  TfRef<bool> get autoTls => TfRef.attribute<bool>(this, 'auto_tls');

  /// Reference to `bundle_id` attribute.
  TfRef<String> get bundleId => TfRef.attribute<String>(this, 'bundle_id');

  /// Reference to `customer_id` attribute.
  TfRef<String> get customerId => TfRef.attribute<String>(this, 'customer_id');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `encryption` attribute.
  TfRef<String> get encryption => TfRef.attribute<String>(this, 'encryption');

  /// Reference to `from` attribute.
  TfRef<String> get from => TfRef.attribute<String>(this, 'from');

  /// Reference to `from_email` attribute.
  TfRef<String> get fromEmail => TfRef.attribute<String>(this, 'from_email');

  /// Reference to `from_name` attribute.
  TfRef<String> get fromName => TfRef.attribute<String>(this, 'from_name');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `is_eu_region` attribute.
  TfRef<bool> get isEuRegion => TfRef.attribute<bool>(this, 'is_eu_region');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `reply_to_email` attribute.
  TfRef<String> get replyToEmail =>
      TfRef.attribute<String>(this, 'reply_to_email');

  /// Reference to `reply_to_name` attribute.
  TfRef<String> get replyToName =>
      TfRef.attribute<String>(this, 'reply_to_name');

  /// Reference to `sandbox` attribute.
  TfRef<bool> get sandbox => TfRef.attribute<bool>(this, 'sandbox');

  /// Reference to `sender_id` attribute.
  TfRef<String> get senderId => TfRef.attribute<String>(this, 'sender_id');

  /// Reference to `service_account_json` attribute.
  TfRef<String> get serviceAccountJson =>
      TfRef.attribute<String>(this, 'service_account_json');

  /// Reference to `team_id` attribute.
  TfRef<String> get teamId => TfRef.attribute<String>(this, 'team_id');

  /// Reference to `template_id` attribute.
  TfRef<String> get templateId => TfRef.attribute<String>(this, 'template_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
