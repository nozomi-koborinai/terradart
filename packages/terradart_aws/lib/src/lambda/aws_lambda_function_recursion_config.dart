// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_function_recursion_config`.
const Set<String> _awsLambdaFunctionRecursionConfigSensitive = <String>{};

/// Lambda Function Recursion Config Recursive enum for `recursive_loop`.
enum LambdaFunctionRecursionConfigRecursiveLoop implements TerraformEnum {
  allow('Allow'),
  terminate('Terminate');

  const LambdaFunctionRecursionConfigRecursiveLoop(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_lambda_function_recursion_config`.
final class AwsLambdaFunctionRecursionConfig extends Resource {
  static const String tfType = 'aws_lambda_function_recursion_config';

  AwsLambdaFunctionRecursionConfig({
    required super.localName,
    required RefTo<AwsLambdaFunction> functionName,
    required TfArg<LambdaFunctionRecursionConfigRecursiveLoop> recursiveLoop,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName.encodeAs('function_name'),
           'recursive_loop': recursiveLoop,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionRecursionConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaFunctionRecursionConfig>`.
  RefTo<AwsLambdaFunctionRecursionConfig> get ref => RefTo.of(this);

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `recursive_loop` attribute.
  TfRef<String> get recursiveLoop =>
      TfRef.attribute<String>(this, 'recursive_loop');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
