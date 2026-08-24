// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  DataCloudflareNotificationPolicyWebhooks({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> webhookId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'webhook_id': webhookId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareNotificationPolicyWebhooksSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
