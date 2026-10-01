// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_spot_datafeed_subscription.dart';

/// Sensitive field paths for `aws_spot_datafeed_subscription`.
const Set<String> _awsSpotDatafeedSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_spot_datafeed_subscription`.
final class DataAwsSpotDatafeedSubscription extends Data {
  static const String tfType = 'aws_spot_datafeed_subscription';

  DataAwsSpotDatafeedSubscription(
    super.localName, {
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsSpotDatafeedSubscriptionSensitive;

  /// A reference to the `aws_spot_datafeed_subscription` this data source reads, for
  /// arguments typed `RefTo<AwsSpotDatafeedSubscription>`.
  RefTo<AwsSpotDatafeedSubscription> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `prefix` attribute.
  TfRef<String> get prefix => TfRef.attribute<String>(this, 'prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
