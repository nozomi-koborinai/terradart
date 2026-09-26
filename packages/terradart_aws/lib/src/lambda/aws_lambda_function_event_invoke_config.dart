// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_function_event_invoke_config`.
const Set<String> _awsLambdaFunctionEventInvokeConfigSensitive = <String>{};

/// Typed helper for the `destination_config` block of
/// `aws_lambda_function_event_invoke_config` (derived from provider schema).
@immutable
final class LambdaFunctionEventInvokeConfigDestinationConfig {
  const LambdaFunctionEventInvokeConfigDestinationConfig({
    this.onFailure,
    this.onSuccess,
  });

  final LambdaFunctionEventInvokeConfigDestinationConfigOnFailure? onFailure;

  final LambdaFunctionEventInvokeConfigDestinationConfigOnSuccess? onSuccess;

  Map<String, Object?> encode() => {
    if (onFailure != null) 'on_failure': onFailure!.encode(),
    if (onSuccess != null) 'on_success': onSuccess!.encode(),
  };
}

/// Typed helper for the `destination_config.on_failure` block of
/// `aws_lambda_function_event_invoke_config` (derived from provider schema).
@immutable
final class LambdaFunctionEventInvokeConfigDestinationConfigOnFailure {
  const LambdaFunctionEventInvokeConfigDestinationConfigOnFailure({
    required this.destination,
  });

  final TfArg<String> destination;

  Map<String, Object?> encode() => {'destination': destination.toTfJson()};
}

/// Typed helper for the `destination_config.on_success` block of
/// `aws_lambda_function_event_invoke_config` (derived from provider schema).
@immutable
final class LambdaFunctionEventInvokeConfigDestinationConfigOnSuccess {
  const LambdaFunctionEventInvokeConfigDestinationConfigOnSuccess({
    required this.destination,
  });

  final TfArg<String> destination;

  Map<String, Object?> encode() => {'destination': destination.toTfJson()};
}

/// Factory wrapper for `aws_lambda_function_event_invoke_config`.
final class AwsLambdaFunctionEventInvokeConfig extends Resource {
  static const String tfType = 'aws_lambda_function_event_invoke_config';

  AwsLambdaFunctionEventInvokeConfig({
    required super.localName,
    required TfArg<String> functionName,
    TfArg<num>? maximumEventAgeInSeconds,
    TfArg<num>? maximumRetryAttempts,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    LambdaFunctionEventInvokeConfigDestinationConfig? destinationConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           if (maximumEventAgeInSeconds != null)
             'maximum_event_age_in_seconds': maximumEventAgeInSeconds,
           if (maximumRetryAttempts != null)
             'maximum_retry_attempts': maximumRetryAttempts,
           if (qualifier != null) 'qualifier': qualifier,
           if (region != null) 'region': region,
           if (destinationConfig != null)
             'destination_config': TfArg.literal(destinationConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsLambdaFunctionEventInvokeConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
