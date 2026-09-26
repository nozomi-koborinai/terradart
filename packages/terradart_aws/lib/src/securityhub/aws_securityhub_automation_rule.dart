// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_automation_rule`.
const Set<String> _awsSecurityhubAutomationRuleSensitive = <String>{};

/// Typed helper for the `actions` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleActions {
  const SecurityhubAutomationRuleActions({this.type, this.findingFieldsUpdate});

  final TfArg<String>? type;

  final List<SecurityhubAutomationRuleActionsFindingFieldsUpdate>?
  findingFieldsUpdate;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (findingFieldsUpdate != null)
      'finding_fields_update': [
        for (final e in findingFieldsUpdate!) e.encode(),
      ],
  };
}

/// Typed helper for the `actions.finding_fields_update` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleActionsFindingFieldsUpdate {
  const SecurityhubAutomationRuleActionsFindingFieldsUpdate({
    this.confidence,
    this.criticality,
    this.types,
    this.userDefinedFields,
    this.verificationState,
    this.note,
    this.relatedFindings,
    this.severity,
    this.workflow,
  });

  final TfArg<num>? confidence;

  final TfArg<num>? criticality;

  final TfArg<List<Object?>>? types;

  final TfArg<Map<String, String>>? userDefinedFields;

  final TfArg<String>? verificationState;

  final List<SecurityhubAutomationRuleActionsFindingFieldsUpdateNote>? note;

  final List<
    SecurityhubAutomationRuleActionsFindingFieldsUpdateRelatedFindings
  >?
  relatedFindings;

  final List<SecurityhubAutomationRuleActionsFindingFieldsUpdateSeverity>?
  severity;

  final List<SecurityhubAutomationRuleActionsFindingFieldsUpdateWorkflow>?
  workflow;

  Map<String, Object?> encode() => {
    if (confidence != null) 'confidence': confidence!.toTfJson(),
    if (criticality != null) 'criticality': criticality!.toTfJson(),
    if (types != null) 'types': types!.toTfJson(),
    if (userDefinedFields != null)
      'user_defined_fields': userDefinedFields!.toTfJson(),
    if (verificationState != null)
      'verification_state': verificationState!.toTfJson(),
    if (note != null) 'note': [for (final e in note!) e.encode()],
    if (relatedFindings != null)
      'related_findings': [for (final e in relatedFindings!) e.encode()],
    if (severity != null) 'severity': [for (final e in severity!) e.encode()],
    if (workflow != null) 'workflow': [for (final e in workflow!) e.encode()],
  };
}

/// Typed helper for the `actions.finding_fields_update.note` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleActionsFindingFieldsUpdateNote {
  const SecurityhubAutomationRuleActionsFindingFieldsUpdateNote({
    required this.text,
    required this.updatedBy,
  });

  final TfArg<String> text;

  final TfArg<String> updatedBy;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'updated_by': updatedBy.toTfJson(),
  };
}

/// Typed helper for the `actions.finding_fields_update.related_findings` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleActionsFindingFieldsUpdateRelatedFindings {
  const SecurityhubAutomationRuleActionsFindingFieldsUpdateRelatedFindings({
    required this.id,
    required this.productArn,
  });

  final TfArg<String> id;

  final TfArg<String> productArn;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'product_arn': productArn.toTfJson(),
  };
}

/// Typed helper for the `actions.finding_fields_update.severity` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleActionsFindingFieldsUpdateSeverity {
  const SecurityhubAutomationRuleActionsFindingFieldsUpdateSeverity({
    this.label,
    this.product,
  });

  final TfArg<String>? label;

  final TfArg<num>? product;

  Map<String, Object?> encode() => {
    if (label != null) 'label': label!.toTfJson(),
    if (product != null) 'product': product!.toTfJson(),
  };
}

