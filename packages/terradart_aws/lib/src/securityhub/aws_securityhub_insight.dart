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

  final List<SecurityhubInsightAwsAccountId>? awsAccountId;

  final List<SecurityhubInsightAwsAccountName>? awsAccountName;

  final List<SecurityhubInsightCompanyName>? companyName;

  final List<SecurityhubInsightComplianceAssociatedStandardsId>?
  complianceAssociatedStandardsId;

  final List<SecurityhubInsightComplianceSecurityControlId>?
  complianceSecurityControlId;

  final List<SecurityhubInsightComplianceSecurityControlParametersName>?
  complianceSecurityControlParametersName;

  final List<SecurityhubInsightComplianceSecurityControlParametersValue>?
  complianceSecurityControlParametersValue;

  final List<SecurityhubInsightComplianceStatus>? complianceStatus;

  final List<SecurityhubInsightConfidence>? confidence;

  final List<SecurityhubInsightCreatedAt>? createdAt;

  final List<SecurityhubInsightCriticality>? criticality;

  final List<SecurityhubInsightDescription>? description;

  final List<SecurityhubInsightFindingProviderFieldsConfidence>?
  findingProviderFieldsConfidence;

  final List<SecurityhubInsightFindingProviderFieldsCriticality>?
  findingProviderFieldsCriticality;

  final List<SecurityhubInsightFindingProviderFieldsRelatedFindingsId>?
  findingProviderFieldsRelatedFindingsId;

  final List<SecurityhubInsightFindingProviderFieldsRelatedFindingsProductArn>?
  findingProviderFieldsRelatedFindingsProductArn;

  final List<SecurityhubInsightFindingProviderFieldsSeverityLabel>?
  findingProviderFieldsSeverityLabel;

  final List<SecurityhubInsightFindingProviderFieldsSeverityOriginal>?
  findingProviderFieldsSeverityOriginal;

  final List<SecurityhubInsightFindingProviderFieldsTypes>?
  findingProviderFieldsTypes;

  final List<SecurityhubInsightFirstObservedAt>? firstObservedAt;

  final List<SecurityhubInsightGeneratorId>? generatorId;

  final List<SecurityhubInsightFiltersId>? id;

  final List<SecurityhubInsightKeyword>? keyword;

  final List<SecurityhubInsightLastObservedAt>? lastObservedAt;

  final List<SecurityhubInsightMalwareName>? malwareName;

  final List<SecurityhubInsightMalwarePath>? malwarePath;

  final List<SecurityhubInsightMalwareState>? malwareState;

  final List<SecurityhubInsightMalwareType>? malwareType;

  final List<SecurityhubInsightNetworkDestinationDomain>?
  networkDestinationDomain;

  final List<SecurityhubInsightNetworkDestinationIpv4>? networkDestinationIpv4;

  final List<SecurityhubInsightNetworkDestinationIpv6>? networkDestinationIpv6;

  final List<SecurityhubInsightNetworkDestinationPort>? networkDestinationPort;

  final List<SecurityhubInsightNetworkDirection>? networkDirection;

  final List<SecurityhubInsightNetworkProtocol>? networkProtocol;

  final List<SecurityhubInsightNetworkSourceDomain>? networkSourceDomain;

  final List<SecurityhubInsightNetworkSourceIpv4>? networkSourceIpv4;

  final List<SecurityhubInsightNetworkSourceIpv6>? networkSourceIpv6;

  final List<SecurityhubInsightNetworkSourceMac>? networkSourceMac;

  final List<SecurityhubInsightNetworkSourcePort>? networkSourcePort;

  final List<SecurityhubInsightNoteText>? noteText;

  final List<SecurityhubInsightNoteUpdatedAt>? noteUpdatedAt;

  final List<SecurityhubInsightNoteUpdatedBy>? noteUpdatedBy;

  final List<SecurityhubInsightProcessLaunchedAt>? processLaunchedAt;

  final List<SecurityhubInsightProcessName>? processName;

  final List<SecurityhubInsightProcessParentPid>? processParentPid;

  final List<SecurityhubInsightProcessPath>? processPath;

  final List<SecurityhubInsightProcessPid>? processPid;

  final List<SecurityhubInsightProcessTerminatedAt>? processTerminatedAt;

  final List<SecurityhubInsightProductArn>? productArn;

  final List<SecurityhubInsightProductFields>? productFields;

  final List<SecurityhubInsightProductName>? productName;

  final List<SecurityhubInsightRecommendationText>? recommendationText;

  final List<SecurityhubInsightRecordState>? recordState;

  final List<SecurityhubInsightRelatedFindingsId>? relatedFindingsId;

  final List<SecurityhubInsightRelatedFindingsProductArn>?
  relatedFindingsProductArn;

  final List<SecurityhubInsightResourceAwsEc2InstanceIamInstanceProfileArn>?
  resourceAwsEc2InstanceIamInstanceProfileArn;

  final List<SecurityhubInsightResourceAwsEc2InstanceImageId>?
  resourceAwsEc2InstanceImageId;

  final List<SecurityhubInsightResourceAwsEc2InstanceIpv4Addresses>?
  resourceAwsEc2InstanceIpv4Addresses;

  final List<SecurityhubInsightResourceAwsEc2InstanceIpv6Addresses>?
  resourceAwsEc2InstanceIpv6Addresses;

  final List<SecurityhubInsightResourceAwsEc2InstanceKeyName>?
  resourceAwsEc2InstanceKeyName;

  final List<SecurityhubInsightResourceAwsEc2InstanceLaunchedAt>?
  resourceAwsEc2InstanceLaunchedAt;

  final List<SecurityhubInsightResourceAwsEc2InstanceSubnetId>?
  resourceAwsEc2InstanceSubnetId;

  final List<SecurityhubInsightResourceAwsEc2InstanceType>?
  resourceAwsEc2InstanceType;

  final List<SecurityhubInsightResourceAwsEc2InstanceVpcId>?
  resourceAwsEc2InstanceVpcId;

  final List<SecurityhubInsightResourceAwsIamAccessKeyCreatedAt>?
  resourceAwsIamAccessKeyCreatedAt;

  final List<SecurityhubInsightResourceAwsIamAccessKeyStatus>?
  resourceAwsIamAccessKeyStatus;

  final List<SecurityhubInsightResourceAwsIamAccessKeyUserName>?
  resourceAwsIamAccessKeyUserName;

  final List<SecurityhubInsightResourceAwsS3BucketOwnerId>?
  resourceAwsS3BucketOwnerId;

  final List<SecurityhubInsightResourceAwsS3BucketOwnerName>?
  resourceAwsS3BucketOwnerName;

  final List<SecurityhubInsightResourceContainerImageId>?
  resourceContainerImageId;

  final List<SecurityhubInsightResourceContainerImageName>?
  resourceContainerImageName;

  final List<SecurityhubInsightResourceContainerLaunchedAt>?
  resourceContainerLaunchedAt;

  final List<SecurityhubInsightResourceContainerName>? resourceContainerName;

  final List<SecurityhubInsightResourceDetailsOther>? resourceDetailsOther;

  final List<SecurityhubInsightResourceId>? resourceId;

  final List<SecurityhubInsightResourcePartition>? resourcePartition;

  final List<SecurityhubInsightResourceRegion>? resourceRegion;

  final List<SecurityhubInsightResourceTags>? resourceTags;

  final List<SecurityhubInsightResourceType>? resourceType;

  final List<SecurityhubInsightSeverityLabel>? severityLabel;

  final List<SecurityhubInsightSourceUrl>? sourceUrl;

  final List<SecurityhubInsightThreatIntelIndicatorCategory>?
  threatIntelIndicatorCategory;

  final List<SecurityhubInsightThreatIntelIndicatorLastObservedAt>?
  threatIntelIndicatorLastObservedAt;

  final List<SecurityhubInsightThreatIntelIndicatorSource>?
  threatIntelIndicatorSource;

  final List<SecurityhubInsightThreatIntelIndicatorSourceUrl>?
  threatIntelIndicatorSourceUrl;

  final List<SecurityhubInsightThreatIntelIndicatorType>?
  threatIntelIndicatorType;

  final List<SecurityhubInsightThreatIntelIndicatorValue>?
  threatIntelIndicatorValue;

  final List<SecurityhubInsightTitle>? title;

  final List<SecurityhubInsightType>? type;

  final List<SecurityhubInsightUpdatedAt>? updatedAt;

  final List<SecurityhubInsightUserDefinedValues>? userDefinedValues;

  final List<SecurityhubInsightVerificationState>? verificationState;

  final List<SecurityhubInsightWorkflowStatus>? workflowStatus;

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
final class SecurityhubInsightAwsAccountId {
  const SecurityhubInsightAwsAccountId({
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
final class SecurityhubInsightAwsAccountName {
  const SecurityhubInsightAwsAccountName({
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
final class SecurityhubInsightCompanyName {
  const SecurityhubInsightCompanyName({
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
final class SecurityhubInsightComplianceAssociatedStandardsId {
  const SecurityhubInsightComplianceAssociatedStandardsId({
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
final class SecurityhubInsightComplianceSecurityControlId {
  const SecurityhubInsightComplianceSecurityControlId({
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
final class SecurityhubInsightComplianceSecurityControlParametersName {
  const SecurityhubInsightComplianceSecurityControlParametersName({
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
final class SecurityhubInsightComplianceSecurityControlParametersValue {
  const SecurityhubInsightComplianceSecurityControlParametersValue({
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
final class SecurityhubInsightComplianceStatus {
  const SecurityhubInsightComplianceStatus({
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
final class SecurityhubInsightConfidence {
  const SecurityhubInsightConfidence({this.eq, this.gte, this.lte});

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    'eq': ?eq?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lte': ?lte?.toTfJson(),
  };
}

/// Typed helper for the `filters.created_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightCreatedAt {
  const SecurityhubInsightCreatedAt({this.end, this.start, this.dateRange});

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.created_at.date_range` block of
/// `aws_securityhub_insight` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SecurityhubInsightDateRange {
  const SecurityhubInsightDateRange({required this.unit, required this.value});

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
final class SecurityhubInsightCriticality {
  const SecurityhubInsightCriticality({this.eq, this.gte, this.lte});

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    'eq': ?eq?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lte': ?lte?.toTfJson(),
  };
}

/// Typed helper for the `filters.description` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightDescription {
  const SecurityhubInsightDescription({
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
final class SecurityhubInsightFindingProviderFieldsConfidence {
  const SecurityhubInsightFindingProviderFieldsConfidence({
    this.eq,
    this.gte,
    this.lte,
  });

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    'eq': ?eq?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lte': ?lte?.toTfJson(),
  };
}

/// Typed helper for the `filters.finding_provider_fields_criticality` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFindingProviderFieldsCriticality {
  const SecurityhubInsightFindingProviderFieldsCriticality({
    this.eq,
    this.gte,
    this.lte,
  });

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    'eq': ?eq?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lte': ?lte?.toTfJson(),
  };
}

/// Typed helper for the `filters.finding_provider_fields_related_findings_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightFindingProviderFieldsRelatedFindingsId {
  const SecurityhubInsightFindingProviderFieldsRelatedFindingsId({
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
final class SecurityhubInsightFindingProviderFieldsRelatedFindingsProductArn {
  const SecurityhubInsightFindingProviderFieldsRelatedFindingsProductArn({
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
final class SecurityhubInsightFindingProviderFieldsSeverityLabel {
  const SecurityhubInsightFindingProviderFieldsSeverityLabel({
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
final class SecurityhubInsightFindingProviderFieldsSeverityOriginal {
  const SecurityhubInsightFindingProviderFieldsSeverityOriginal({
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
final class SecurityhubInsightFindingProviderFieldsTypes {
  const SecurityhubInsightFindingProviderFieldsTypes({
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
final class SecurityhubInsightFirstObservedAt {
  const SecurityhubInsightFirstObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.generator_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightGeneratorId {
  const SecurityhubInsightGeneratorId({
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
final class SecurityhubInsightKeyword {
  const SecurityhubInsightKeyword({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `filters.last_observed_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightLastObservedAt {
  const SecurityhubInsightLastObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.malware_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightMalwareName {
  const SecurityhubInsightMalwareName({
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
final class SecurityhubInsightMalwarePath {
  const SecurityhubInsightMalwarePath({
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
final class SecurityhubInsightMalwareState {
  const SecurityhubInsightMalwareState({
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
final class SecurityhubInsightMalwareType {
  const SecurityhubInsightMalwareType({
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
final class SecurityhubInsightNetworkDestinationDomain {
  const SecurityhubInsightNetworkDestinationDomain({
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
final class SecurityhubInsightNetworkDestinationIpv4 {
  const SecurityhubInsightNetworkDestinationIpv4({required this.cidr});

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.network_destination_ipv6` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightNetworkDestinationIpv6 {
  const SecurityhubInsightNetworkDestinationIpv6({required this.cidr});

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.network_destination_port` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightNetworkDestinationPort {
  const SecurityhubInsightNetworkDestinationPort({this.eq, this.gte, this.lte});

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    'eq': ?eq?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lte': ?lte?.toTfJson(),
  };
}

/// Typed helper for the `filters.network_direction` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightNetworkDirection {
  const SecurityhubInsightNetworkDirection({
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
final class SecurityhubInsightNetworkProtocol {
  const SecurityhubInsightNetworkProtocol({
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
final class SecurityhubInsightNetworkSourceDomain {
  const SecurityhubInsightNetworkSourceDomain({
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
final class SecurityhubInsightNetworkSourceIpv4 {
  const SecurityhubInsightNetworkSourceIpv4({required this.cidr});

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.network_source_ipv6` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightNetworkSourceIpv6 {
  const SecurityhubInsightNetworkSourceIpv6({required this.cidr});

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.network_source_mac` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightNetworkSourceMac {
  const SecurityhubInsightNetworkSourceMac({
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
final class SecurityhubInsightNetworkSourcePort {
  const SecurityhubInsightNetworkSourcePort({this.eq, this.gte, this.lte});

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    'eq': ?eq?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lte': ?lte?.toTfJson(),
  };
}

/// Typed helper for the `filters.note_text` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightNoteText {
  const SecurityhubInsightNoteText({
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
final class SecurityhubInsightNoteUpdatedAt {
  const SecurityhubInsightNoteUpdatedAt({this.end, this.start, this.dateRange});

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.note_updated_by` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightNoteUpdatedBy {
  const SecurityhubInsightNoteUpdatedBy({
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
final class SecurityhubInsightProcessLaunchedAt {
  const SecurityhubInsightProcessLaunchedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.process_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightProcessName {
  const SecurityhubInsightProcessName({
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
final class SecurityhubInsightProcessParentPid {
  const SecurityhubInsightProcessParentPid({this.eq, this.gte, this.lte});

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    'eq': ?eq?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lte': ?lte?.toTfJson(),
  };
}

/// Typed helper for the `filters.process_path` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightProcessPath {
  const SecurityhubInsightProcessPath({
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
final class SecurityhubInsightProcessPid {
  const SecurityhubInsightProcessPid({this.eq, this.gte, this.lte});

  final TfArg<String>? eq;

  final TfArg<String>? gte;

  final TfArg<String>? lte;

  Map<String, Object?> encode() => {
    'eq': ?eq?.toTfJson(),
    'gte': ?gte?.toTfJson(),
    'lte': ?lte?.toTfJson(),
  };
}

/// Typed helper for the `filters.process_terminated_at` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightProcessTerminatedAt {
  const SecurityhubInsightProcessTerminatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.product_arn` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightProductArn {
  const SecurityhubInsightProductArn({
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
final class SecurityhubInsightProductFields {
  const SecurityhubInsightProductFields({
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
final class SecurityhubInsightProductName {
  const SecurityhubInsightProductName({
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
final class SecurityhubInsightRecommendationText {
  const SecurityhubInsightRecommendationText({
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
final class SecurityhubInsightRecordState {
  const SecurityhubInsightRecordState({
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
final class SecurityhubInsightRelatedFindingsId {
  const SecurityhubInsightRelatedFindingsId({
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
final class SecurityhubInsightRelatedFindingsProductArn {
  const SecurityhubInsightRelatedFindingsProductArn({
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
final class SecurityhubInsightResourceAwsEc2InstanceIamInstanceProfileArn {
  const SecurityhubInsightResourceAwsEc2InstanceIamInstanceProfileArn({
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
final class SecurityhubInsightResourceAwsEc2InstanceImageId {
  const SecurityhubInsightResourceAwsEc2InstanceImageId({
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
final class SecurityhubInsightResourceAwsEc2InstanceIpv4Addresses {
  const SecurityhubInsightResourceAwsEc2InstanceIpv4Addresses({
    required this.cidr,
  });

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.resource_aws_ec2_instance_ipv6_addresses` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightResourceAwsEc2InstanceIpv6Addresses {
  const SecurityhubInsightResourceAwsEc2InstanceIpv6Addresses({
    required this.cidr,
  });

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Typed helper for the `filters.resource_aws_ec2_instance_key_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightResourceAwsEc2InstanceKeyName {
  const SecurityhubInsightResourceAwsEc2InstanceKeyName({
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
final class SecurityhubInsightResourceAwsEc2InstanceLaunchedAt {
  const SecurityhubInsightResourceAwsEc2InstanceLaunchedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.resource_aws_ec2_instance_subnet_id` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightResourceAwsEc2InstanceSubnetId {
  const SecurityhubInsightResourceAwsEc2InstanceSubnetId({
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
final class SecurityhubInsightResourceAwsEc2InstanceType {
  const SecurityhubInsightResourceAwsEc2InstanceType({
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
final class SecurityhubInsightResourceAwsEc2InstanceVpcId {
  const SecurityhubInsightResourceAwsEc2InstanceVpcId({
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
final class SecurityhubInsightResourceAwsIamAccessKeyCreatedAt {
  const SecurityhubInsightResourceAwsIamAccessKeyCreatedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.resource_aws_iam_access_key_status` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightResourceAwsIamAccessKeyStatus {
  const SecurityhubInsightResourceAwsIamAccessKeyStatus({
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
final class SecurityhubInsightResourceAwsIamAccessKeyUserName {
  const SecurityhubInsightResourceAwsIamAccessKeyUserName({
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
final class SecurityhubInsightResourceAwsS3BucketOwnerId {
  const SecurityhubInsightResourceAwsS3BucketOwnerId({
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
final class SecurityhubInsightResourceAwsS3BucketOwnerName {
  const SecurityhubInsightResourceAwsS3BucketOwnerName({
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
final class SecurityhubInsightResourceContainerImageId {
  const SecurityhubInsightResourceContainerImageId({
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
final class SecurityhubInsightResourceContainerImageName {
  const SecurityhubInsightResourceContainerImageName({
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
final class SecurityhubInsightResourceContainerLaunchedAt {
  const SecurityhubInsightResourceContainerLaunchedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.resource_container_name` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightResourceContainerName {
  const SecurityhubInsightResourceContainerName({
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
final class SecurityhubInsightResourceDetailsOther {
  const SecurityhubInsightResourceDetailsOther({
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
final class SecurityhubInsightResourceId {
  const SecurityhubInsightResourceId({
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
final class SecurityhubInsightResourcePartition {
  const SecurityhubInsightResourcePartition({
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
final class SecurityhubInsightResourceRegion {
  const SecurityhubInsightResourceRegion({
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
final class SecurityhubInsightResourceTags {
  const SecurityhubInsightResourceTags({
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
final class SecurityhubInsightResourceType {
  const SecurityhubInsightResourceType({
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
final class SecurityhubInsightSeverityLabel {
  const SecurityhubInsightSeverityLabel({
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
final class SecurityhubInsightSourceUrl {
  const SecurityhubInsightSourceUrl({
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
final class SecurityhubInsightThreatIntelIndicatorCategory {
  const SecurityhubInsightThreatIntelIndicatorCategory({
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
final class SecurityhubInsightThreatIntelIndicatorLastObservedAt {
  const SecurityhubInsightThreatIntelIndicatorLastObservedAt({
    this.end,
    this.start,
    this.dateRange,
  });

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.threat_intel_indicator_source` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightThreatIntelIndicatorSource {
  const SecurityhubInsightThreatIntelIndicatorSource({
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
final class SecurityhubInsightThreatIntelIndicatorSourceUrl {
  const SecurityhubInsightThreatIntelIndicatorSourceUrl({
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
final class SecurityhubInsightThreatIntelIndicatorType {
  const SecurityhubInsightThreatIntelIndicatorType({
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
final class SecurityhubInsightThreatIntelIndicatorValue {
  const SecurityhubInsightThreatIntelIndicatorValue({
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
final class SecurityhubInsightTitle {
  const SecurityhubInsightTitle({
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
final class SecurityhubInsightType {
  const SecurityhubInsightType({required this.comparison, required this.value});

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
final class SecurityhubInsightUpdatedAt {
  const SecurityhubInsightUpdatedAt({this.end, this.start, this.dateRange});

  final TfArg<String>? end;

  final TfArg<String>? start;

  final SecurityhubInsightDateRange? dateRange;

  Map<String, Object?> encode() => {
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
    'date_range': ?dateRange?.encode(),
  };
}

/// Typed helper for the `filters.user_defined_values` block of
/// `aws_securityhub_insight` (derived from provider schema).
@immutable
final class SecurityhubInsightUserDefinedValues {
  const SecurityhubInsightUserDefinedValues({
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
final class SecurityhubInsightVerificationState {
  const SecurityhubInsightVerificationState({
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
final class SecurityhubInsightWorkflowStatus {
  const SecurityhubInsightWorkflowStatus({
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
           'region': ?region,
           'filters': TfArg.literal(filters.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubInsightSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubInsight>`.
  RefTo<AwsSecurityhubInsight> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `group_by_attribute` attribute.
  TfRef<String> get groupByAttributeRef =>
      TfRef.attribute<String>(this, 'group_by_attribute');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
