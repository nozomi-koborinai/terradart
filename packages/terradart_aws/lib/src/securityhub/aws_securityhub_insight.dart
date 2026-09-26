// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_insight`.
const Set<String> _awsSecurityhubInsightSensitive = <String>{};

/// Typed helper for the `filters` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFilters {
  const SecurityhubInsightFilters({
    this.awsAccountId,
    this.awsAccountName,
    this.companyName,
    this.complianceAssociatedStandardsId,
    this.complianceSecurityControlId,
    this.complianceSecurityControlParametersName,
    this.complianceSecurityControlParametersValue,
    this.complianceStatus,
    this.confidence,
    this.createdAt,
    this.criticality,
    this.description,
    this.findingProviderFieldsConfidence,
    this.findingProviderFieldsCriticality,
    this.findingProviderFieldsRelatedFindingsId,
    this.findingProviderFieldsRelatedFindingsProductArn,
    this.findingProviderFieldsSeverityLabel,
    this.findingProviderFieldsSeverityOriginal,
    this.findingProviderFieldsTypes,
    this.firstObservedAt,
    this.generatorId,
    this.id,
    this.keyword,
    this.lastObservedAt,
    this.malwareName,
    this.malwarePath,
    this.malwareState,
    this.malwareType,
    this.networkDestinationDomain,
    this.networkDestinationIpv4,
    this.networkDestinationIpv6,
    this.networkDestinationPort,
    this.networkDirection,
    this.networkProtocol,
    this.networkSourceDomain,
    this.networkSourceIpv4,
    this.networkSourceIpv6,
    this.networkSourceMac,
    this.networkSourcePort,
    this.noteText,
    this.noteUpdatedAt,
    this.noteUpdatedBy,
    this.processLaunchedAt,
    this.processName,
    this.processParentPid,
    this.processPath,
    this.processPid,
    this.processTerminatedAt,
    this.productArn,
    this.productFields,
    this.productName,
    this.recommendationText,
    this.recordState,
    this.relatedFindingsId,
    this.relatedFindingsProductArn,
    this.resourceAwsEc2InstanceIamInstanceProfileArn,
    this.resourceAwsEc2InstanceImageId,
    this.resourceAwsEc2InstanceIpv4Addresses,
    this.resourceAwsEc2InstanceIpv6Addresses,
    this.resourceAwsEc2InstanceKeyName,
    this.resourceAwsEc2InstanceLaunchedAt,
    this.resourceAwsEc2InstanceSubnetId,
    this.resourceAwsEc2InstanceType,
    this.resourceAwsEc2InstanceVpcId,
    this.resourceAwsIamAccessKeyCreatedAt,
    this.resourceAwsIamAccessKeyStatus,
    this.resourceAwsIamAccessKeyUserName,
    this.resourceAwsS3BucketOwnerId,
    this.resourceAwsS3BucketOwnerName,
    this.resourceContainerImageId,
    this.resourceContainerImageName,
    this.resourceContainerLaunchedAt,
    this.resourceContainerName,
    this.resourceDetailsOther,
    this.resourceId,
    this.resourcePartition,
    this.resourceRegion,
    this.resourceTags,
    this.resourceType,
    this.severityLabel,
    this.sourceUrl,
    this.threatIntelIndicatorCategory,
    this.threatIntelIndicatorLastObservedAt,
    this.threatIntelIndicatorSource,
    this.threatIntelIndicatorSourceUrl,
    this.threatIntelIndicatorType,
    this.threatIntelIndicatorValue,
    this.title,
    this.type,
    this.updatedAt,
    this.userDefinedValues,
    this.verificationState,
    this.workflowStatus,
  });

  final List<SecurityhubInsightFiltersAwsAccountId>? awsAccountId;

  final List<SecurityhubInsightFiltersAwsAccountName>? awsAccountName;

  final List<SecurityhubInsightFiltersCompanyName>? companyName;

  final List<SecurityhubInsightFiltersComplianceAssociatedStandardsId>?
  complianceAssociatedStandardsId;

  final List<SecurityhubInsightFiltersComplianceSecurityControlId>?
  complianceSecurityControlId;

  final List<SecurityhubInsightFiltersComplianceSecurityControlParametersName>?
  complianceSecurityControlParametersName;

  final List<SecurityhubInsightFiltersComplianceSecurityControlParametersValue>?
  complianceSecurityControlParametersValue;

  final List<SecurityhubInsightFiltersComplianceStatus>? complianceStatus;

  final List<SecurityhubInsightFiltersConfidence>? confidence;

  final List<SecurityhubInsightFiltersCreatedAt>? createdAt;

  final List<SecurityhubInsightFiltersCriticality>? criticality;

  final List<SecurityhubInsightFiltersDescription>? description;

  final List<SecurityhubInsightFiltersFindingProviderFieldsConfidence>?
  findingProviderFieldsConfidence;

  final List<SecurityhubInsightFiltersFindingProviderFieldsCriticality>?
  findingProviderFieldsCriticality;

  final List<SecurityhubInsightFiltersFindingProviderFieldsRelatedFindingsId>?
  findingProviderFieldsRelatedFindingsId;

  final List<
    SecurityhubInsightFiltersFindingProviderFieldsRelatedFindingsProductArn
  >?
  findingProviderFieldsRelatedFindingsProductArn;

  final List<SecurityhubInsightFiltersFindingProviderFieldsSeverityLabel>?
  findingProviderFieldsSeverityLabel;

  final List<SecurityhubInsightFiltersFindingProviderFieldsSeverityOriginal>?
  findingProviderFieldsSeverityOriginal;

  final List<SecurityhubInsightFiltersFindingProviderFieldsTypes>?
  findingProviderFieldsTypes;

  final List<SecurityhubInsightFiltersFirstObservedAt>? firstObservedAt;

  final List<SecurityhubInsightFiltersGeneratorId>? generatorId;

  final List<SecurityhubInsightFiltersId>? id;

  final List<SecurityhubInsightFiltersKeyword>? keyword;

  final List<SecurityhubInsightFiltersLastObservedAt>? lastObservedAt;

  final List<SecurityhubInsightFiltersMalwareName>? malwareName;

  final List<SecurityhubInsightFiltersMalwarePath>? malwarePath;

  final List<SecurityhubInsightFiltersMalwareState>? malwareState;

  final List<SecurityhubInsightFiltersMalwareType>? malwareType;

  final List<SecurityhubInsightFiltersNetworkDestinationDomain>?
  networkDestinationDomain;

  final List<SecurityhubInsightFiltersNetworkDestinationIpv4>?
  networkDestinationIpv4;

  final List<SecurityhubInsightFiltersNetworkDestinationIpv6>?
  networkDestinationIpv6;

  final List<SecurityhubInsightFiltersNetworkDestinationPort>?
  networkDestinationPort;

  final List<SecurityhubInsightFiltersNetworkDirection>? networkDirection;

  final List<SecurityhubInsightFiltersNetworkProtocol>? networkProtocol;

  final List<SecurityhubInsightFiltersNetworkSourceDomain>? networkSourceDomain;

  final List<SecurityhubInsightFiltersNetworkSourceIpv4>? networkSourceIpv4;

  final List<SecurityhubInsightFiltersNetworkSourceIpv6>? networkSourceIpv6;

  final List<SecurityhubInsightFiltersNetworkSourceMac>? networkSourceMac;

  final List<SecurityhubInsightFiltersNetworkSourcePort>? networkSourcePort;

  final List<SecurityhubInsightFiltersNoteText>? noteText;

  final List<SecurityhubInsightFiltersNoteUpdatedAt>? noteUpdatedAt;

  final List<SecurityhubInsightFiltersNoteUpdatedBy>? noteUpdatedBy;

  final List<SecurityhubInsightFiltersProcessLaunchedAt>? processLaunchedAt;

  final List<SecurityhubInsightFiltersProcessName>? processName;

  final List<SecurityhubInsightFiltersProcessParentPid>? processParentPid;

  final List<SecurityhubInsightFiltersProcessPath>? processPath;

  final List<SecurityhubInsightFiltersProcessPid>? processPid;

  final List<SecurityhubInsightFiltersProcessTerminatedAt>? processTerminatedAt;

  final List<SecurityhubInsightFiltersProductArn>? productArn;

  final List<SecurityhubInsightFiltersProductFields>? productFields;

  final List<SecurityhubInsightFiltersProductName>? productName;

  final List<SecurityhubInsightFiltersRecommendationText>? recommendationText;

  final List<SecurityhubInsightFiltersRecordState>? recordState;

  final List<SecurityhubInsightFiltersRelatedFindingsId>? relatedFindingsId;

  final List<SecurityhubInsightFiltersRelatedFindingsProductArn>?
  relatedFindingsProductArn;

  final List<
    SecurityhubInsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn
  >?
  resourceAwsEc2InstanceIamInstanceProfileArn;

  final List<SecurityhubInsightFiltersResourceAwsEc2InstanceImageId>?
  resourceAwsEc2InstanceImageId;

  final List<SecurityhubInsightFiltersResourceAwsEc2InstanceIpv4Addresses>?
  resourceAwsEc2InstanceIpv4Addresses;

  final List<SecurityhubInsightFiltersResourceAwsEc2InstanceIpv6Addresses>?
  resourceAwsEc2InstanceIpv6Addresses;

  final List<SecurityhubInsightFiltersResourceAwsEc2InstanceKeyName>?
  resourceAwsEc2InstanceKeyName;

  final List<SecurityhubInsightFiltersResourceAwsEc2InstanceLaunchedAt>?
  resourceAwsEc2InstanceLaunchedAt;

  final List<SecurityhubInsightFiltersResourceAwsEc2InstanceSubnetId>?
  resourceAwsEc2InstanceSubnetId;

  final List<SecurityhubInsightFiltersResourceAwsEc2InstanceType>?
  resourceAwsEc2InstanceType;

  final List<SecurityhubInsightFiltersResourceAwsEc2InstanceVpcId>?
  resourceAwsEc2InstanceVpcId;

  final List<SecurityhubInsightFiltersResourceAwsIamAccessKeyCreatedAt>?
  resourceAwsIamAccessKeyCreatedAt;

  final List<SecurityhubInsightFiltersResourceAwsIamAccessKeyStatus>?
  resourceAwsIamAccessKeyStatus;

  final List<SecurityhubInsightFiltersResourceAwsIamAccessKeyUserName>?
  resourceAwsIamAccessKeyUserName;

  final List<SecurityhubInsightFiltersResourceAwsS3BucketOwnerId>?
  resourceAwsS3BucketOwnerId;

  final List<SecurityhubInsightFiltersResourceAwsS3BucketOwnerName>?
  resourceAwsS3BucketOwnerName;

  final List<SecurityhubInsightFiltersResourceContainerImageId>?
  resourceContainerImageId;

  final List<SecurityhubInsightFiltersResourceContainerImageName>?
  resourceContainerImageName;

  final List<SecurityhubInsightFiltersResourceContainerLaunchedAt>?
  resourceContainerLaunchedAt;

  final List<SecurityhubInsightFiltersResourceContainerName>?
  resourceContainerName;

  final List<SecurityhubInsightFiltersResourceDetailsOther>?
  resourceDetailsOther;

  final List<SecurityhubInsightFiltersResourceId>? resourceId;

  final List<SecurityhubInsightFiltersResourcePartition>? resourcePartition;

  final List<SecurityhubInsightFiltersResourceRegion>? resourceRegion;

  final List<SecurityhubInsightFiltersResourceTags>? resourceTags;

  final List<SecurityhubInsightFiltersResourceType>? resourceType;

  final List<SecurityhubInsightFiltersSeverityLabel>? severityLabel;

  final List<SecurityhubInsightFiltersSourceUrl>? sourceUrl;

  final List<SecurityhubInsightFiltersThreatIntelIndicatorCategory>?
  threatIntelIndicatorCategory;

  final List<SecurityhubInsightFiltersThreatIntelIndicatorLastObservedAt>?
  threatIntelIndicatorLastObservedAt;

  final List<SecurityhubInsightFiltersThreatIntelIndicatorSource>?
  threatIntelIndicatorSource;

  final List<SecurityhubInsightFiltersThreatIntelIndicatorSourceUrl>?
  threatIntelIndicatorSourceUrl;

  final List<SecurityhubInsightFiltersThreatIntelIndicatorType>?
  threatIntelIndicatorType;

  final List<SecurityhubInsightFiltersThreatIntelIndicatorValue>?
  threatIntelIndicatorValue;

  final List<SecurityhubInsightFiltersTitle>? title;

  final List<SecurityhubInsightFiltersType>? type;

  final List<SecurityhubInsightFiltersUpdatedAt>? updatedAt;

  final List<SecurityhubInsightFiltersUserDefinedValues>? userDefinedValues;

  final List<SecurityhubInsightFiltersVerificationState>? verificationState;

  final List<SecurityhubInsightFiltersWorkflowStatus>? workflowStatus;

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
    if (complianceSecurityControlParametersName != null)
      'compliance_security_control_parameters_name': [
        for (final e in complianceSecurityControlParametersName!) e.encode(),
      ],
    if (complianceSecurityControlParametersValue != null)
      'compliance_security_control_parameters_value': [
        for (final e in complianceSecurityControlParametersValue!) e.encode(),
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
    if (findingProviderFieldsConfidence != null)
      'finding_provider_fields_confidence': [
        for (final e in findingProviderFieldsConfidence!) e.encode(),
      ],
    if (findingProviderFieldsCriticality != null)
      'finding_provider_fields_criticality': [
        for (final e in findingProviderFieldsCriticality!) e.encode(),
      ],
    if (findingProviderFieldsRelatedFindingsId != null)
      'finding_provider_fields_related_findings_id': [
        for (final e in findingProviderFieldsRelatedFindingsId!) e.encode(),
      ],
    if (findingProviderFieldsRelatedFindingsProductArn != null)
      'finding_provider_fields_related_findings_product_arn': [
        for (final e in findingProviderFieldsRelatedFindingsProductArn!)
          e.encode(),
      ],
    if (findingProviderFieldsSeverityLabel != null)
      'finding_provider_fields_severity_label': [
        for (final e in findingProviderFieldsSeverityLabel!) e.encode(),
      ],
    if (findingProviderFieldsSeverityOriginal != null)
      'finding_provider_fields_severity_original': [
        for (final e in findingProviderFieldsSeverityOriginal!) e.encode(),
      ],
    if (findingProviderFieldsTypes != null)
      'finding_provider_fields_types': [
        for (final e in findingProviderFieldsTypes!) e.encode(),
      ],
    if (firstObservedAt != null)
      'first_observed_at': [for (final e in firstObservedAt!) e.encode()],
    if (generatorId != null)
      'generator_id': [for (final e in generatorId!) e.encode()],
    if (id != null) 'id': [for (final e in id!) e.encode()],
    if (keyword != null) 'keyword': [for (final e in keyword!) e.encode()],
    if (lastObservedAt != null)
      'last_observed_at': [for (final e in lastObservedAt!) e.encode()],
    if (malwareName != null)
      'malware_name': [for (final e in malwareName!) e.encode()],
    if (malwarePath != null)
      'malware_path': [for (final e in malwarePath!) e.encode()],
    if (malwareState != null)
      'malware_state': [for (final e in malwareState!) e.encode()],
    if (malwareType != null)
      'malware_type': [for (final e in malwareType!) e.encode()],
    if (networkDestinationDomain != null)
      'network_destination_domain': [
        for (final e in networkDestinationDomain!) e.encode(),
      ],
    if (networkDestinationIpv4 != null)
      'network_destination_ipv4': [
        for (final e in networkDestinationIpv4!) e.encode(),
      ],
    if (networkDestinationIpv6 != null)
      'network_destination_ipv6': [
        for (final e in networkDestinationIpv6!) e.encode(),
      ],
    if (networkDestinationPort != null)
      'network_destination_port': [
        for (final e in networkDestinationPort!) e.encode(),
      ],
    if (networkDirection != null)
      'network_direction': [for (final e in networkDirection!) e.encode()],
    if (networkProtocol != null)
      'network_protocol': [for (final e in networkProtocol!) e.encode()],
    if (networkSourceDomain != null)
      'network_source_domain': [
        for (final e in networkSourceDomain!) e.encode(),
      ],
    if (networkSourceIpv4 != null)
      'network_source_ipv4': [for (final e in networkSourceIpv4!) e.encode()],
    if (networkSourceIpv6 != null)
      'network_source_ipv6': [for (final e in networkSourceIpv6!) e.encode()],
    if (networkSourceMac != null)
      'network_source_mac': [for (final e in networkSourceMac!) e.encode()],
    if (networkSourcePort != null)
      'network_source_port': [for (final e in networkSourcePort!) e.encode()],
    if (noteText != null) 'note_text': [for (final e in noteText!) e.encode()],
    if (noteUpdatedAt != null)
      'note_updated_at': [for (final e in noteUpdatedAt!) e.encode()],
    if (noteUpdatedBy != null)
      'note_updated_by': [for (final e in noteUpdatedBy!) e.encode()],
    if (processLaunchedAt != null)
      'process_launched_at': [for (final e in processLaunchedAt!) e.encode()],
    if (processName != null)
      'process_name': [for (final e in processName!) e.encode()],
    if (processParentPid != null)
      'process_parent_pid': [for (final e in processParentPid!) e.encode()],
    if (processPath != null)
      'process_path': [for (final e in processPath!) e.encode()],
    if (processPid != null)
      'process_pid': [for (final e in processPid!) e.encode()],
    if (processTerminatedAt != null)
      'process_terminated_at': [
        for (final e in processTerminatedAt!) e.encode(),
      ],
    if (productArn != null)
      'product_arn': [for (final e in productArn!) e.encode()],
    if (productFields != null)
      'product_fields': [for (final e in productFields!) e.encode()],
    if (productName != null)
      'product_name': [for (final e in productName!) e.encode()],
    if (recommendationText != null)
      'recommendation_text': [for (final e in recommendationText!) e.encode()],
    if (recordState != null)
      'record_state': [for (final e in recordState!) e.encode()],
    if (relatedFindingsId != null)
      'related_findings_id': [for (final e in relatedFindingsId!) e.encode()],
    if (relatedFindingsProductArn != null)
      'related_findings_product_arn': [
        for (final e in relatedFindingsProductArn!) e.encode(),
      ],
    if (resourceAwsEc2InstanceIamInstanceProfileArn != null)
      'resource_aws_ec2_instance_iam_instance_profile_arn': [
        for (final e in resourceAwsEc2InstanceIamInstanceProfileArn!)
          e.encode(),
      ],
    if (resourceAwsEc2InstanceImageId != null)
      'resource_aws_ec2_instance_image_id': [
        for (final e in resourceAwsEc2InstanceImageId!) e.encode(),
      ],
    if (resourceAwsEc2InstanceIpv4Addresses != null)
      'resource_aws_ec2_instance_ipv4_addresses': [
        for (final e in resourceAwsEc2InstanceIpv4Addresses!) e.encode(),
      ],
    if (resourceAwsEc2InstanceIpv6Addresses != null)
      'resource_aws_ec2_instance_ipv6_addresses': [
        for (final e in resourceAwsEc2InstanceIpv6Addresses!) e.encode(),
      ],
    if (resourceAwsEc2InstanceKeyName != null)
      'resource_aws_ec2_instance_key_name': [
        for (final e in resourceAwsEc2InstanceKeyName!) e.encode(),
      ],
    if (resourceAwsEc2InstanceLaunchedAt != null)
      'resource_aws_ec2_instance_launched_at': [
        for (final e in resourceAwsEc2InstanceLaunchedAt!) e.encode(),
      ],
    if (resourceAwsEc2InstanceSubnetId != null)
      'resource_aws_ec2_instance_subnet_id': [
        for (final e in resourceAwsEc2InstanceSubnetId!) e.encode(),
      ],
    if (resourceAwsEc2InstanceType != null)
      'resource_aws_ec2_instance_type': [
        for (final e in resourceAwsEc2InstanceType!) e.encode(),
      ],
    if (resourceAwsEc2InstanceVpcId != null)
      'resource_aws_ec2_instance_vpc_id': [
        for (final e in resourceAwsEc2InstanceVpcId!) e.encode(),
      ],
    if (resourceAwsIamAccessKeyCreatedAt != null)
      'resource_aws_iam_access_key_created_at': [
        for (final e in resourceAwsIamAccessKeyCreatedAt!) e.encode(),
      ],
    if (resourceAwsIamAccessKeyStatus != null)
      'resource_aws_iam_access_key_status': [
        for (final e in resourceAwsIamAccessKeyStatus!) e.encode(),
      ],
    if (resourceAwsIamAccessKeyUserName != null)
      'resource_aws_iam_access_key_user_name': [
        for (final e in resourceAwsIamAccessKeyUserName!) e.encode(),
      ],
    if (resourceAwsS3BucketOwnerId != null)
      'resource_aws_s3_bucket_owner_id': [
        for (final e in resourceAwsS3BucketOwnerId!) e.encode(),
      ],
    if (resourceAwsS3BucketOwnerName != null)
      'resource_aws_s3_bucket_owner_name': [
        for (final e in resourceAwsS3BucketOwnerName!) e.encode(),
      ],
    if (resourceContainerImageId != null)
      'resource_container_image_id': [
        for (final e in resourceContainerImageId!) e.encode(),
      ],
    if (resourceContainerImageName != null)
      'resource_container_image_name': [
        for (final e in resourceContainerImageName!) e.encode(),
      ],
    if (resourceContainerLaunchedAt != null)
      'resource_container_launched_at': [
        for (final e in resourceContainerLaunchedAt!) e.encode(),
      ],
    if (resourceContainerName != null)
      'resource_container_name': [
        for (final e in resourceContainerName!) e.encode(),
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
    if (threatIntelIndicatorCategory != null)
      'threat_intel_indicator_category': [
        for (final e in threatIntelIndicatorCategory!) e.encode(),
      ],
    if (threatIntelIndicatorLastObservedAt != null)
      'threat_intel_indicator_last_observed_at': [
        for (final e in threatIntelIndicatorLastObservedAt!) e.encode(),
      ],
    if (threatIntelIndicatorSource != null)
      'threat_intel_indicator_source': [
        for (final e in threatIntelIndicatorSource!) e.encode(),
      ],
    if (threatIntelIndicatorSourceUrl != null)
      'threat_intel_indicator_source_url': [
        for (final e in threatIntelIndicatorSourceUrl!) e.encode(),
      ],
    if (threatIntelIndicatorType != null)
      'threat_intel_indicator_type': [
        for (final e in threatIntelIndicatorType!) e.encode(),
      ],
    if (threatIntelIndicatorValue != null)
      'threat_intel_indicator_value': [
        for (final e in threatIntelIndicatorValue!) e.encode(),
      ],
    if (title != null) 'title': [for (final e in title!) e.encode()],
    if (type != null) 'type': [for (final e in type!) e.encode()],
    if (updatedAt != null)
      'updated_at': [for (final e in updatedAt!) e.encode()],
    if (userDefinedValues != null)
      'user_defined_values': [for (final e in userDefinedValues!) e.encode()],
    if (verificationState != null)
      'verification_state': [for (final e in verificationState!) e.encode()],
    if (workflowStatus != null)
      'workflow_status': [for (final e in workflowStatus!) e.encode()],
  };
}

