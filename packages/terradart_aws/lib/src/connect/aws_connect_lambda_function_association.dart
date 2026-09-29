// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_connect_lambda_function_association`.
const Set<String> _awsConnectLambdaFunctionAssociationSensitive = <String>{};

/// Factory wrapper for `aws_connect_lambda_function_association`.
final class AwsConnectLambdaFunctionAssociation extends Resource {
  static const String tfType = 'aws_connect_lambda_function_association';

  AwsConnectLambdaFunctionAssociation({
    required super.localName,
    required RefTo<AwsLambdaFunction> functionArn,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectLambdaFunctionAssociation>`.
  RefTo<AwsConnectLambdaFunctionAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
