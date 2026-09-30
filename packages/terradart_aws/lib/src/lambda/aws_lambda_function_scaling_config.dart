// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_function_scaling_config`.
const Set<String> _awsLambdaFunctionScalingConfigSensitive = <String>{};

/// Typed helper for the `function_scaling_config` block of
/// `aws_lambda_function_scaling_config` (derived from provider schema).
@immutable
final class LambdaFunctionScalingConfigFunctionScalingConfig {
  const LambdaFunctionScalingConfigFunctionScalingConfig({
    this.maxExecutionEnvironments,
    this.minExecutionEnvironments,
  });

  final TfArg<num>? maxExecutionEnvironments;

  final TfArg<num>? minExecutionEnvironments;

  Map<String, Object?> encode() => {
    'max_execution_environments': ?maxExecutionEnvironments?.toTfJson(),
    'min_execution_environments': ?minExecutionEnvironments?.toTfJson(),
  };
}

/// Factory wrapper for `aws_lambda_function_scaling_config`.
final class AwsLambdaFunctionScalingConfig extends Resource {
  static const String tfType = 'aws_lambda_function_scaling_config';

  AwsLambdaFunctionScalingConfig({
    required super.localName,
    required RefTo<AwsLambdaFunction> functionName,
    required TfArg<String> qualifier,
    TfArg<String>? region,
    List<LambdaFunctionScalingConfigFunctionScalingConfig>?
    functionScalingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName.encodeAs('function_name'),
           'qualifier': qualifier,
           'region': ?region,
           if (functionScalingConfig != null)
             'function_scaling_config': TfArg.literal([
               for (final e in functionScalingConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionScalingConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaFunctionScalingConfig>`.
  RefTo<AwsLambdaFunctionScalingConfig> get ref => RefTo.of(this);

  /// Reference to `function_arn` attribute.
  TfRef<String> get functionArn =>
      TfRef.attribute<String>(this, 'function_arn');

  /// Reference to `function_state` attribute.
  TfRef<String> get functionState =>
      TfRef.attribute<String>(this, 'function_state');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionNameRef =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `qualifier` attribute.
  TfRef<String> get qualifierRef => TfRef.attribute<String>(this, 'qualifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
