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
           if (forceUpdate != null) 'force_update': forceUpdate,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogDestinationPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
