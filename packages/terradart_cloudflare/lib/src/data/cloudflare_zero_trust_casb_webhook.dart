// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_casb_webhook.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_casb_webhook`.
const Set<String> _cloudflareZeroTrustCasbWebhookSensitive = <String>{
  'headers.value',
};

/// Factory wrapper for `cloudflare_zero_trust_casb_webhook`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustCasbWebhook extends Data {
  static const String tfType = 'cloudflare_zero_trust_casb_webhook';

  DataCloudflareZeroTrustCasbWebhook({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> webhookId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'webhook_id': webhookId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCasbWebhookSensitive;

  /// A reference to the `cloudflare_zero_trust_casb_webhook` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCasbWebhook>`.
  RefTo<CloudflareZeroTrustCasbWebhook> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `destination_url` attribute.
  TfRef<String> get destinationUrl =>
      TfRef.attribute<String>(this, 'destination_url');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `webhook_id` attribute.
  TfRef<String> get webhookIdRef => TfRef.attribute<String>(this, 'webhook_id');
}
