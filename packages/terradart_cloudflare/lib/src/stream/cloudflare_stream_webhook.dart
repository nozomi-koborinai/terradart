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
final class CloudflareStreamWebhook extends Resource {
  static const String tfType = 'cloudflare_stream_webhook';

  CloudflareStreamWebhook({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? notificationUrl,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (notificationUrl != null) 'notification_url': notificationUrl,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamWebhookSensitive;

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');
}
