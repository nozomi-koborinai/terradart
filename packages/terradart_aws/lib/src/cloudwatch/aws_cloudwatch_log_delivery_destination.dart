// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_delivery_destination`.
const Set<String> _awsCloudwatchLogDeliveryDestinationSensitive = <String>{};

/// Cloudwatch Log Delivery Destination enum for `delivery_destination_type`.
enum CloudwatchLogDeliveryDestinationType implements TerraformEnum {
  s3('S3'),
  cwl('CWL'),
  fh('FH'),
  xray('XRAY');

  const CloudwatchLogDeliveryDestinationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudwatch Log Delivery Destination Output enum for `output_format`.
enum CloudwatchLogDeliveryDestinationOutputFormat implements TerraformEnum {
  json('json'),
  plain('plain'),
  w3c('w3c'),
  raw('raw'),
  parquet('parquet');

  const CloudwatchLogDeliveryDestinationOutputFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `delivery_destination_configuration` block of
/// `aws_cloudwatch_log_delivery_destination` (derived from provider schema).
@immutable
final class CloudwatchLogDeliveryDestinationConfiguration {
  const CloudwatchLogDeliveryDestinationConfiguration({
    this.destinationResourceArn,
  });

  final TfArg<String>? destinationResourceArn;

  Map<String, Object?> encode() => {
    'destination_resource_arn': ?destinationResourceArn?.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_log_delivery_destination`.
final class AwsCloudwatchLogDeliveryDestination extends Resource {
  static const String tfType = 'aws_cloudwatch_log_delivery_destination';

  AwsCloudwatchLogDeliveryDestination({
    required super.localName,
    TfArg<CloudwatchLogDeliveryDestinationType>? deliveryDestinationType,
    required TfArg<String> name,
    TfArg<CloudwatchLogDeliveryDestinationOutputFormat>? outputFormat,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<CloudwatchLogDeliveryDestinationConfiguration>?
    deliveryDestinationConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delivery_destination_type': ?deliveryDestinationType,
           'name': name,
           'output_format': ?outputFormat,
           'region': ?region,
           'tags': ?tags,
           if (deliveryDestinationConfiguration != null)
             'delivery_destination_configuration': TfArg.literal([
               for (final e in deliveryDestinationConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogDeliveryDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogDeliveryDestination>`.
  RefTo<AwsCloudwatchLogDeliveryDestination> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `delivery_destination_type` attribute.
  TfRef<String> get deliveryDestinationType =>
      TfRef.attribute<String>(this, 'delivery_destination_type');

  /// Reference to `output_format` attribute.
  TfRef<String> get outputFormat =>
      TfRef.attribute<String>(this, 'output_format');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