/// Typed helper for the `filters.aws_account_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersAwsAccountId {
  const SecurityhubInsightFiltersAwsAccountId({
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

/// Typed helper for the `filters.aws_account_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersAwsAccountName {
  const SecurityhubInsightFiltersAwsAccountName({
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

/// Typed helper for the `filters.company_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersCompanyName {
  const SecurityhubInsightFiltersCompanyName({
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

/// Typed helper for the `filters.compliance_associated_standards_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersComplianceAssociatedStandardsId {
  const SecurityhubInsightFiltersComplianceAssociatedStandardsId({
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

/// Typed helper for the `filters.compliance_security_control_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersComplianceSecurityControlId {
  const SecurityhubInsightFiltersComplianceSecurityControlId({
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

/// Typed helper for the `filters.compliance_security_control_parameters_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersComplianceSecurityControlParametersName {
  const SecurityhubInsightFiltersComplianceSecurityControlParametersName({
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

/// Typed helper for the `filters.compliance_security_control_parameters_value` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersComplianceSecurityControlParametersValue {
  const SecurityhubInsightFiltersComplianceSecurityControlParametersValue({
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

/// Typed helper for the `filters.compliance_status` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersComplianceStatus {
  const SecurityhubInsightFiltersComplianceStatus({
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

/// Typed helper for the `filters.confidence` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersConfidence {
  const SecurityhubInsightFiltersConfidence({this.eq, this.gte, this.lte});

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `filters.created_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersCreatedAt {
  const SecurityhubInsightFiltersCreatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersCreatedAtDateRange? dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.created_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersCreatedAtDateRange {
  const SecurityhubInsightFiltersCreatedAtDateRange({
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

/// Typed helper for the `filters.criticality` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersCriticality {
  const SecurityhubInsightFiltersCriticality({this.eq, this.gte, this.lte});

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `filters.description` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersDescription {
  const SecurityhubInsightFiltersDescription({
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

/// Typed helper for the `filters.finding_provider_fields_confidence` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersFindingProviderFieldsConfidence {
  const SecurityhubInsightFiltersFindingProviderFieldsConfidence({
    this.eq,
    this.gte,
    this.lte,
  });

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `filters.finding_provider_fields_criticality` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersFindingProviderFieldsCriticality {
  const SecurityhubInsightFiltersFindingProviderFieldsCriticality({
    this.eq,
    this.gte,
    this.lte,
  });

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `filters.finding_provider_fields_related_findings_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersFindingProviderFieldsRelatedFindingsId {
  const SecurityhubInsightFiltersFindingProviderFieldsRelatedFindingsId({
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

/// Typed helper for the `filters.finding_provider_fields_related_findings_product_arn` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersFindingProviderFieldsRelatedFindingsProductArn {
  const SecurityhubInsightFiltersFindingProviderFieldsRelatedFindingsProductArn({
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

/// Typed helper for the `filters.finding_provider_fields_severity_label` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersFindingProviderFieldsSeverityLabel {
  const SecurityhubInsightFiltersFindingProviderFieldsSeverityLabel({
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

/// Typed helper for the `filters.finding_provider_fields_severity_original` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersFindingProviderFieldsSeverityOriginal {
  const SecurityhubInsightFiltersFindingProviderFieldsSeverityOriginal({
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

/// Typed helper for the `filters.finding_provider_fields_types` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersFindingProviderFieldsTypes {
  const SecurityhubInsightFiltersFindingProviderFieldsTypes({
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

/// Typed helper for the `filters.first_observed_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersFirstObservedAt {
  const SecurityhubInsightFiltersFirstObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersFirstObservedAtDateRange? dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.first_observed_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersFirstObservedAtDateRange {
  const SecurityhubInsightFiltersFirstObservedAtDateRange({
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

/// Typed helper for the `filters.generator_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersGeneratorId {
  const SecurityhubInsightFiltersGeneratorId({
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

/// Typed helper for the `filters.id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersId {
  const SecurityhubInsightFiltersId({
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

/// Typed helper for the `filters.keyword` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersKeyword {
  const SecurityhubInsightFiltersKeyword({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `filters.last_observed_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersLastObservedAt {
  const SecurityhubInsightFiltersLastObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersLastObservedAtDateRange? dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.last_observed_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersLastObservedAtDateRange {
  const SecurityhubInsightFiltersLastObservedAtDateRange({
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

/// Typed helper for the `filters.malware_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersMalwareName {
  const SecurityhubInsightFiltersMalwareName({
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

/// Typed helper for the `filters.malware_path` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersMalwarePath {
  const SecurityhubInsightFiltersMalwarePath({
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

/// Typed helper for the `filters.malware_state` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersMalwareState {
  const SecurityhubInsightFiltersMalwareState({
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

/// Typed helper for the `filters.malware_type` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersMalwareType {
  const SecurityhubInsightFiltersMalwareType({
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

/// Typed helper for the `filters.network_destination_domain` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkDestinationDomain {
  const SecurityhubInsightFiltersNetworkDestinationDomain({
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

/// Typed helper for the `filters.network_destination_ipv4` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkDestinationIpv4 {
  const SecurityhubInsightFiltersNetworkDestinationIpv4({required this.cidr});

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.network_destination_ipv6` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkDestinationIpv6 {
  const SecurityhubInsightFiltersNetworkDestinationIpv6({required this.cidr});

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.network_destination_port` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkDestinationPort {
  const SecurityhubInsightFiltersNetworkDestinationPort({
    this.eq,
    this.gte,
    this.lte,
  });

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `filters.network_direction` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkDirection {
  const SecurityhubInsightFiltersNetworkDirection({
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

/// Typed helper for the `filters.network_protocol` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkProtocol {
  const SecurityhubInsightFiltersNetworkProtocol({
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

/// Typed helper for the `filters.network_source_domain` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkSourceDomain {
  const SecurityhubInsightFiltersNetworkSourceDomain({
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

/// Typed helper for the `filters.network_source_ipv4` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkSourceIpv4 {
  const SecurityhubInsightFiltersNetworkSourceIpv4({required this.cidr});

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.network_source_ipv6` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkSourceIpv6 {
  const SecurityhubInsightFiltersNetworkSourceIpv6({required this.cidr});

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.network_source_mac` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkSourceMac {
  const SecurityhubInsightFiltersNetworkSourceMac({
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

/// Typed helper for the `filters.network_source_port` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNetworkSourcePort {
  const SecurityhubInsightFiltersNetworkSourcePort({
    this.eq,
    this.gte,
    this.lte,
  });

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `filters.note_text` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNoteText {
  const SecurityhubInsightFiltersNoteText({
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

/// Typed helper for the `filters.note_updated_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNoteUpdatedAt {
  const SecurityhubInsightFiltersNoteUpdatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersNoteUpdatedAtDateRange? dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.note_updated_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNoteUpdatedAtDateRange {
  const SecurityhubInsightFiltersNoteUpdatedAtDateRange({
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

/// Typed helper for the `filters.note_updated_by` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersNoteUpdatedBy {
  const SecurityhubInsightFiltersNoteUpdatedBy({
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

/// Typed helper for the `filters.process_launched_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProcessLaunchedAt {
  const SecurityhubInsightFiltersProcessLaunchedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersProcessLaunchedAtDateRange? dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.process_launched_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProcessLaunchedAtDateRange {
  const SecurityhubInsightFiltersProcessLaunchedAtDateRange({
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

/// Typed helper for the `filters.process_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProcessName {
  const SecurityhubInsightFiltersProcessName({
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

/// Typed helper for the `filters.process_parent_pid` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProcessParentPid {
  const SecurityhubInsightFiltersProcessParentPid({
    this.eq,
    this.gte,
    this.lte,
  });

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `filters.process_path` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProcessPath {
  const SecurityhubInsightFiltersProcessPath({
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

/// Typed helper for the `filters.process_pid` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProcessPid {
  const SecurityhubInsightFiltersProcessPid({this.eq, this.gte, this.lte});

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    if (eq != null) 'eq': eq!.toTfJson(),
    if (gte != null) 'gte': gte!.toTfJson(),
    if (lte != null) 'lte': lte!.toTfJson(),
  };
}

/// Typed helper for the `filters.process_terminated_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProcessTerminatedAt {
  const SecurityhubInsightFiltersProcessTerminatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersProcessTerminatedAtDateRange? dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.process_terminated_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProcessTerminatedAtDateRange {
  const SecurityhubInsightFiltersProcessTerminatedAtDateRange({
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

/// Typed helper for the `filters.product_arn` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProductArn {
  const SecurityhubInsightFiltersProductArn({
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

/// Typed helper for the `filters.product_fields` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProductFields {
  const SecurityhubInsightFiltersProductFields({
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

/// Typed helper for the `filters.product_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersProductName {
  const SecurityhubInsightFiltersProductName({
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

/// Typed helper for the `filters.recommendation_text` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersRecommendationText {
  const SecurityhubInsightFiltersRecommendationText({
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

/// Typed helper for the `filters.record_state` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersRecordState {
  const SecurityhubInsightFiltersRecordState({
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

/// Typed helper for the `filters.related_findings_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersRelatedFindingsId {
  const SecurityhubInsightFiltersRelatedFindingsId({
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

/// Typed helper for the `filters.related_findings_product_arn` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersRelatedFindingsProductArn {
  const SecurityhubInsightFiltersRelatedFindingsProductArn({
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

/// Typed helper for the `filters.resource_aws_ec2_instance_iam_instance_profile_arn` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceIamInstanceProfileArn({
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

/// Typed helper for the `filters.resource_aws_ec2_instance_image_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceImageId {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceImageId({
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

/// Typed helper for the `filters.resource_aws_ec2_instance_ipv4_addresses` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceIpv4Addresses {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceIpv4Addresses({
    required this.cidr,
  });

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.resource_aws_ec2_instance_ipv6_addresses` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceIpv6Addresses {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceIpv6Addresses({
    required this.cidr,
  });

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.resource_aws_ec2_instance_key_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceKeyName {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceKeyName({
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

/// Typed helper for the `filters.resource_aws_ec2_instance_launched_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceLaunchedAt {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceLaunchedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersResourceAwsEc2InstanceLaunchedAtDateRange?
  dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.resource_aws_ec2_instance_launched_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceLaunchedAtDateRange {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceLaunchedAtDateRange({
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

/// Typed helper for the `filters.resource_aws_ec2_instance_subnet_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceSubnetId {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceSubnetId({
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

/// Typed helper for the `filters.resource_aws_ec2_instance_type` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceType {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceType({
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

/// Typed helper for the `filters.resource_aws_ec2_instance_vpc_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsEc2InstanceVpcId {
  const SecurityhubInsightFiltersResourceAwsEc2InstanceVpcId({
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

/// Typed helper for the `filters.resource_aws_iam_access_key_created_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsIamAccessKeyCreatedAt {
  const SecurityhubInsightFiltersResourceAwsIamAccessKeyCreatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange?
  dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.resource_aws_iam_access_key_created_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange {
  const SecurityhubInsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange({
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

/// Typed helper for the `filters.resource_aws_iam_access_key_status` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsIamAccessKeyStatus {
  const SecurityhubInsightFiltersResourceAwsIamAccessKeyStatus({
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

/// Typed helper for the `filters.resource_aws_iam_access_key_user_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsIamAccessKeyUserName {
  const SecurityhubInsightFiltersResourceAwsIamAccessKeyUserName({
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

/// Typed helper for the `filters.resource_aws_s3_bucket_owner_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsS3BucketOwnerId {
  const SecurityhubInsightFiltersResourceAwsS3BucketOwnerId({
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

/// Typed helper for the `filters.resource_aws_s3_bucket_owner_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceAwsS3BucketOwnerName {
  const SecurityhubInsightFiltersResourceAwsS3BucketOwnerName({
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

/// Typed helper for the `filters.resource_container_image_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceContainerImageId {
  const SecurityhubInsightFiltersResourceContainerImageId({
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

/// Typed helper for the `filters.resource_container_image_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceContainerImageName {
  const SecurityhubInsightFiltersResourceContainerImageName({
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

/// Typed helper for the `filters.resource_container_launched_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceContainerLaunchedAt {
  const SecurityhubInsightFiltersResourceContainerLaunchedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersResourceContainerLaunchedAtDateRange?
  dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.resource_container_launched_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceContainerLaunchedAtDateRange {
  const SecurityhubInsightFiltersResourceContainerLaunchedAtDateRange({
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

/// Typed helper for the `filters.resource_container_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceContainerName {
  const SecurityhubInsightFiltersResourceContainerName({
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

/// Typed helper for the `filters.resource_details_other` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceDetailsOther {
  const SecurityhubInsightFiltersResourceDetailsOther({
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

/// Typed helper for the `filters.resource_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceId {
  const SecurityhubInsightFiltersResourceId({
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

/// Typed helper for the `filters.resource_partition` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourcePartition {
  const SecurityhubInsightFiltersResourcePartition({
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

/// Typed helper for the `filters.resource_region` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceRegion {
  const SecurityhubInsightFiltersResourceRegion({
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

/// Typed helper for the `filters.resource_tags` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceTags {
  const SecurityhubInsightFiltersResourceTags({
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

/// Typed helper for the `filters.resource_type` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersResourceType {
  const SecurityhubInsightFiltersResourceType({
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

/// Typed helper for the `filters.severity_label` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersSeverityLabel {
  const SecurityhubInsightFiltersSeverityLabel({
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

/// Typed helper for the `filters.source_url` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersSourceUrl {
  const SecurityhubInsightFiltersSourceUrl({
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

/// Typed helper for the `filters.threat_intel_indicator_category` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersThreatIntelIndicatorCategory {
  const SecurityhubInsightFiltersThreatIntelIndicatorCategory({
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

/// Typed helper for the `filters.threat_intel_indicator_last_observed_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersThreatIntelIndicatorLastObservedAt {
  const SecurityhubInsightFiltersThreatIntelIndicatorLastObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersThreatIntelIndicatorLastObservedAtDateRange?
  dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.threat_intel_indicator_last_observed_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersThreatIntelIndicatorLastObservedAtDateRange {
  const SecurityhubInsightFiltersThreatIntelIndicatorLastObservedAtDateRange({
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

/// Typed helper for the `filters.threat_intel_indicator_source` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersThreatIntelIndicatorSource {
  const SecurityhubInsightFiltersThreatIntelIndicatorSource({
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

/// Typed helper for the `filters.threat_intel_indicator_source_url` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersThreatIntelIndicatorSourceUrl {
  const SecurityhubInsightFiltersThreatIntelIndicatorSourceUrl({
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

/// Typed helper for the `filters.threat_intel_indicator_type` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersThreatIntelIndicatorType {
  const SecurityhubInsightFiltersThreatIntelIndicatorType({
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

/// Typed helper for the `filters.threat_intel_indicator_value` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersThreatIntelIndicatorValue {
  const SecurityhubInsightFiltersThreatIntelIndicatorValue({
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

/// Typed helper for the `filters.title` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersTitle {
  const SecurityhubInsightFiltersTitle({
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

/// Typed helper for the `filters.type` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersType {
  const SecurityhubInsightFiltersType({
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

/// Typed helper for the `filters.updated_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersUpdatedAt {
  const SecurityhubInsightFiltersUpdatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightFiltersUpdatedAtDateRange? dateRange;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
    if (dateRange != null) 'date_range': dateRange!.encode(),
  };
}

/// Typed helper for the `filters.updated_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersUpdatedAtDateRange {
  const SecurityhubInsightFiltersUpdatedAtDateRange({
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

/// Typed helper for the `filters.user_defined_values` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersUserDefinedValues {
  const SecurityhubInsightFiltersUserDefinedValues({
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

/// Typed helper for the `filters.verification_state` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersVerificationState {
  const SecurityhubInsightFiltersVerificationState({
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

/// Typed helper for the `filters.workflow_status` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFiltersWorkflowStatus {
  const SecurityhubInsightFiltersWorkflowStatus({
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

/// Factory wrapper for `aws_securityhub_insight`.
final class AwsSecurityhubInsight extends Resource {
  static const String tfType = 'aws_securityhub_insight';

  AwsSecurityhubInsight({
    required super.localName,
    required TfArg<String> groupByAttribute,
    required TfArg<String> name,
    TfArg<String>? region,
    required SecurityhubInsightFilters filters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_by_attribute': groupByAttribute,
           'name': name,
           if (region != null) 'region': region,
           'filters': TfArg.literal(filters.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubInsightSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
