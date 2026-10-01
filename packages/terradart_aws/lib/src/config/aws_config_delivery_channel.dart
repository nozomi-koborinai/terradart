// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_config_delivery_channel`.
const Set<String> _awsConfigDeliveryChannelSensitive = <String>{};

/// Typed helper for the `snapshot_delivery_properties` block of
/// `aws_config_delivery_channel` (derived from provider schema).
@immutable
final class ConfigDeliveryChannelSnapshotDeliveryProperties {
  const ConfigDeliveryChannelSnapshotDeliveryProperties({
    this.deliveryFrequency,
  });

  final TfArg<ConfigDeliveryChannelDeliveryFrequency>? deliveryFrequency;

  Map<String, Object?> encode() => {
    'delivery_frequency': ?deliveryFrequency?.toTfJson(),
  };
}

/// `delivery_frequency` — derived from the provider schema description.
enum ConfigDeliveryChannelDeliveryFrequency implements TerraformEnum {
  oneHour('One_Hour'),
  threeHours('Three_Hours'),
  sixHours('Six_Hours'),
  twelveHours('Twelve_Hours'),
  twentyfourHours('TwentyFour_Hours');

  const ConfigDeliveryChannelDeliveryFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_config_delivery_channel`.
final class AwsConfigDeliveryChannel extends Resource {
  static const String tfType = 'aws_config_delivery_channel';

  AwsConfigDeliveryChannel({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    required RefTo<AwsS3Bucket> s3BucketName,
    TfArg<String>? s3KeyPrefix,
    TfArg<String>? s3KmsKeyArn,
    RefTo<AwsSnsTopic>? snsTopicArn,
    ConfigDeliveryChannelSnapshotDeliveryProperties? snapshotDeliveryProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           's3_bucket_name': s3BucketName.encodeAs('id'),
           's3_key_prefix': ?s3KeyPrefix,
           's3_kms_key_arn': ?s3KmsKeyArn,
           'sns_topic_arn': ?snsTopicArn?.encodeAs('arn'),
           if (snapshotDeliveryProperties != null)
             'snapshot_delivery_properties': TfArg.literal(
               snapshotDeliveryProperties.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigDeliveryChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigDeliveryChannel>`.
  RefTo<AwsConfigDeliveryChannel> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_bucket_name` attribute.
  TfRef<String> get s3BucketName =>
      TfRef.attribute<String>(this, 's3_bucket_name');

  /// Reference to `s3_key_prefix` attribute.
  TfRef<String> get s3KeyPrefix =>
      TfRef.attribute<String>(this, 's3_key_prefix');

  /// Reference to `s3_kms_key_arn` attribute.
  TfRef<String> get s3KmsKeyArn =>
      TfRef.attribute<String>(this, 's3_kms_key_arn');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArn =>
      TfRef.attribute<String>(this, 'sns_topic_arn');
}
