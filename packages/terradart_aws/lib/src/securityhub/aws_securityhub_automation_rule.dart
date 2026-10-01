// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_automation_rule`.
const Set<String> _awsSecurityhubAutomationRuleSensitive = <String>{};

/// Securityhub Automation Rule enum for `rule_status`.
enum SecurityhubAutomationRuleStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SecurityhubAutomationRuleStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleActions {
  const SecurityhubAutomationRuleActions({this.type, this.findingFieldsUpdate});

  final TfArg<SecurityhubAutomationRuleActionsType>? type;

  final List<SecurityhubAutomationRuleFindingFieldsUpdate>? findingFieldsUpdate;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    if (findingFieldsUpdate != null)
      'finding_fields_update': [
        for (final e in findingFieldsUpdate!) e.encode(),
      ],
  };
}

/// `type` — derived from the provider schema description.
enum SecurityhubAutomationRuleActionsType implements TerraformEnum {
  findingFieldsUpdate('FINDING_FIELDS_UPDATE');

  const SecurityhubAutomationRuleActionsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.finding_fields_update` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleFindingFieldsUpdate {
  const SecurityhubAutomationRuleFindingFieldsUpdate({
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

  final TfArg<List<String>>? types;

  final TfArg<Map<String, String>>? userDefinedFields;

  final TfArg<SecurityhubAutomationRuleFindingFieldsUpdateVerificationState>?
  verificationState;

  final List<SecurityhubAutomationRuleNote>? note;

  final List<SecurityhubAutomationRuleRelatedFindings>? relatedFindings;

  final List<SecurityhubAutomationRuleSeverity>? severity;

  final List<SecurityhubAutomationRuleWorkflow>? workflow;

  Map<String, Object?> encode() => {
    'confidence': ?confidence?.toTfJson(),
    'criticality': ?criticality?.toTfJson(),
    'types': ?types?.toTfJson(),
    'user_defined_fields': ?userDefinedFields?.toTfJson(),
    'verification_state': ?verificationState?.toTfJson(),
    if (note != null) 'note': [for (final e in note!) e.encode()],
    if (relatedFindings != null)
      'related_findings': [for (final e in relatedFindings!) e.encode()],
    if (severity != null) 'severity': [for (final e in severity!) e.encode()],
    if (workflow != null) 'workflow': [for (final e in workflow!) e.encode()],
  };
}

/// `verification_state` — derived from the provider schema description.
enum SecurityhubAutomationRuleFindingFieldsUpdateVerificationState
    implements TerraformEnum {
  unknown('UNKNOWN'),
  truePositive('TRUE_POSITIVE'),
  falsePositive('FALSE_POSITIVE'),
  benignPositive('BENIGN_POSITIVE');

  const SecurityhubAutomationRuleFindingFieldsUpdateVerificationState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.finding_fields_update.note` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleNote {
  const SecurityhubAutomationRuleNote({
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
final class SecurityhubAutomationRuleRelatedFindings {
  const SecurityhubAutomationRuleRelatedFindings({
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
final class SecurityhubAutomationRuleSeverity {
  const SecurityhubAutomationRuleSeverity({this.label, this.product});

  final TfArg<SecurityhubAutomationRuleLabel>? label;

  final TfArg<num>? product;

  Map<String, Object?> encode() => {
    'label': ?label?.toTfJson(),
    'product': ?product?.toTfJson(),
  };
}

/// `label` — derived from the provider schema description.
enum SecurityhubAutomationRuleLabel implements TerraformEnum {
  informational('INFORMATIONAL'),
  low('LOW'),
  medium('MEDIUM'),
  high('HIGH'),
  critical('CRITICAL');

  const SecurityhubAutomationRuleLabel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.finding_fields_update.workflow` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleWorkflow {
  const SecurityhubAutomationRuleWorkflow({this.status});

  final TfArg<SecurityhubAutomationRuleFindingFieldsUpdateStatus>? status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// `status` — derived from the provider schema description.
enum SecurityhubAutomationRuleFindingFieldsUpdateStatus
    implements TerraformEnum {
  newCase('NEW'),
  notified('NOTIFIED'),
  resolved('RESOLVED'),
  suppressed('SUPPRESSED');

  const SecurityhubAutomationRuleFindingFieldsUpdateStatus(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<SecurityhubAutomationRuleAwsAccountId>? awsAccountId;

  final List<SecurityhubAutomationRuleAwsAccountName>? awsAccountName;

  final List<SecurityhubAutomationRuleCompanyName>? companyName;

  final List<SecurityhubAutomationRuleComplianceAssociatedStandardsId>?
  complianceAssociatedStandardsId;

  final List<SecurityhubAutomationRuleComplianceSecurityControlId>?
  complianceSecurityControlId;

  final List<SecurityhubAutomationRuleComplianceStatus>? complianceStatus;

  final List<SecurityhubAutomationRuleConfidence>? confidence;

  final List<SecurityhubAutomationRuleCreatedAt>? createdAt;

  final List<SecurityhubAutomationRuleCriticality>? criticality;

  final List<SecurityhubAutomationRuleCriteriaDescription>? description;

  final List<SecurityhubAutomationRuleFirstObservedAt>? firstObservedAt;

  final List<SecurityhubAutomationRuleGeneratorId>? generatorId;

  final List<SecurityhubAutomationRuleCriteriaId>? id;

  final List<SecurityhubAutomationRuleLastObservedAt>? lastObservedAt;

  final List<SecurityhubAutomationRuleNoteText>? noteText;

  final List<SecurityhubAutomationRuleNoteUpdatedAt>? noteUpdatedAt;

  final List<SecurityhubAutomationRuleNoteUpdatedBy>? noteUpdatedBy;

  final List<SecurityhubAutomationRuleProductArn>? productArn;

  final List<SecurityhubAutomationRuleProductName>? productName;

  final List<SecurityhubAutomationRuleRecordState>? recordState;

  final List<SecurityhubAutomationRuleRelatedFindingsId>? relatedFindingsId;

  final List<SecurityhubAutomationRuleRelatedFindingsProductArn>?
  relatedFindingsProductArn;

  final List<SecurityhubAutomationRuleResourceApplicationArn>?
  resourceApplicationArn;

  final List<SecurityhubAutomationRuleResourceApplicationName>?
  resourceApplicationName;

  final List<SecurityhubAutomationRuleResourceDetailsOther>?
  resourceDetailsOther;

  final List<SecurityhubAutomationRuleResourceId>? resourceId;

  final List<SecurityhubAutomationRuleResourcePartition>? resourcePartition;

  final List<SecurityhubAutomationRuleResourceRegion>? resourceRegion;

  final List<SecurityhubAutomationRuleResourceTags>? resourceTags;

  final List<SecurityhubAutomationRuleResourceType>? resourceType;

  final List<SecurityhubAutomationRuleSeverityLabel>? severityLabel;

  final List<SecurityhubAutomationRuleSourceUrl>? sourceUrl;

  final List<SecurityhubAutomationRuleTitle>? title;

  final List<SecurityhubAutomationRuleCriteriaType>? type;

  final List<SecurityhubAutomationRuleUpdatedAt>? updatedAt;

  final List<SecurityhubAutomationRuleUserDefinedFields>? userDefinedFields;

  final List<SecurityhubAutomationRuleVerificationState>? verificationState;

  final List<SecurityhubAutomationRuleWorkflowStatus>? workflowStatus;

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
final class SecurityhubAutomationRuleAwsAccountId {
  const SecurityhubAutomationRuleAwsAccountId({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `comparison` — derived from the provider schema description.
enum SecurityhubAutomationRuleAwsAccountIdComparison implements TerraformEnum {
  equals('EQUALS'),
  prefix('PREFIX'),
  notEquals('NOT_EQUALS'),
  prefixNotEquals('PREFIX_NOT_EQUALS'),
  contains('CONTAINS'),
  notContains('NOT_CONTAINS'),
  containsWord('CONTAINS_WORD');

  const SecurityhubAutomationRuleAwsAccountIdComparison(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `criteria.aws_account_name` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleAwsAccountName {
  const SecurityhubAutomationRuleAwsAccountName({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.company_name` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCompanyName {
  const SecurityhubAutomationRuleCompanyName({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.compliance_associated_standards_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleComplianceAssociatedStandardsId {
  const SecurityhubAutomationRuleComplianceAssociatedStandardsId({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.compliance_security_control_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleComplianceSecurityControlId {
  const SecurityhubAutomationRuleComplianceSecurityControlId({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.compliance_status` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleComplianceStatus {
  const SecurityhubAutomationRuleComplianceStatus({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.confidence` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleConfidence {
  const SecurityhubAutomationRuleConfidence({
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
    'eq': ?eq?.toTfJson(),
    'gt': ?gt?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lt': ?lt?.toTfJson(),
    'lte': ?lte?.toTfJson(),
  };
}

/// Typed helper for the `criteria.created_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCreatedAt {
  const SecurityhubAutomationRuleCreatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleDateRange>? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.created_at.date_range` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SecurityhubAutomationRuleDateRange {
  const SecurityhubAutomationRuleDateRange({
    required this.unit,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleUnit> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
enum SecurityhubAutomationRuleUnit implements TerraformEnum {
  days('DAYS');

  const SecurityhubAutomationRuleUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `criteria.criticality` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleCriticality {
  const SecurityhubAutomationRuleCriticality({
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
    'eq': ?eq?.toTfJson(),
    'gt': ?gt?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lt': ?lt?.toTfJson(),
    'lte': ?lte?.toTfJson(),
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

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.first_observed_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleFirstObservedAt {
  const SecurityhubAutomationRuleFirstObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleDateRange>? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.generator_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleGeneratorId {
  const SecurityhubAutomationRuleGeneratorId({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

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

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.last_observed_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleLastObservedAt {
  const SecurityhubAutomationRuleLastObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleDateRange>? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.note_text` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleNoteText {
  const SecurityhubAutomationRuleNoteText({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.note_updated_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleNoteUpdatedAt {
  const SecurityhubAutomationRuleNoteUpdatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleDateRange>? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.note_updated_by` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleNoteUpdatedBy {
  const SecurityhubAutomationRuleNoteUpdatedBy({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.product_arn` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleProductArn {
  const SecurityhubAutomationRuleProductArn({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.product_name` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleProductName {
  const SecurityhubAutomationRuleProductName({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.record_state` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleRecordState {
  const SecurityhubAutomationRuleRecordState({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.related_findings_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleRelatedFindingsId {
  const SecurityhubAutomationRuleRelatedFindingsId({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.related_findings_product_arn` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleRelatedFindingsProductArn {
  const SecurityhubAutomationRuleRelatedFindingsProductArn({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_application_arn` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleResourceApplicationArn {
  const SecurityhubAutomationRuleResourceApplicationArn({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_application_name` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleResourceApplicationName {
  const SecurityhubAutomationRuleResourceApplicationName({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_details_other` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleResourceDetailsOther {
  const SecurityhubAutomationRuleResourceDetailsOther({
    required this.comparison,
    required this.key,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleResourceDetailsOtherComparison>
  comparison;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `comparison` — derived from the provider schema description.
enum SecurityhubAutomationRuleResourceDetailsOtherComparison
    implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS'),
  contains('CONTAINS'),
  notContains('NOT_CONTAINS');

  const SecurityhubAutomationRuleResourceDetailsOtherComparison(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `criteria.resource_id` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleResourceId {
  const SecurityhubAutomationRuleResourceId({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_partition` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleResourcePartition {
  const SecurityhubAutomationRuleResourcePartition({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_region` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleResourceRegion {
  const SecurityhubAutomationRuleResourceRegion({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.resource_tags` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleResourceTags {
  const SecurityhubAutomationRuleResourceTags({
    required this.comparison,
    required this.key,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleResourceDetailsOtherComparison>
  comparison;

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
final class SecurityhubAutomationRuleResourceType {
  const SecurityhubAutomationRuleResourceType({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.severity_label` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleSeverityLabel {
  const SecurityhubAutomationRuleSeverityLabel({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.source_url` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleSourceUrl {
  const SecurityhubAutomationRuleSourceUrl({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.title` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleTitle {
  const SecurityhubAutomationRuleTitle({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

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

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.updated_at` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleUpdatedAt {
  const SecurityhubAutomationRuleUpdatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final List<SecurityhubAutomationRuleDateRange>? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    if (dateRange != null)
      'date_range': [for (final e in dateRange!) e.encode()],
  };
}

/// Typed helper for the `criteria.user_defined_fields` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleUserDefinedFields {
  const SecurityhubAutomationRuleUserDefinedFields({
    required this.comparison,
    required this.key,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleResourceDetailsOtherComparison>
  comparison;

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
final class SecurityhubAutomationRuleVerificationState {
  const SecurityhubAutomationRuleVerificationState({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `criteria.workflow_status` block of
/// `aws_securityhub_automation_rule` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleWorkflowStatus {
  const SecurityhubAutomationRuleWorkflowStatus({
    required this.comparison,
    required this.value,
  });

  final TfArg<SecurityhubAutomationRuleAwsAccountIdComparison> comparison;

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
    TfArg<SecurityhubAutomationRuleStatus>? ruleStatus,
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
           'is_terminal': ?isTerminal,
           'region': ?region,
           'rule_name': ruleName,
           'rule_order': ruleOrder,
           'rule_status': ?ruleStatus,
           'tags': ?tags,
           if (actions != null)
             'actions': TfArg.literal([for (final e in actions) e.encode()]),
           if (criteria != null)
             'criteria': TfArg.literal([for (final e in criteria) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubAutomationRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubAutomationRule>`.
  RefTo<AwsSecurityhubAutomationRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `is_terminal` attribute.
  TfRef<bool> get isTerminalRef => TfRef.attribute<bool>(this, 'is_terminal');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleNameRef => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `rule_order` attribute.
  TfRef<num> get ruleOrderRef => TfRef.attribute<num>(this, 'rule_order');

  /// Reference to `rule_status` attribute.
  TfRef<String> get ruleStatusRef =>
      TfRef.attribute<String>(this, 'rule_status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
