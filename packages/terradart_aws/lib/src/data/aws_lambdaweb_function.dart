// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lambdaweb/aws_lambdaweb_function.dart';
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambdaweb_function`.
const Set<String> _awsLambdawebFunctionSensitive = <String>{};

/// Factory wrapper for `aws_lambdaweb_function`.
final class DataAwsLambdawebFunction extends Data {
  static const String tfType = 'aws_lambdaweb_function';

  DataAwsLambdawebFunction(
    super.localName, {
    required RefTo<AwsLambdaFunction> functionName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName.encodeAs('function_name'),
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdawebFunctionSensitive;

  /// A reference to the `aws_lambdaweb_function` this data source reads, for
  /// arguments typed `RefTo<AwsLambdawebFunction>`.
  RefTo<AwsLambdawebFunction> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_revision_id` attribute.
  TfRef<String> get latestRevisionId =>
      TfRef.attribute<String>(this, 'latest_revision_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_reason` attribute.
  TfRef<String> get stateReason =>
      TfRef.attribute<String>(this, 'state_reason');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
