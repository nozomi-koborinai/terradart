// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_function_recursion_config`.
const Set<String> _awsLambdaFunctionRecursionConfigSensitive = <String>{};

/// Lambda Function Recursion Config Recursive enum for `recursive_loop`.
extension type const LambdaFunctionRecursionConfigRecursiveLoop._(
  TfArg<String> _
) implements TfArg<String> {
  LambdaFunctionRecursionConfigRecursiveLoop.variable(String name)
    : this._(TfArg.variable(name));
  LambdaFunctionRecursionConfigRecursiveLoop.expression(String template)
    : this._(TfArg.expression(template));
  const LambdaFunctionRecursionConfigRecursiveLoop.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = LambdaFunctionRecursionConfigRecursiveLoop._(
    TfArgLiteral('Allow'),
  );
  static const terminate = LambdaFunctionRecursionConfigRecursiveLoop._(
    TfArgLiteral('Terminate'),
  );

  static const List<LambdaFunctionRecursionConfigRecursiveLoop> values = [
    allow,
    terminate,
  ];
}

/// Factory wrapper for `aws_lambda_function_recursion_config`.
final class AwsLambdaFunctionRecursionConfig extends Resource {
  static const String tfType = 'aws_lambda_function_recursion_config';

  AwsLambdaFunctionRecursionConfig(
    super.localName, {
    required RefTo<AwsLambdaFunction> functionName,
    required LambdaFunctionRecursionConfigRecursiveLoop recursiveLoop,
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
