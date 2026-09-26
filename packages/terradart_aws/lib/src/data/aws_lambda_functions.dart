// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_functions`.
const Set<String> _awsLambdaFunctionsSensitive = <String>{};

/// Factory wrapper for `aws_lambda_functions`.
final class DataAwsLambdaFunctions extends Data {
  static const String tfType = 'aws_lambda_functions';

  DataAwsLambdaFunctions({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaFunctionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `function_arns` attribute.
  TfRef<List<String>> get functionArns =>
      TfRef.attribute<List<String>>(this, 'function_arns');

  /// Reference to `function_names` attribute.
  TfRef<List<String>> get functionNames =>
      TfRef.attribute<List<String>>(this, 'function_names');
}
