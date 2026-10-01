// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_account_assignment`.
const Set<String> _awsSsoadminAccountAssignmentSensitive = <String>{};

/// Ssoadmin Account Assignment Principal enum for `principal_type`.
extension type const SsoadminAccountAssignmentPrincipalType._(TfArg<String> _)
    implements TfArg<String> {
  SsoadminAccountAssignmentPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  SsoadminAccountAssignmentPrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const SsoadminAccountAssignmentPrincipalType.arg(TfArg<String> arg)
    : this._(arg);

  static const user = SsoadminAccountAssignmentPrincipalType._(
    TfArgLiteral('USER'),
  );
  static const group = SsoadminAccountAssignmentPrincipalType._(
    TfArgLiteral('GROUP'),
  );

  static const List<SsoadminAccountAssignmentPrincipalType> values = [
    user,
    group,
  ];
}

/// Ssoadmin Account Assignment Target enum for `target_type`.
extension type const SsoadminAccountAssignmentTargetType._(TfArg<String> _)
    implements TfArg<String> {
  SsoadminAccountAssignmentTargetType.variable(String name)
    : this._(TfArg.variable(name));
  SsoadminAccountAssignmentTargetType.expression(String template)
    : this._(TfArg.expression(template));
  const SsoadminAccountAssignmentTargetType.arg(TfArg<String> arg)
    : this._(arg);

  static const awsAccount = SsoadminAccountAssignmentTargetType._(
    TfArgLiteral('AWS_ACCOUNT'),
  );

  static const List<SsoadminAccountAssignmentTargetType> values = [awsAccount];
}

/// Factory wrapper for `aws_ssoadmin_account_assignment`.
final class AwsSsoadminAccountAssignment extends Resource {
  static const String tfType = 'aws_ssoadmin_account_assignment';

  AwsSsoadminAccountAssignment(
    super.localName, {
    required TfArg<String> instanceArn,
    required TfArg<String> permissionSetArn,
    required TfArg<String> principalId,
    required SsoadminAccountAssignmentPrincipalType principalType,
    TfArg<String>? region,
    required TfArg<String> targetId,
    required SsoadminAccountAssignmentTargetType targetType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           'permission_set_arn': permissionSetArn,
           'principal_id': principalId,
           'principal_type': principalType,
           'region': ?region,
           'target_id': targetId,
           'target_type': targetType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminAccountAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsoadminAccountAssignment>`.
  RefTo<AwsSsoadminAccountAssignment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArn =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `permission_set_arn` attribute.
  TfRef<String> get permissionSetArn =>
      TfRef.attribute<String>(this, 'permission_set_arn');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');
}
