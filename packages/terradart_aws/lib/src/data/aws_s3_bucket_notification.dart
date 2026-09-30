// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../s3/aws_s3_bucket_notification.dart';
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_notification`.
const Set<String> _awsS3BucketNotificationSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_notification`.
final class DataAwsS3BucketNotification extends Data {
  static const String tfType = 'aws_s3_bucket_notification';

  DataAwsS3BucketNotification({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'bucket': bucket.encodeAs('id'), 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketNotificationSensitive;

  /// A reference to the `aws_s3_bucket_notification` this data source reads, for
  /// arguments typed `RefTo<AwsS3BucketNotification>`.
  RefTo<AwsS3BucketNotification> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `eventbridge` attribute.
  TfRef<bool> get eventbridge => TfRef.attribute<bool>(this, 'eventbridge');

  /// Reference to `lambda_function` attribute.
  TfRef<List<Map<String, Object?>>> get lambdaFunction =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'lambda_function');

  /// Reference to `queue` attribute.
  TfRef<List<Map<String, Object?>>> get queue =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'queue');

  /// Reference to `topic` attribute.
  TfRef<List<Map<String, Object?>>> get topic =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'topic');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
