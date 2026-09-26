// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_auditmanager_assessment_report`.
const Set<String> _awsAuditmanagerAssessmentReportSensitive = <String>{};

/// Factory wrapper for `aws_auditmanager_assessment_report`.
final class AwsAuditmanagerAssessmentReport extends Resource {
  static const String tfType = 'aws_auditmanager_assessment_report';

  AwsAuditmanagerAssessmentReport({
    required super.localName,
    required TfArg<String> assessmentId,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assessment_id': assessmentId,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAuditmanagerAssessmentReportSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `author` attribute.
  TfRef<String> get author => TfRef.attribute<String>(this, 'author');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
