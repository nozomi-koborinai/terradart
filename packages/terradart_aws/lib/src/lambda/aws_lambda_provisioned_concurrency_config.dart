// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_provisioned_concurrency_config`.
const Set<String> _awsLambdaProvisionedConcurrencyConfigSensitive = <String>{};

/// Factory wrapper for `aws_lambda_provisioned_concurrency_config`.
final class AwsLambdaProvisionedConcurrencyConfig extends Resource {
  static const String tfType = 'aws_lambda_provisioned_concurrency_config';

  AwsLambdaProvisionedConcurrencyConfig({
    required super.localName,
    required TfArg<String> functionName,
    required TfArg<num> provisionedConcurrentExecutions,
    required TfArg<String> qualifier,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           'provisioned_concurrent_executions': provisionedConcurrentExecutions,
           'qualifier': qualifier,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsLambdaProvisionedConcurrencyConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
