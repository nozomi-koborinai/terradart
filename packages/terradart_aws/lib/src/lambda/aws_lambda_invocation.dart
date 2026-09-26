// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_invocation`.
const Set<String> _awsLambdaInvocationSensitive = <String>{};

/// Factory wrapper for `aws_lambda_invocation`.
final class AwsLambdaInvocation extends Resource {
  static const String tfType = 'aws_lambda_invocation';

  AwsLambdaInvocation({
    required super.localName,
    required TfArg<String> functionName,
    required TfArg<String> input,
    TfArg<String>? lifecycleScope,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    TfArg<String>? tenantId,
    TfArg<String>? terraformKey,
    TfArg<Map<String, String>>? triggers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           'input': input,
           if (lifecycleScope != null) 'lifecycle_scope': lifecycleScope,
           if (qualifier != null) 'qualifier': qualifier,
           if (region != null) 'region': region,
           if (tenantId != null) 'tenant_id': tenantId,
           if (terraformKey != null) 'terraform_key': terraformKey,
           if (triggers != null) 'triggers': triggers,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaInvocationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `result` attribute.
  TfRef<String> get result => TfRef.attribute<String>(this, 'result');
}
