// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_permission`.
const Set<String> _awsLambdaPermissionSensitive = <String>{};

/// Factory wrapper for `aws_lambda_permission`.
final class AwsLambdaPermission extends Resource {
  static const String tfType = 'aws_lambda_permission';

  AwsLambdaPermission({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? eventSourceToken,
    required TfArg<String> functionName,
    TfArg<String>? functionUrlAuthType,
    TfArg<bool>? invokedViaFunctionUrl,
    required TfArg<String> principal,
    TfArg<String>? principalOrgId,
    TfArg<String>? qualifier,
    TfArg<String>? region,
    TfArg<String>? sourceAccount,
    TfArg<String>? sourceArn,
    TfArg<String>? statementId,
    TfArg<String>? statementIdPrefix,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (eventSourceToken != null) 'event_source_token': eventSourceToken,
           'function_name': functionName,
           if (functionUrlAuthType != null)
             'function_url_auth_type': functionUrlAuthType,
           if (invokedViaFunctionUrl != null)
             'invoked_via_function_url': invokedViaFunctionUrl,
           'principal': principal,
           if (principalOrgId != null) 'principal_org_id': principalOrgId,
           if (qualifier != null) 'qualifier': qualifier,
           if (region != null) 'region': region,
           if (sourceAccount != null) 'source_account': sourceAccount,
           if (sourceArn != null) 'source_arn': sourceArn,
           if (statementId != null) 'statement_id': statementId,
           if (statementIdPrefix != null)
             'statement_id_prefix': statementIdPrefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaPermissionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
