// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

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

  final LambdaFunctionEventInvokeConfigOnFailure? onFailure;

  final LambdaFunctionEventInvokeConfigOnSuccess? onSuccess;

  Map<String, Object?> encode() => {
    'on_failure': ?onFailure?.encode(),
    'on_success': ?onSuccess?.encode(),
  };
}

/// Typed helper for the `destination_config.on_failure` block of
/// `aws_lambda_function_event_invoke_config` (derived from provider schema).
@immutable
final class LambdaFunctionEventInvokeConfigOnFailure {
  const LambdaFunctionEventInvokeConfigOnFailure({required this.destination});

  final TfArg<String> destination;

  Map<String, Object?> encode() => {'destination': destination.toTfJson()};
}

/// Typed helper for the `destination_config.on_success` block of
/// `aws_lambda_function_event_invoke_config` (derived from provider schema).
@immutable
final class LambdaFunctionEventInvokeConfigOnSuccess {
  const LambdaFunctionEventInvokeConfigOnSuccess({required this.destination});

  final TfArg<String> destination;

  Map<String, Object?> encode() => {'destination': destination.toTfJson()};
}

/// Factory wrapper for `aws_lambda_function_event_invoke_config`.
final class AwsLambdaFunctionEventInvokeConfig extends Resource {
  static const String tfType = 'aws_lambda_function_event_invoke_config';

  AwsLambdaFunctionEventInvokeConfig({
    required super.localName,
    required RefTo<AwsLambdaFunction> functionName,
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
           'function_name': functionName.encodeAs('function_name'),
           'maximum_event_age_in_seconds': ?maximumEventAgeInSeconds,
           'maximum_retry_attempts': ?maximumRetryAttempts,
           'qualifier': ?qualifier,
           'region': ?region,
           if (destinationConfig != null)
             'destination_config': TfArg.literal(destinationConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsLambdaFunctionEventInvokeConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaFunctionEventInvokeConfig>`.
  RefTo<AwsLambdaFunctionEventInvokeConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionNameRef =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `maximum_event_age_in_seconds` attribute.
  TfRef<num> get maximumEventAgeInSecondsRef =>
      TfRef.attribute<num>(this, 'maximum_event_age_in_seconds');

  /// Reference to `maximum_retry_attempts` attribute.
  TfRef<num> get maximumRetryAttemptsRef =>
      TfRef.attribute<num>(this, 'maximum_retry_attempts');

  /// Reference to `qualifier` attribute.
  TfRef<String> get qualifierRef => TfRef.attribute<String>(this, 'qualifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
