// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_spot_datafeed_subscription`.
const Set<String> _awsSpotDatafeedSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_spot_datafeed_subscription`.
final class DataAwsSpotDatafeedSubscription extends Data {
  static const String tfType = 'aws_spot_datafeed_subscription';

  DataAwsSpotDatafeedSubscription({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsSpotDatafeedSubscriptionSensitive;

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `prefix` attribute.
  TfRef<String> get prefix => TfRef.attribute<String>(this, 'prefix');
}
