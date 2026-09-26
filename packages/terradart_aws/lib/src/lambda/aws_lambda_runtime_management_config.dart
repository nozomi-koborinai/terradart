// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_runtime_management_config`.
const Set<String> _awsLambdaRuntimeManagementConfigSensitive = <String>{};

/// Factory wrapper for `aws_lambda_runtime_management_config`.
final class AwsLambdaRuntimeManagementConfig extends Resource {
  static const String tfType = 'aws_lambda_runtime_management_config';

  AwsLambdaRuntimeManagementConfig({
    required super.localName,
    required TfArg<String> functionName,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    TfArg<String>? runtimeVersionArn,
    TfArg<String>? updateRuntimeOn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_name': functionName,
           if (qualifier != null) 'qualifier': qualifier,
           if (region != null) 'region': region,
           if (runtimeVersionArn != null)
             'runtime_version_arn': runtimeVersionArn,
           if (updateRuntimeOn != null) 'update_runtime_on': updateRuntimeOn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaRuntimeManagementConfigSensitive;

  /// Reference to `function_arn` attribute.
  TfRef<String> get functionArn =>
      TfRef.attribute<String>(this, 'function_arn');
}
