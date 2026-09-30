// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_provisioned_concurrency_config`.
const Set<String> _awsLambdaProvisionedConcurrencyConfigSensitive = <String>{};

/// Factory wrapper for `aws_lambda_provisioned_concurrency_config`.
final class AwsLambdaProvisionedConcurrencyConfig extends Resource {
  static const String tfType = 'aws_lambda_provisioned_concurrency_config';

  AwsLambdaProvisionedConcurrencyConfig({
    required super.localName,
    required RefTo<AwsLambdaFunction> functionName,
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
           'function_name': functionName.encodeAs('function_name'),
           'provisioned_concurrent_executions': provisionedConcurrentExecutions,
           'qualifier': qualifier,
           'region': ?region,
           'skip_destroy': ?skipDestroy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsLambdaProvisionedConcurrencyConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaProvisionedConcurrencyConfig>`.
  RefTo<AwsLambdaProvisionedConcurrencyConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionNameRef =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `provisioned_concurrent_executions` attribute.
  TfRef<num> get provisionedConcurrentExecutionsRef =>
      TfRef.attribute<num>(this, 'provisioned_concurrent_executions');

  /// Reference to `qualifier` attribute.
  TfRef<String> get qualifierRef => TfRef.attribute<String>(this, 'qualifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroyRef => TfRef.attribute<bool>(this, 'skip_destroy');
}
