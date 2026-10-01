// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../r2/cloudflare_r2_bucket_event_notification.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    required TfArg<String> queueId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bucket_name': bucketName,
           'queue_id': queueId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareR2BucketEventNotificationSensitive;

  /// A reference to the `cloudflare_r2_bucket_event_notification` this data source reads, for
  /// arguments typed `RefTo<CloudflareR2BucketEventNotification>`.
  RefTo<CloudflareR2BucketEventNotification> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `queue_name` attribute.
  TfRef<String> get queueName => TfRef.attribute<String>(this, 'queue_name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `queue_id` attribute.
  TfRef<String> get queueId => TfRef.attribute<String>(this, 'queue_id');
}
