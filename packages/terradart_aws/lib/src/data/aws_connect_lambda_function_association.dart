// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../connect/aws_connect_lambda_function_association.dart';
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_connect_lambda_function_association`.
const Set<String> _awsConnectLambdaFunctionAssociationSensitive = <String>{};

/// Factory wrapper for `aws_connect_lambda_function_association`.
final class DataAwsConnectLambdaFunctionAssociation extends Data {
  static const String tfType = 'aws_connect_lambda_function_association';

  DataAwsConnectLambdaFunctionAssociation(
    super.localName, {
    required RefTo<AwsLambdaFunction> functionArn,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_arn': functionArn.encodeAs('arn'),
           'instance_id': instanceId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsConnectLambdaFunctionAssociationSensitive;

  /// A reference to the `aws_connect_lambda_function_association` this data source reads, for
  /// arguments typed `RefTo<AwsConnectLambdaFunctionAssociation>`.
  RefTo<AwsConnectLambdaFunctionAssociation> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `function_arn` attribute.
  TfRef<String> get functionArn =>
      TfRef.attribute<String>(this, 'function_arn');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
