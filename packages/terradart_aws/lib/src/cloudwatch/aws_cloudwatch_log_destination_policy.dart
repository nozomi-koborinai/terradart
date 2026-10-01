// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_destination_policy`.
const Set<String> _awsCloudwatchLogDestinationPolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_destination_policy`.
final class AwsCloudwatchLogDestinationPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_destination_policy';

  AwsCloudwatchLogDestinationPolicy({
    required super.localName,
    required TfArg<String> accessPolicy,
    required TfArg<String> destinationName,
    TfArg<bool>? forceUpdate,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_policy': accessPolicy,
           'destination_name': destinationName,
           'force_update': ?forceUpdate,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogDestinationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogDestinationPolicy>`.
  RefTo<AwsCloudwatchLogDestinationPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy` attribute.
  TfRef<String> get accessPolicy =>
      TfRef.attribute<String>(this, 'access_policy');

  /// Reference to `destination_name` attribute.
  TfRef<String> get destinationName =>
      TfRef.attribute<String>(this, 'destination_name');

  /// Reference to `force_update` attribute.
  TfRef<bool> get forceUpdate => TfRef.attribute<bool>(this, 'force_update');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
