// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambdaweb_function`.
const Set<String> _awsLambdawebFunctionSensitive = <String>{};

/// Factory wrapper for `aws_lambdaweb_function`.
final class AwsLambdawebFunction extends Resource {
  static const String tfType = 'aws_lambdaweb_function';

  AwsLambdawebFunction(
    super.localName, {
    required RefTo<AwsLambdaFunction> functionName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName.encodeAs('function_name'),
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdawebFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdawebFunction>`.
  RefTo<AwsLambdawebFunction> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
