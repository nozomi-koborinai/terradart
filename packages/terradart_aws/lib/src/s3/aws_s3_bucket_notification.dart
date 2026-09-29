// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

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

  final RefTo<AwsLambdaFunction>? lambdaFunctionArn;

  Map<String, Object?> encode() => {
    'events': events.toTfJson(),
    'filter_prefix': ?filterPrefix?.toTfJson(),
    'filter_suffix': ?filterSuffix?.toTfJson(),
    'id': ?id?.toTfJson(),
    'lambda_function_arn': ?lambdaFunctionArn?.encodeAs('arn').toTfJson(),
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
    'filter_prefix': ?filterPrefix?.toTfJson(),
    'filter_suffix': ?filterSuffix?.toTfJson(),
    'id': ?id?.toTfJson(),
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

  final RefTo<AwsSnsTopic> topicArn;

  Map<String, Object?> encode() => {
    'events': events.toTfJson(),
    'filter_prefix': ?filterPrefix?.toTfJson(),
    'filter_suffix': ?filterSuffix?.toTfJson(),
    'id': ?id?.toTfJson(),
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_notification`.
final class AwsS3BucketNotification extends Resource {
  static const String tfType = 'aws_s3_bucket_notification';

  AwsS3BucketNotification({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
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
           'bucket': bucket.encodeAs('id'),
           'eventbridge': ?eventbridge,
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketNotification>`.
  RefTo<AwsS3BucketNotification> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
