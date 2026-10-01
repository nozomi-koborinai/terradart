// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_auditmanager_assessment_delegation`.
const Set<String> _awsAuditmanagerAssessmentDelegationSensitive = <String>{};

/// Auditmanager Assessment Delegation Role enum for `role_type`.
extension type const AuditmanagerAssessmentDelegationRoleType._(TfArg<String> _)
    implements TfArg<String> {
  AuditmanagerAssessmentDelegationRoleType.variable(String name)
    : this._(TfArg.variable(name));
  AuditmanagerAssessmentDelegationRoleType.expression(String template)
    : this._(TfArg.expression(template));
  const AuditmanagerAssessmentDelegationRoleType.arg(TfArg<String> arg)
    : this._(arg);

  static const processOwner = AuditmanagerAssessmentDelegationRoleType._(
    TfArgLiteral('PROCESS_OWNER'),
  );
  static const resourceOwner = AuditmanagerAssessmentDelegationRoleType._(
    TfArgLiteral('RESOURCE_OWNER'),
  );

  static const List<AuditmanagerAssessmentDelegationRoleType> values = [
    processOwner,
    resourceOwner,
  ];
}

/// Factory wrapper for `aws_auditmanager_assessment_delegation`.
final class AwsAuditmanagerAssessmentDelegation extends Resource {
  static const String tfType = 'aws_auditmanager_assessment_delegation';

  AwsAuditmanagerAssessmentDelegation(
    super.localName, {
    required TfArg<String> assessmentId,
    TfArg<String>? comment,
    required TfArg<String> controlSetId,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    required AuditmanagerAssessmentDelegationRoleType roleType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assessment_id': assessmentId,
           'comment': ?comment,
           'control_set_id': controlSetId,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'role_type': roleType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAuditmanagerAssessmentDelegationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAuditmanagerAssessmentDelegation>`.
  RefTo<AwsAuditmanagerAssessmentDelegation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `delegation_id` attribute.
  TfRef<String> get delegationId =>
      TfRef.attribute<String>(this, 'delegation_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `assessment_id` attribute.
  TfRef<String> get assessmentId =>
      TfRef.attribute<String>(this, 'assessment_id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `control_set_id` attribute.
  TfRef<String> get controlSetId =>
      TfRef.attribute<String>(this, 'control_set_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `role_type` attribute.
  TfRef<String> get roleType => TfRef.attribute<String>(this, 'role_type');
}
