// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_auditmanager_assessment_delegation`.
const Set<String> _awsAuditmanagerAssessmentDelegationSensitive = <String>{};

/// Factory wrapper for `aws_auditmanager_assessment_delegation`.
final class AwsAuditmanagerAssessmentDelegation extends Resource {
  static const String tfType = 'aws_auditmanager_assessment_delegation';

  AwsAuditmanagerAssessmentDelegation({
    required super.localName,
    required TfArg<String> assessmentId,
    TfArg<String>? comment,
    required TfArg<String> controlSetId,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    required TfArg<String> roleType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assessment_id': assessmentId,
           if (comment != null) 'comment': comment,
           'control_set_id': controlSetId,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           'role_type': roleType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAuditmanagerAssessmentDelegationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `delegation_id` attribute.
  TfRef<String> get delegationId =>
      TfRef.attribute<String>(this, 'delegation_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
