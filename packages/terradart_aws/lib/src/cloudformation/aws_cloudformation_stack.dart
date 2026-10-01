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
           'disable_rollback': ?disableRollback,
           'iam_role_arn': ?iamRoleArn?.encodeAs('arn'),
           'name': name,
           'notification_arns': ?notificationArns,
           'on_failure': ?onFailure,
           'parameters': ?parameters,
           'policy_body': ?policyBody,
           'policy_url': ?policyUrl,
           'region': ?region,
           'tags': ?tags,
           'template_body': ?templateBody,
           'template_url': ?templateUrl,
           'timeout_in_minutes': ?timeoutInMinutes,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationStackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudformationStack>`.
  RefTo<AwsCloudformationStack> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `outputs` attribute.
  TfRef<Map<String, String>> get outputs =>
      TfRef.attribute<Map<String, String>>(this, 'outputs');

  /// Reference to `capabilities` attribute.
  TfRef<List<String>> get capabilities =>
      TfRef.attribute<List<String>>(this, 'capabilities');

  /// Reference to `disable_rollback` attribute.
  TfRef<bool> get disableRollback =>
      TfRef.attribute<bool>(this, 'disable_rollback');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `notification_arns` attribute.
  TfRef<List<String>> get notificationArns =>
      TfRef.attribute<List<String>>(this, 'notification_arns');

  /// Reference to `on_failure` attribute.
  TfRef<String> get onFailure => TfRef.attribute<String>(this, 'on_failure');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `policy_body` attribute.
  TfRef<String> get policyBody => TfRef.attribute<String>(this, 'policy_body');

  /// Reference to `policy_url` attribute.
  TfRef<String> get policyUrl => TfRef.attribute<String>(this, 'policy_url');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template_body` attribute.
  TfRef<String> get templateBody =>
      TfRef.attribute<String>(this, 'template_body');

  /// Reference to `template_url` attribute.
  TfRef<String> get templateUrl =>
      TfRef.attribute<String>(this, 'template_url');

  /// Reference to `timeout_in_minutes` attribute.
  TfRef<num> get timeoutInMinutes =>
      TfRef.attribute<num>(this, 'timeout_in_minutes');
}
