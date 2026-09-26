// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_invocation`.
const Set<String> _awsLambdaInvocationSensitive = <String>{};

/// Factory wrapper for `aws_lambda_invocation`.
final class DataAwsLambdaInvocation extends Data {
  static const String tfType = 'aws_lambda_invocation';

  DataAwsLambdaInvocation({
    required super.localName,
    required TfArg<String> functionName,
    required TfArg<String> input,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    TfArg<String>? tenantId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           'input': input,
           if (qualifier != null) 'qualifier': qualifier,
           if (region != null) 'region': region,
           if (tenantId != null) 'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaInvocationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `result` attribute.
  TfRef<String> get result => TfRef.attribute<String>(this, 'result');
}
