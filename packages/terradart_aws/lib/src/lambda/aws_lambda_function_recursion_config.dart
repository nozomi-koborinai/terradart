// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_function_recursion_config`.
const Set<String> _awsLambdaFunctionRecursionConfigSensitive = <String>{};

/// Factory wrapper for `aws_lambda_function_recursion_config`.
final class AwsLambdaFunctionRecursionConfig extends Resource {
  static const String tfType = 'aws_lambda_function_recursion_config';

  AwsLambdaFunctionRecursionConfig({
    required super.localName,
    required TfArg<String> functionName,
    required TfArg<String> recursiveLoop,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           'recursive_loop': recursiveLoop,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionRecursionConfigSensitive;
}
