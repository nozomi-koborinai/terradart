// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_runtime_management_config`.
const Set<String> _awsLambdaRuntimeManagementConfigSensitive = <String>{};

/// Lambda Runtime Management Config Update Runtime enum for `update_runtime_on`.
enum LambdaRuntimeManagementConfigUpdateRuntimeOn implements TerraformEnum {
  auto('Auto'),
  manual('Manual'),
  functionupdate('FunctionUpdate');

  const LambdaRuntimeManagementConfigUpdateRuntimeOn(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_lambda_runtime_management_config`.
final class AwsLambdaRuntimeManagementConfig extends Resource {
  static const String tfType = 'aws_lambda_runtime_management_config';

  AwsLambdaRuntimeManagementConfig({
    required super.localName,
    required RefTo<AwsLambdaFunction> functionName,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    TfArg<String>? runtimeVersionArn,
    TfArg<LambdaRuntimeManagementConfigUpdateRuntimeOn>? updateRuntimeOn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName.encodeAs('function_name'),
           if (qualifier != null) 'qualifier': qualifier,
           if (region != null) 'region': region,
           if (runtimeVersionArn != null)
             'runtime_version_arn': runtimeVersionArn,
           if (updateRuntimeOn != null) 'update_runtime_on': updateRuntimeOn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaRuntimeManagementConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaRuntimeManagementConfig>`.
  RefTo<AwsLambdaRuntimeManagementConfig> get ref => RefTo.of(this);

  /// Reference to `function_arn` attribute.
  TfRef<String> get functionArn =>
      TfRef.attribute<String>(this, 'function_arn');
}
