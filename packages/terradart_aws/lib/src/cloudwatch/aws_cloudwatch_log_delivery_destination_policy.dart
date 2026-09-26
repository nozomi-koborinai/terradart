// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_delivery_destination_policy`.
const Set<String> _awsCloudwatchLogDeliveryDestinationPolicySensitive =
    <String>{};

/// Factory wrapper for `aws_cloudwatch_log_delivery_destination_policy`.
final class AwsCloudwatchLogDeliveryDestinationPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_delivery_destination_policy';

  AwsCloudwatchLogDeliveryDestinationPolicy({
    required super.localName,
    required TfArg<String> deliveryDestinationName,
    required TfArg<String> deliveryDestinationPolicy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delivery_destination_name': deliveryDestinationName,
           'delivery_destination_policy': deliveryDestinationPolicy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogDeliveryDestinationPolicySensitive;
}
