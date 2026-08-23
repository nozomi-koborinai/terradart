// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamWebhookSensitive;

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `notification_url` attribute.
  TfRef<String> get notificationUrl =>
      TfRef.attribute<String>(this, 'notification_url');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');
}