/// Typed helper for the `actions.finding_fields_update.workflow` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleActionsFindingFieldsUpdateWorkflow {
  const SecurityhubAutomationRuleActionsFindingFieldsUpdateWorkflow({
    this.status,
  });

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `criteria` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteria {
  const SecurityhubAutomationRuleCriteria({
    this.awsAccountId,
    this.awsAccountName,
    this.companyName,
    this.complianceAssociatedStandardsId,
    this.complianceSecurityControlId,
    this.complianceStatus,
    this.confidence,
    this.createdAt,
    this.criticality,
    this.description,
    this.firstObservedAt,
    this.generatorId,
    this.id,
    this.lastObservedAt,
    this.noteText,
    this.noteUpdatedAt,
    this.noteUpdatedBy,
    this.productArn,
    this.productName,
    this.recordState,
    this.relatedFindingsId,
    this.relatedFindingsProductArn,
    this.resourceApplicationArn,
    this.resourceApplicationName,
    this.resourceDetailsOther,
    this.resourceId,
    this.resourcePartition,
    this.resourceRegion,
    this.resourceTags,
    this.resourceType,
    this.severityLabel,
    this.sourceUrl,
    this.title,
    this.type,
    this.updatedAt,
    this.userDefinedFields,
    this.verificationState,
    this.workflowStatus,
  });

  final List<SecurityhubAutomationRuleCriteriaAwsAccountId>? awsAccountId;

  final List<SecurityhubAutomationRuleCriteriaAwsAccountName>? awsAccountName;

  final List<SecurityhubAutomationRuleCriteriaCompanyName>? companyName;

  final List<SecurityhubAutomationRuleCriteriaComplianceAssociatedStandardsId>?
  complianceAssociatedStandardsId;

  final List<SecurityhubAutomationRuleCriteriaComplianceSecurityControlId>?
  complianceSecurityControlId;

  final List<SecurityhubAutomationRuleCriteriaComplianceStatus>?
  complianceStatus;

  final List<SecurityhubAutomationRuleCriteriaConfidence>? confidence;

  final List<SecurityhubAutomationRuleCriteriaCreatedAt>? createdAt;

  final List<SecurityhubAutomationRuleCriteriaCriticality>? criticality;

  final List<SecurityhubAutomationRuleCriteriaDescription>? description;

  final List<SecurityhubAutomationRuleCriteriaFirstObservedAt>? firstObservedAt;

  final List<SecurityhubAutomationRuleCriteriaGeneratorId>? generatorId;

  final List<SecurityhubAutomationRuleCriteriaId>? id;

  final List<SecurityhubAutomationRuleCriteriaLastObservedAt>? lastObservedAt;

  final List<SecurityhubAutomationRuleCriteriaNoteText>? noteText;

  final List<SecurityhubAutomationRuleCriteriaNoteUpdatedAt>? noteUpdatedAt;

  final List<SecurityhubAutomationRuleCriteriaNoteUpdatedBy>? noteUpdatedBy;

  final List<SecurityhubAutomationRuleCriteriaProductArn>? productArn;

  final List<SecurityhubAutomationRuleCriteriaProductName>? productName;

  final List<SecurityhubAutomationRuleCriteriaRecordState>? recordState;

  final List<SecurityhubAutomationRuleCriteriaRelatedFindingsId>?
  relatedFindingsId;

  final List<SecurityhubAutomationRuleCriteriaRelatedFindingsProductArn>?
  relatedFindingsProductArn;

  final List<SecurityhubAutomationRuleCriteriaResourceApplicationArn>?
  resourceApplicationArn;

  final List<SecurityhubAutomationRuleCriteriaResourceApplicationName>?
  resourceApplicationName;

  final List<SecurityhubAutomationRuleCriteriaResourceDetailsOther>?
  resourceDetailsOther;

  final List<SecurityhubAutomationRuleCriteriaResourceId>? resourceId;

  final List<SecurityhubAutomationRuleCriteriaResourcePartition>?
  resourcePartition;

  final List<SecurityhubAutomationRuleCriteriaResourceRegion>? resourceRegion;

  final List<SecurityhubAutomationRuleCriteriaResourceTags>? resourceTags;

  final List<SecurityhubAutomationRuleCriteriaResourceType>? resourceType;

  final List<SecurityhubAutomationRuleCriteriaSeverityLabel>? severityLabel;

  final List<SecurityhubAutomationRuleCriteriaSourceUrl>? sourceUrl;

  final List<SecurityhubAutomationRuleCriteriaTitle>? title;

  final List<SecurityhubAutomationRuleCriteriaType>? type;

  final List<SecurityhubAutomationRuleCriteriaUpdatedAt>? updatedAt;

  final List<SecurityhubAutomationRuleCriteriaUserDefinedFields>?
  userDefinedFields;

  final List<SecurityhubAutomationRuleCriteriaVerificationState>?
  verificationState;

  final List<SecurityhubAutomationRuleCriteriaWorkflowStatus>? workflowStatus;

  Map<String, Object?> encode() => {
    if (awsAccountId != null)
      'aws_account_id': [for (final e in awsAccountId!) e.encode()],
    if (awsAccountName != null)
      'aws_account_name': [for (final e in awsAccountName!) e.encode()],
    if (companyName != null)
      'company_name': [for (final e in companyName!) e.encode()],
    if (complianceAssociatedStandardsId != null)
      'compliance_associated_standards_id': [
        for (final e in complianceAssociatedStandardsId!) e.encode(),
      ],
    if (complianceSecurityControlId != null)
      'compliance_security_control_id': [
        for (final e in complianceSecurityControlId!) e.encode(),
      ],
    if (complianceStatus != null)
      'compliance_status': [for (final e in complianceStatus!) e.encode()],
    if (confidence != null)
      'confidence': [for (final e in confidence!) e.encode()],
    if (createdAt != null)
      'created_at': [for (final e in createdAt!) e.encode()],
    if (criticality != null)
      'criticality': [for (final e in criticality!) e.encode()],
    if (description != null)
      'description': [for (final e in description!) e.encode()],
    if (firstObservedAt != null)
      'first_observed_at': [for (final e in firstObservedAt!) e.encode()],
    if (generatorId != null)
      'generator_id': [for (final e in generatorId!) e.encode()],
    if (id != null) 'id': [for (final e in id!) e.encode()],
    if (lastObservedAt != null)
      'last_observed_at': [for (final e in lastObservedAt!) e.encode()],
    if (noteText != null) 'note_text': [for (final e in noteText!) e.encode()],
    if (noteUpdatedAt != null)
      'note_updated_at': [for (final e in noteUpdatedAt!) e.encode()],
    if (noteUpdatedBy != null)
      'note_updated_by': [for (final e in noteUpdatedBy!) e.encode()],
    if (productArn != null)
      'product_arn': [for (final e in productArn!) e.encode()],
    if (productName != null)
      'product_name': [for (final e in productName!) e.encode()],
    if (recordState != null)
      'record_state': [for (final e in recordState!) e.encode()],
    if (relatedFindingsId != null)
      'related_findings_id': [for (final e in relatedFindingsId!) e.encode()],
    if (relatedFindingsProductArn != null)
      'related_findings_product_arn': [
        for (final e in relatedFindingsProductArn!) e.encode(),
      ],
    if (resourceApplicationArn != null)
      'resource_application_arn': [
        for (final e in resourceApplicationArn!) e.encode(),
      ],
    if (resourceApplicationName != null)
      'resource_application_name': [
        for (final e in resourceApplicationName!) e.encode(),
      ],
    if (resourceDetailsOther != null)
      'resource_details_other': [
        for (final e in resourceDetailsOther!) e.encode(),
      ],
    if (resourceId != null)
      'resource_id': [for (final e in resourceId!) e.encode()],
    if (resourcePartition != null)
      'resource_partition': [for (final e in resourcePartition!) e.encode()],
    if (resourceRegion != null)
      'resource_region': [for (final e in resourceRegion!) e.encode()],
    if (resourceTags != null)
      'resource_tags': [for (final e in resourceTags!) e.encode()],
    if (resourceType != null)
      'resource_type': [for (final e in resourceType!) e.encode()],
    if (severityLabel != null)
      'severity_label': [for (final e in severityLabel!) e.encode()],
    if (sourceUrl != null)
      'source_url': [for (final e in sourceUrl!) e.encode()],
    if (title != null) 'title': [for (final e in title!) e.encode()],
    if (type != null) 'type': [for (final e in type!) e.encode()],
    if (updatedAt != null)
      'updated_at': [for (final e in updatedAt!) e.encode()],
    if (userDefinedFields != null)
      'user_defined_fields': [for (final e in userDefinedFields!) e.encode()],
    if (verificationState != null)
      'verification_state': [for (final e in verificationState!) e.encode()],
    if (workflowStatus != null)
      'workflow_status': [for (final e in workflowStatus!) e.encode()],
  };
}

