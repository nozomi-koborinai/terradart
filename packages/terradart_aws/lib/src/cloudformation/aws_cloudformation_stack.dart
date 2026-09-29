// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudformation_stack`.
const Set<String> _awsCloudformationStackSensitive = <String>{};

/// Cloudformation Stack enum for `capabilities`.
enum CloudformationStackCapabilities implements TerraformEnum {
  capabilityIam('CAPABILITY_IAM'),
  capabilityNamedIam('CAPABILITY_NAMED_IAM'),
  capabilityAutoExpand('CAPABILITY_AUTO_EXPAND');

  const CloudformationStackCapabilities(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudformation Stack On enum for `on_failure`.
enum CloudformationStackOnFailure implements TerraformEnum {
  doNothing('DO_NOTHING'),
  rollback('ROLLBACK'),
  delete('DELETE');

  const CloudformationStackOnFailure(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudformation_stack`.
final class AwsCloudformationStack extends Resource {
  static const String tfType = 'aws_cloudformation_stack';

  AwsCloudformationStack({
    required super.localName,
    List<TfArg<CloudformationStackCapabilities>>? capabilities,
    TfArg<bool>? disableRollback,
    RefTo<AwsIamRole>? iamRoleArn,
    required TfArg<String> name,
    TfArg<List<String>>? notificationArns,
    TfArg<CloudformationStackOnFailure>? onFailure,
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
           if (capabilities != null)
             'capabilities': TfArg.literal([
               for (final e in capabilities) e.toTfJson(),
             ]),
           if (disableRollback != null) 'disable_rollback': disableRollback,
           if (iamRoleArn != null) 'iam_role_arn': iamRoleArn.encodeAs('arn'),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudformationStack>`.
  RefTo<AwsCloudformationStack> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `outputs` attribute.
  TfRef<Map<String, String>> get outputs =>
      TfRef.attribute<Map<String, String>>(this, 'outputs');
}
