// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_notification_policy`.
const Set<String> _cloudflareNotificationPolicySensitive = <String>{};

/// Factory wrapper for `cloudflare_notification_policy`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `Notifications Read`
/// - `Notifications Write` - `Zero Trust: PII Read`
final class DataCloudflareNotificationPolicy extends Data {
  static const String tfType = 'cloudflare_notification_policy';

  DataCloudflareNotificationPolicy({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> policyId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'policy_id': policyId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareNotificationPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alert_interval` attribute.
  TfRef<String> get alertInterval =>
      TfRef.attribute<String>(this, 'alert_interval');

  /// Reference to `alert_type` attribute.
  TfRef<String> get alertType => TfRef.attribute<String>(this, 'alert_type');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');
}
