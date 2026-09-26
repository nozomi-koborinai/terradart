// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_delivery_channel`.
const Set<String> _awsConfigDeliveryChannelSensitive = <String>{};

/// Typed helper for the `snapshot_delivery_properties` block of
/// `aws_config_delivery_channel` (derived from provider schema).
@immutable
final class ConfigDeliveryChannelSnapshotDeliveryProperties {
  const ConfigDeliveryChannelSnapshotDeliveryProperties({
    this.deliveryFrequency,
  });

  final TfArg<String>? deliveryFrequency;

  Map<String, Object?> encode() => {
    if (deliveryFrequency != null)
      'delivery_frequency': deliveryFrequency!.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_delivery_channel`.
final class AwsConfigDeliveryChannel extends Resource {
  static const String tfType = 'aws_config_delivery_channel';

  AwsConfigDeliveryChannel({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<String> s3BucketName,
    TfArg<String>? s3KeyPrefix,
    TfArg<String>? s3KmsKeyArn,
    TfArg<String>? snsTopicArn,
    ConfigDeliveryChannelSnapshotDeliveryProperties? snapshotDeliveryProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           's3_bucket_name': s3BucketName,
           if (s3KeyPrefix != null) 's3_key_prefix': s3KeyPrefix,
           if (s3KmsKeyArn != null) 's3_kms_key_arn': s3KmsKeyArn,
           if (snsTopicArn != null) 'sns_topic_arn': snsTopicArn,
           if (snapshotDeliveryProperties != null)
             'snapshot_delivery_properties': TfArg.literal(
               snapshotDeliveryProperties.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigDeliveryChannelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
