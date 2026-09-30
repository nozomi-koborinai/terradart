// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_delivery`.
const Set<String> _awsCloudwatchLogDeliverySensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_delivery`.
final class AwsCloudwatchLogDelivery extends Resource {
  static const String tfType = 'aws_cloudwatch_log_delivery';

  AwsCloudwatchLogDelivery({
    required super.localName,
    required TfArg<String> deliveryDestinationArn,
    required TfArg<String> deliverySourceName,
    TfArg<String>? fieldDelimiter,
    TfArg<List<String>>? recordFields,
    TfArg<String>? region,
    TfArg<List<Map<String, Object?>>>? s3DeliveryConfiguration,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delivery_destination_arn': deliveryDestinationArn,
           'delivery_source_name': deliverySourceName,
           'field_delimiter': ?fieldDelimiter,
           'record_fields': ?recordFields,
           'region': ?region,
           's3_delivery_configuration': ?s3DeliveryConfiguration,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogDeliverySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogDelivery>`.
  RefTo<AwsCloudwatchLogDelivery> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `delivery_destination_arn` attribute.
  TfRef<String> get deliveryDestinationArnRef =>
      TfRef.attribute<String>(this, 'delivery_destination_arn');

  /// Reference to `delivery_source_name` attribute.
  TfRef<String> get deliverySourceNameRef =>
      TfRef.attribute<String>(this, 'delivery_source_name');

  /// Reference to `field_delimiter` attribute.
  TfRef<String> get fieldDelimiterRef =>
      TfRef.attribute<String>(this, 'field_delimiter');

  /// Reference to `record_fields` attribute.
  TfRef<List<String>> get recordFieldsRef =>
      TfRef.attribute<List<String>>(this, 'record_fields');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_delivery_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get s3DeliveryConfigurationRef =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        's3_delivery_configuration',
      );

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
