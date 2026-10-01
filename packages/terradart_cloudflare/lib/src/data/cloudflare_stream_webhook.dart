// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../stream/cloudflare_stream_webhook.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_stream_webhook`.
const Set<String> _cloudflareStreamWebhookSensitive = <String>{'secret'};

/// Factory wrapper for `cloudflare_stream_webhook`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class DataCloudflareStreamWebhook extends Data {
  static const String tfType = 'cloudflare_stream_webhook';

  DataCloudflareStreamWebhook({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamWebhookSensitive;

  /// A reference to the `cloudflare_stream_webhook` this data source reads, for
  /// arguments typed `RefTo<CloudflareStreamWebhook>`.
  RefTo<CloudflareStreamWebhook> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `notification_url` attribute.
  TfRef<String> get notificationUrl =>
      TfRef.attribute<String>(this, 'notification_url');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
