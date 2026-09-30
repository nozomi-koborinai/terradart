// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
final class CloudflareNotificationPolicyWebhooks extends Resource {
  static const String tfType = 'cloudflare_notification_policy_webhooks';

  CloudflareNotificationPolicyWebhooks({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    TfArg<String>? secret,
    required TfArg<String> url,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': name,
           'secret': ?secret,
           'url': url,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareNotificationPolicyWebhooksSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareNotificationPolicyWebhooks>`.
  RefTo<CloudflareNotificationPolicyWebhooks> get ref => RefTo.of(this);

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

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `secret` attribute.
  TfRef<String> get secretRef => TfRef.attribute<String>(this, 'secret');

  /// Reference to `url` attribute.
  TfRef<String> get urlRef => TfRef.attribute<String>(this, 'url');
}
