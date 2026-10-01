// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lambda/aws_lambda_alias.dart';
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_alias`.
const Set<String> _awsLambdaAliasSensitive = <String>{};

/// Factory wrapper for `aws_lambda_alias`.
final class DataAwsLambdaAlias extends Data {
  static const String tfType = 'aws_lambda_alias';

  DataAwsLambdaAlias(
    super.localName, {
    required RefTo<AwsLambdaFunction> functionName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName.encodeAs('function_name'),
           'name': name,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaAliasSensitive;

  /// A reference to the `aws_lambda_alias` this data source reads, for
  /// arguments typed `RefTo<AwsLambdaAlias>`.
  RefTo<AwsLambdaAlias> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `function_version` attribute.
  TfRef<String> get functionVersion =>
      TfRef.attribute<String>(this, 'function_version');

  /// Reference to `invoke_arn` attribute.
  TfRef<String> get invokeArn => TfRef.attribute<String>(this, 'invoke_arn');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
