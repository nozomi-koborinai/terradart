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
           if (fieldDelimiter != null) 'field_delimiter': fieldDelimiter,
           if (recordFields != null) 'record_fields': recordFields,
           if (region != null) 'region': region,
           if (s3DeliveryConfiguration != null)
             's3_delivery_configuration': s3DeliveryConfiguration,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogDeliverySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
