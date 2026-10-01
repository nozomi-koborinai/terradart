// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudformation_stack`.
const Set<String> _awsCloudformationStackSensitive = <String>{};

/// Cloudformation Stack enum for `capabilities`.
extension type const CloudformationStackCapabilities._(TfArg<String> _)
    implements TfArg<String> {
  CloudformationStackCapabilities.variable(String name)
    : this._(TfArg.variable(name));
  CloudformationStackCapabilities.expression(String template)
    : this._(TfArg.expression(template));
  const CloudformationStackCapabilities.arg(TfArg<String> arg) : this._(arg);

  static const capabilityIam = CloudformationStackCapabilities._(
    TfArgLiteral('CAPABILITY_IAM'),
  );
  static const capabilityNamedIam = CloudformationStackCapabilities._(
    TfArgLiteral('CAPABILITY_NAMED_IAM'),
  );
  static const capabilityAutoExpand = CloudformationStackCapabilities._(
    TfArgLiteral('CAPABILITY_AUTO_EXPAND'),
  );

  static const List<CloudformationStackCapabilities> values = [
    capabilityIam,
    capabilityNamedIam,
    capabilityAutoExpand,
  ];
}

/// Cloudformation Stack On enum for `on_failure`.
extension type const CloudformationStackOnFailure._(TfArg<String> _)
    implements TfArg<String> {
  CloudformationStackOnFailure.variable(String name)
    : this._(TfArg.variable(name));
  CloudformationStackOnFailure.expression(String template)
    : this._(TfArg.expression(template));
  const CloudformationStackOnFailure.arg(TfArg<String> arg) : this._(arg);

  static const doNothing = CloudformationStackOnFailure._(
    TfArgLiteral('DO_NOTHING'),
  );
  static const rollback = CloudformationStackOnFailure._(
    TfArgLiteral('ROLLBACK'),
  );
  static const delete = CloudformationStackOnFailure._(TfArgLiteral('DELETE'));

  static const List<CloudformationStackOnFailure> values = [
    doNothing,
    rollback,
    delete,
  ];
}

/// Factory wrapper for `aws_cloudformation_stack`.
final class AwsCloudformationStack extends Resource {
  static const String tfType = 'aws_cloudformation_stack';

  AwsCloudformationStack(
    super.localName, {
    List<CloudformationStackCapabilities>? capabilities,
    TfArg<bool>? disableRollback,
    RefTo<AwsIamRole>? iamRoleArn,
    required TfArg<String> name,
    TfArg<List<String>>? notificationArns,
    CloudformationStackOnFailure? onFailure,
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
