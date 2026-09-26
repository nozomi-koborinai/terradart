// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_notification`.
const Set<String> _awsS3BucketNotificationSensitive = <String>{};

/// Typed helper for the `lambda_function` block of
/// `aws_s3_bucket_notification` (derived from provider schema).
@immutable
final class S3BucketNotificationLambdaFunction {
  const S3BucketNotificationLambdaFunction({
    required this.events,
    this.filterPrefix,
    this.filterSuffix,
    this.id,
    this.lambdaFunctionArn,
  });

  final TfArg<List<Object?>> events;

  final TfArg<String>? filterPrefix;

  final TfArg<String>? filterSuffix;

  final TfArg<String>? id;

  final TfArg<String>? lambdaFunctionArn;

  Map<String, Object?> encode() => {
    'events': events.toTfJson(),
    if (filterPrefix != null) 'filter_prefix': filterPrefix!.toTfJson(),
    if (filterSuffix != null) 'filter_suffix': filterSuffix!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (lambdaFunctionArn != null)
      'lambda_function_arn': lambdaFunctionArn!.toTfJson(),
  };
}

/// Typed helper for the `queue` block of
/// `aws_s3_bucket_notification` (derived from provider schema).
@immutable
final class S3BucketNotificationQueue {
  const S3BucketNotificationQueue({
    required this.events,
    this.filterPrefix,
    this.filterSuffix,
    this.id,
    required this.queueArn,
  });

  final TfArg<List<Object?>> events;

  final TfArg<String>? filterPrefix;

  final TfArg<String>? filterSuffix;

  final TfArg<String>? id;

  final TfArg<String> queueArn;

  Map<String, Object?> encode() => {
    'events': events.toTfJson(),
    if (filterPrefix != null) 'filter_prefix': filterPrefix!.toTfJson(),
    if (filterSuffix != null) 'filter_suffix': filterSuffix!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    'queue_arn': queueArn.toTfJson(),
  };
}

/// Typed helper for the `topic` block of
/// `aws_s3_bucket_notification` (derived from provider schema).
@immutable
final class S3BucketNotificationTopic {
  const S3BucketNotificationTopic({
    required this.events,
    this.filterPrefix,
    this.filterSuffix,
    this.id,
    required this.topicArn,
  });

  final TfArg<List<Object?>> events;

  final TfArg<String>? filterPrefix;

  final TfArg<String>? filterSuffix;

  final TfArg<String>? id;

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {
    'events': events.toTfJson(),
    if (filterPrefix != null) 'filter_prefix': filterPrefix!.toTfJson(),
    if (filterSuffix != null) 'filter_suffix': filterSuffix!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    'topic_arn': topicArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_notification`.
final class AwsS3BucketNotification extends Resource {
  static const String tfType = 'aws_s3_bucket_notification';

  AwsS3BucketNotification({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<bool>? eventbridge,
    TfArg<String>? region,
    List<S3BucketNotificationLambdaFunction>? lambdaFunction,
    List<S3BucketNotificationQueue>? queue,
    List<S3BucketNotificationTopic>? topic,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (eventbridge != null) 'eventbridge': eventbridge,
           if (region != null) 'region': region,
           if (lambdaFunction != null)
             'lambda_function': TfArg.literal([
               for (final e in lambdaFunction) e.encode(),
             ]),
           if (queue != null)
             'queue': TfArg.literal([for (final e in queue) e.encode()]),
           if (topic != null)
             'topic': TfArg.literal([for (final e in topic) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketNotificationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
