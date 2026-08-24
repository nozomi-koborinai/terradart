// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_notification_policy_webhooks_list`.
const Set<String> _cloudflareNotificationPolicyWebhooksListSensitive = <String>{
  'result.secret',
};

/// Factory wrapper for `cloudflare_notification_policy_webhooks_list`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `Notifications Read`
/// - `Notifications Write` - `Zero Trust: PII Read`
final class DataCloudflareNotificationPolicyWebhooksList extends Data {
  static const String tfType = 'cloudflare_notification_policy_webhooks_list';

  DataCloudflareNotificationPolicyWebhooksList({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareNotificationPolicyWebhooksListSensitive;
}
