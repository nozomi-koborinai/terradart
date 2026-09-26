// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_spot_datafeed_subscription`.
const Set<String> _awsSpotDatafeedSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_spot_datafeed_subscription`.
final class AwsSpotDatafeedSubscription extends Resource {
  static const String tfType = 'aws_spot_datafeed_subscription';

  AwsSpotDatafeedSubscription({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? prefix,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (prefix != null) 'prefix': prefix,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSpotDatafeedSubscriptionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
