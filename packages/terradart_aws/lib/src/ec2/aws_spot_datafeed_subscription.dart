// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_spot_datafeed_subscription`.
const Set<String> _awsSpotDatafeedSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_spot_datafeed_subscription`.
final class AwsSpotDatafeedSubscription extends Resource {
  static const String tfType = 'aws_spot_datafeed_subscription';

  AwsSpotDatafeedSubscription({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? prefix,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'prefix': ?prefix,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSpotDatafeedSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSpotDatafeedSubscription>`.
  RefTo<AwsSpotDatafeedSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `prefix` attribute.
  TfRef<String> get prefix => TfRef.attribute<String>(this, 'prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
