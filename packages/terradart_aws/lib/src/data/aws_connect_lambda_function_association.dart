// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../connect/aws_connect_lambda_function_association.dart';

/// Sensitive field paths for `aws_connect_lambda_function_association`.
const Set<String> _awsConnectLambdaFunctionAssociationSensitive = <String>{};

/// Factory wrapper for `aws_connect_lambda_function_association`.
final class DataAwsConnectLambdaFunctionAssociation extends Data {
  static const String tfType = 'aws_connect_lambda_function_association';

  DataAwsConnectLambdaFunctionAssociation({
    required super.localName,
    required TfArg<String> functionArn,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_arn': functionArn,
           'instance_id': instanceId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsConnectLambdaFunctionAssociationSensitive;

  /// A reference to the `aws_connect_lambda_function_association` this data source reads, for
  /// arguments typed `RefTo<AwsConnectLambdaFunctionAssociation>`.
  // ignore: invalid_use_of_internal_member
  RefTo<AwsConnectLambdaFunctionAssociation> get ref => RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
