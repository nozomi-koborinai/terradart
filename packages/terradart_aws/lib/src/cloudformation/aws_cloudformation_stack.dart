// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_stack`.
const Set<String> _awsCloudformationStackSensitive = <String>{};

/// Factory wrapper for `aws_cloudformation_stack`.
final class AwsCloudformationStack extends Resource {
  static const String tfType = 'aws_cloudformation_stack';

  AwsCloudformationStack({
    required super.localName,
    TfArg<List<String>>? capabilities,
    TfArg<bool>? disableRollback,
    TfArg<String>? iamRoleArn,
    required TfArg<String> name,
    TfArg<List<String>>? notificationArns,
    TfArg<String>? onFailure,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? policyBody,
    TfArg<String>? policyUrl,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? templateBody,
    TfArg<String>? templateUrl,
    TfArg<num>? timeoutInMinutes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (capabilities != null) 'capabilities': capabilities,
           if (disableRollback != null) 'disable_rollback': disableRollback,
           if (iamRoleArn != null) 'iam_role_arn': iamRoleArn,
           'name': name,
           if (notificationArns != null) 'notification_arns': notificationArns,
           if (onFailure != null) 'on_failure': onFailure,
           if (parameters != null) 'parameters': parameters,
           if (policyBody != null) 'policy_body': policyBody,
           if (policyUrl != null) 'policy_url': policyUrl,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (templateBody != null) 'template_body': templateBody,
           if (templateUrl != null) 'template_url': templateUrl,
           if (timeoutInMinutes != null) 'timeout_in_minutes': timeoutInMinutes,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationStackSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `outputs` attribute.
  TfRef<Map<String, String>> get outputs =>
      TfRef.attribute<Map<String, String>>(this, 'outputs');
}
