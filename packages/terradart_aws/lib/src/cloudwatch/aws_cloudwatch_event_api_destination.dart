// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_api_destination`.
const Set<String> _awsCloudwatchEventApiDestinationSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_event_api_destination`.
final class AwsCloudwatchEventApiDestination extends Resource {
  static const String tfType = 'aws_cloudwatch_event_api_destination';

  AwsCloudwatchEventApiDestination({
    required super.localName,
    required TfArg<String> connectionArn,
    TfArg<String>? description,
    required TfArg<String> httpMethod,
    required TfArg<String> invocationEndpoint,
    TfArg<num>? invocationRateLimitPerSecond,
    required TfArg<String> name,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_arn': connectionArn,
           if (description != null) 'description': description,
           'http_method': httpMethod,
           'invocation_endpoint': invocationEndpoint,
           if (invocationRateLimitPerSecond != null)
             'invocation_rate_limit_per_second': invocationRateLimitPerSecond,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventApiDestinationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
