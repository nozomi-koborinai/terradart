// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_delivery_destination`.
const Set<String> _awsCloudwatchLogDeliveryDestinationSensitive = <String>{};

/// Typed helper for the `delivery_destination_configuration` block of
/// `aws_cloudwatch_log_delivery_destination` (derived from provider schema).
@immutable
final class CloudwatchLogDeliveryDestinationDeliveryDestinationConfiguration {
  const CloudwatchLogDeliveryDestinationDeliveryDestinationConfiguration({
    this.destinationResourceArn,
  });

  final TfArg<String>? destinationResourceArn;

  Map<String, Object?> encode() => {
    if (destinationResourceArn != null)
      'destination_resource_arn': destinationResourceArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_log_delivery_destination`.
final class AwsCloudwatchLogDeliveryDestination extends Resource {
  static const String tfType = 'aws_cloudwatch_log_delivery_destination';

  AwsCloudwatchLogDeliveryDestination({
    required super.localName,
    TfArg<String>? deliveryDestinationType,
    required TfArg<String> name,
    TfArg<String>? outputFormat,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<CloudwatchLogDeliveryDestinationDeliveryDestinationConfiguration>?
    deliveryDestinationConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deliveryDestinationType != null)
             'delivery_destination_type': deliveryDestinationType,
           'name': name,
           if (outputFormat != null) 'output_format': outputFormat,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (deliveryDestinationConfiguration != null)
             'delivery_destination_configuration': TfArg.literal([
               for (final e in deliveryDestinationConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogDeliveryDestinationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
