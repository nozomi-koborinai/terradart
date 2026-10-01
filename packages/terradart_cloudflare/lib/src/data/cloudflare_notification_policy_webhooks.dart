// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../notifications/cloudflare_notification_policy_webhooks.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_notification_policy_webhooks`.
const Set<String> _cloudflareNotificationPolicyWebhooksSensitive = <String>{
  'secret',
};

/// Factory wrapper for `cloudflare_notification_policy_webhooks`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `Notifications Read`
/// - `Notifications Write` - `Zero Trust: PII Read`
final class DataCloudflareNotificationPolicyWebhooks extends Data {
  static const String tfType = 'cloudflare_notification_policy_webhooks';

  DataCloudflareNotificationPolicyWebhooks(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> webhookId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'webhook_id': webhookId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareNotificationPolicyWebhooksSensitive;

  /// A reference to the `cloudflare_notification_policy_webhooks` this data source reads, for
  /// arguments typed `RefTo<CloudflareNotificationPolicyWebhooks>`.
  RefTo<CloudflareNotificationPolicyWebhooks> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_failure` attribute.
  TfRef<String> get lastFailure =>
      TfRef.attribute<String>(this, 'last_failure');

  /// Reference to `last_success` attribute.
  TfRef<String> get lastSuccess =>
      TfRef.attribute<String>(this, 'last_success');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `webhook_id` attribute.
  TfRef<String> get webhookId => TfRef.attribute<String>(this, 'webhook_id');
}
