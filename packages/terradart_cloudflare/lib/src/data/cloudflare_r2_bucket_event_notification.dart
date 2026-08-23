// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_bucket_event_notification`.
const Set<String> _cloudflareR2BucketEventNotificationSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_bucket_event_notification`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Read` - `Workers R2 Storage Write`
final class DataCloudflareR2BucketEventNotification extends Data {
  static const String tfType = 'cloudflare_r2_bucket_event_notification';

  DataCloudflareR2BucketEventNotification({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    required TfArg<String> queueId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'bucket_name': bucketName,
           'queue_id': queueId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareR2BucketEventNotificationSensitive;

  /// Reference to `queue_name` attribute.
  TfRef<String> get queueName => TfRef.attribute<String>(this, 'queue_name');
}
