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

  AwsCloudwatchLogDeliveryDestinationPolicy(
    super.localName, {
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogDeliveryDestinationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogDeliveryDestinationPolicy>`.
  RefTo<AwsCloudwatchLogDeliveryDestinationPolicy> get ref => RefTo.of(this);

  /// Reference to `delivery_destination_name` attribute.
  TfRef<String> get deliveryDestinationName =>
      TfRef.attribute<String>(this, 'delivery_destination_name');

  /// Reference to `delivery_destination_policy` attribute.
  TfRef<String> get deliveryDestinationPolicy =>
      TfRef.attribute<String>(this, 'delivery_destination_policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
