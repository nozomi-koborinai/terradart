// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lambda/aws_lambda_invocation.dart';
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_invocation`.
const Set<String> _awsLambdaInvocationSensitive = <String>{};

/// Factory wrapper for `aws_lambda_invocation`.
final class DataAwsLambdaInvocation extends Data {
  static const String tfType = 'aws_lambda_invocation';

  DataAwsLambdaInvocation({
    required super.localName,
    required RefTo<AwsLambdaFunction> functionName,
    required TfArg<String> input,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    TfArg<String>? tenantId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName.encodeAs('function_name'),
           'input': input,
           'qualifier': ?qualifier,
           'region': ?region,
           'tenant_id': ?tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaInvocationSensitive;

  /// A reference to the `aws_lambda_invocation` this data source reads, for
  /// arguments typed `RefTo<AwsLambdaInvocation>`.
  RefTo<AwsLambdaInvocation> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `result` attribute.
  TfRef<String> get result => TfRef.attribute<String>(this, 'result');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionNameRef =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `input` attribute.
  TfRef<String> get inputRef => TfRef.attribute<String>(this, 'input');

  /// Reference to `qualifier` attribute.
  TfRef<String> get qualifierRef => TfRef.attribute<String>(this, 'qualifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantIdRef => TfRef.attribute<String>(this, 'tenant_id');
}
