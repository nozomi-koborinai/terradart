// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_account_assignment`.
const Set<String> _awsSsoadminAccountAssignmentSensitive = <String>{};

/// Ssoadmin Account Assignment Principal enum for `principal_type`.
enum SsoadminAccountAssignmentPrincipalType implements TerraformEnum {
  user('USER'),
  group('GROUP');

  const SsoadminAccountAssignmentPrincipalType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ssoadmin Account Assignment Target enum for `target_type`.
enum SsoadminAccountAssignmentTargetType implements TerraformEnum {
  awsAccount('AWS_ACCOUNT');

  const SsoadminAccountAssignmentTargetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ssoadmin_account_assignment`.
final class AwsSsoadminAccountAssignment extends Resource {
  static const String tfType = 'aws_ssoadmin_account_assignment';

  AwsSsoadminAccountAssignment({
    required super.localName,
    required TfArg<String> instanceArn,
    required TfArg<String> permissionSetArn,
    required TfArg<String> principalId,
    required TfArg<SsoadminAccountAssignmentPrincipalType> principalType,
    TfArg<String>? region,
    required TfArg<String> targetId,
    required TfArg<SsoadminAccountAssignmentTargetType> targetType,
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
  TfRef<String> get instanceArnRef =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `permission_set_arn` attribute.
  TfRef<String> get permissionSetArnRef =>
      TfRef.attribute<String>(this, 'permission_set_arn');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalIdRef =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalTypeRef =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetIdRef => TfRef.attribute<String>(this, 'target_id');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetTypeRef =>
      TfRef.attribute<String>(this, 'target_type');
}