/// Typed helper for the `criteria.aws_account_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaAwsAccountId {
  const SecurityhubAutomationRuleCriteriaAwsAccountId({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.aws_account_name` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaAwsAccountName {
  const SecurityhubAutomationRuleCriteriaAwsAccountName({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.company_name` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaCompanyName {
  const SecurityhubAutomationRuleCriteriaCompanyName({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.compliance_associated_standards_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaComplianceAssociatedStandardsId {
  const SecurityhubAutomationRuleCriteriaComplianceAssociatedStandardsId({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.compliance_security_control_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaComplianceSecurityControlId {
  const SecurityhubAutomationRuleCriteriaComplianceSecurityControlId({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.compliance_status` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaComplianceStatus {
  const SecurityhubAutomationRuleCriteriaComplianceStatus({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.confidence` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaConfidence {
  const SecurityhubAutomationRuleCriteriaConfidence({
    this.eq,
    this.gt,
    this.gte,
    this.lt,
    this.lte,
  });

  final TfArg<num>? eq;

  final TfArg<num>? gt;

  final TfArg<num>? gte;

  final TfArg<num>? lt;

  final TfArg<num>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gt != null) 'gt': gt!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lt != null) 'lt': lt!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `criteria.created_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaCreatedAt {
  const SecurityhubAutomationRuleCriteriaCreatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleCriteriaCreatedAtDateRange>? dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.created_at.date_range` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaCreatedAtDateRange {
  const SecurityhubAutomationRuleCriteriaCreatedAtDateRange({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.criticality` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaCriticality {
  const SecurityhubAutomationRuleCriteriaCriticality({
    this.eq,
    this.gt,
    this.gte,
    this.lt,
    this.lte,
  });

  final TfArg<num>? eq;

  final TfArg<num>? gt;

  final TfArg<num>? gte;

  final TfArg<num>? lt;

  final TfArg<num>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gt != null) 'gt': gt!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lt != null) 'lt': lt!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `criteria.description` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaDescription {
  const SecurityhubAutomationRuleCriteriaDescription({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.first_observed_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaFirstObservedAt {
  const SecurityhubAutomationRuleCriteriaFirstObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleCriteriaFirstObservedAtDateRange>?
  dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.first_observed_at.date_range` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaFirstObservedAtDateRange {
  const SecurityhubAutomationRuleCriteriaFirstObservedAtDateRange({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.generator_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaGeneratorId {
  const SecurityhubAutomationRuleCriteriaGeneratorId({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaId {
  const SecurityhubAutomationRuleCriteriaId({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.last_observed_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaLastObservedAt {
  const SecurityhubAutomationRuleCriteriaLastObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleCriteriaLastObservedAtDateRange>?
  dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.last_observed_at.date_range` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaLastObservedAtDateRange {
  const SecurityhubAutomationRuleCriteriaLastObservedAtDateRange({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.note_text` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaNoteText {
  const SecurityhubAutomationRuleCriteriaNoteText({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.note_updated_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaNoteUpdatedAt {
  const SecurityhubAutomationRuleCriteriaNoteUpdatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleCriteriaNoteUpdatedAtDateRange>?
  dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.note_updated_at.date_range` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaNoteUpdatedAtDateRange {
  const SecurityhubAutomationRuleCriteriaNoteUpdatedAtDateRange({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.note_updated_by` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaNoteUpdatedBy {
  const SecurityhubAutomationRuleCriteriaNoteUpdatedBy({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.product_arn` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaProductArn {
  const SecurityhubAutomationRuleCriteriaProductArn({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.product_name` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaProductName {
  const SecurityhubAutomationRuleCriteriaProductName({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.record_state` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaRecordState {
  const SecurityhubAutomationRuleCriteriaRecordState({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.related_findings_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaRelatedFindingsId {
  const SecurityhubAutomationRuleCriteriaRelatedFindingsId({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.related_findings_product_arn` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaRelatedFindingsProductArn {
  const SecurityhubAutomationRuleCriteriaRelatedFindingsProductArn({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_application_arn` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaResourceApplicationArn {
  const SecurityhubAutomationRuleCriteriaResourceApplicationArn({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_application_name` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaResourceApplicationName {
  const SecurityhubAutomationRuleCriteriaResourceApplicationName({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_details_other` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaResourceDetailsOther {
  const SecurityhubAutomationRuleCriteriaResourceDetailsOther({
    required this.comparison,
    required this.key,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaResourceId {
  const SecurityhubAutomationRuleCriteriaResourceId({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_partition` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaResourcePartition {
  const SecurityhubAutomationRuleCriteriaResourcePartition({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_region` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaResourceRegion {
  const SecurityhubAutomationRuleCriteriaResourceRegion({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_tags` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaResourceTags {
  const SecurityhubAutomationRuleCriteriaResourceTags({
    required this.comparison,
    required this.key,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_type` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaResourceType {
  const SecurityhubAutomationRuleCriteriaResourceType({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.severity_label` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaSeverityLabel {
  const SecurityhubAutomationRuleCriteriaSeverityLabel({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.source_url` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaSourceUrl {
  const SecurityhubAutomationRuleCriteriaSourceUrl({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.title` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaTitle {
  const SecurityhubAutomationRuleCriteriaTitle({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.type` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaType {
  const SecurityhubAutomationRuleCriteriaType({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.updated_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaUpdatedAt {
  const SecurityhubAutomationRuleCriteriaUpdatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleCriteriaUpdatedAtDateRange>? dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.updated_at.date_range` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaUpdatedAtDateRange {
  const SecurityhubAutomationRuleCriteriaUpdatedAtDateRange({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.user_defined_fields` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaUserDefinedFields {
  const SecurityhubAutomationRuleCriteriaUserDefinedFields({
    required this.comparison,
    required this.key,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.verification_state` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaVerificationState {
  const SecurityhubAutomationRuleCriteriaVerificationState({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.workflow_status` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriteriaWorkflowStatus {
  const SecurityhubAutomationRuleCriteriaWorkflowStatus({
    required this.comparison,
    required this.value,
  });

  final TfArg<String> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_securityhub_automation_rule`.
final class AwsSecurityhubAutomationRule extends Resource {
  static const String tfType = 'aws_securityhub_automation_rule';

  AwsSecurityhubAutomationRule({
    required super.localName,
    required TfArg<String> description,
    TfArg<bool>? isTerminal,
    TfArg<String>? region,
    required TfArg<String> ruleName,
    required TfArg<num> ruleOrder,
    TfArg<String>? ruleStatus,
    TfArg<Map<String, String>>? tags,
    List<SecurityhubAutomationRuleActions>? actions,
    List<SecurityhubAutomationRuleCriteria>? criteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           if (isTerminal != null) 'is_terminal': isTerminal,
           if (region != null) 'region': region,
           'rule_name': ruleName,
           'rule_order': ruleOrder,
           if (ruleStatus != null) 'rule_status': ruleStatus,
           if (tags != null) 'tags': tags,
           if (actions != null)
             'actions': TfArg.literal([for (final e in actions) e.encode()]),
           if (criteria != null)
             'criteria': TfArg.literal([for (final e in criteria) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubAutomationRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
