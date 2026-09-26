// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector2_filter`.
const Set<String> _awsInspector2FilterSensitive = <String>{};

/// Typed helper for the `filter_criteria` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteria {
  const Inspector2FilterFilterCriteria({
    this.awsAccountId,
    this.codeRepositoryProjectName,
    this.codeRepositoryProviderType,
    this.codeVulnerabilityDetectorName,
    this.codeVulnerabilityDetectorTags,
    this.codeVulnerabilityFilePath,
    this.componentId,
    this.componentType,
    this.ec2InstanceImageId,
    this.ec2InstanceSubnetId,
    this.ec2InstanceVpcId,
    this.ecrImageArchitecture,
    this.ecrImageHash,
    this.ecrImageInUseCount,
    this.ecrImageLastInUseAt,
    this.ecrImagePushedAt,
    this.ecrImageRegistry,
    this.ecrImageRepositoryName,
    this.ecrImageTags,
    this.epssScore,
    this.exploitAvailable,
    this.findingArn,
    this.findingStatus,
    this.findingType,
    this.firstObservedAt,
    this.fixAvailable,
    this.inspectorScore,
    this.lambdaFunctionExecutionRoleArn,
    this.lambdaFunctionLastModifiedAt,
    this.lambdaFunctionLayers,
    this.lambdaFunctionName,
    this.lambdaFunctionRuntime,
    this.lastObservedAt,
    this.networkProtocol,
    this.portRange,
    this.relatedVulnerabilities,
    this.resourceId,
    this.resourceTags,
    this.resourceType,
    this.severity,
    this.title,
    this.updatedAt,
    this.vendorSeverity,
    this.vulnerabilityId,
    this.vulnerabilitySource,
    this.vulnerablePackages,
  });

  final List<Inspector2FilterFilterCriteriaAwsAccountId>? awsAccountId;

  final List<Inspector2FilterFilterCriteriaCodeRepositoryProjectName>?
  codeRepositoryProjectName;

  final List<Inspector2FilterFilterCriteriaCodeRepositoryProviderType>?
  codeRepositoryProviderType;

  final List<Inspector2FilterFilterCriteriaCodeVulnerabilityDetectorName>?
  codeVulnerabilityDetectorName;

  final List<Inspector2FilterFilterCriteriaCodeVulnerabilityDetectorTags>?
  codeVulnerabilityDetectorTags;

  final List<Inspector2FilterFilterCriteriaCodeVulnerabilityFilePath>?
  codeVulnerabilityFilePath;

  final List<Inspector2FilterFilterCriteriaComponentId>? componentId;

  final List<Inspector2FilterFilterCriteriaComponentType>? componentType;

  final List<Inspector2FilterFilterCriteriaEc2InstanceImageId>?
  ec2InstanceImageId;

  final List<Inspector2FilterFilterCriteriaEc2InstanceSubnetId>?
  ec2InstanceSubnetId;

  final List<Inspector2FilterFilterCriteriaEc2InstanceVpcId>? ec2InstanceVpcId;

  final List<Inspector2FilterFilterCriteriaEcrImageArchitecture>?
  ecrImageArchitecture;

  final List<Inspector2FilterFilterCriteriaEcrImageHash>? ecrImageHash;

  final List<Inspector2FilterFilterCriteriaEcrImageInUseCount>?
  ecrImageInUseCount;

  final List<Inspector2FilterFilterCriteriaEcrImageLastInUseAt>?
  ecrImageLastInUseAt;

  final List<Inspector2FilterFilterCriteriaEcrImagePushedAt>? ecrImagePushedAt;

  final List<Inspector2FilterFilterCriteriaEcrImageRegistry>? ecrImageRegistry;

  final List<Inspector2FilterFilterCriteriaEcrImageRepositoryName>?
  ecrImageRepositoryName;

  final List<Inspector2FilterFilterCriteriaEcrImageTags>? ecrImageTags;

  final List<Inspector2FilterFilterCriteriaEpssScore>? epssScore;

  final List<Inspector2FilterFilterCriteriaExploitAvailable>? exploitAvailable;

  final List<Inspector2FilterFilterCriteriaFindingArn>? findingArn;

  final List<Inspector2FilterFilterCriteriaFindingStatus>? findingStatus;

  final List<Inspector2FilterFilterCriteriaFindingType>? findingType;

  final List<Inspector2FilterFilterCriteriaFirstObservedAt>? firstObservedAt;

  final List<Inspector2FilterFilterCriteriaFixAvailable>? fixAvailable;

  final List<Inspector2FilterFilterCriteriaInspectorScore>? inspectorScore;

  final List<Inspector2FilterFilterCriteriaLambdaFunctionExecutionRoleArn>?
  lambdaFunctionExecutionRoleArn;

  final List<Inspector2FilterFilterCriteriaLambdaFunctionLastModifiedAt>?
  lambdaFunctionLastModifiedAt;

  final List<Inspector2FilterFilterCriteriaLambdaFunctionLayers>?
  lambdaFunctionLayers;

  final List<Inspector2FilterFilterCriteriaLambdaFunctionName>?
  lambdaFunctionName;

  final List<Inspector2FilterFilterCriteriaLambdaFunctionRuntime>?
  lambdaFunctionRuntime;

  final List<Inspector2FilterFilterCriteriaLastObservedAt>? lastObservedAt;

  final List<Inspector2FilterFilterCriteriaNetworkProtocol>? networkProtocol;

  final List<Inspector2FilterFilterCriteriaPortRange>? portRange;

  final List<Inspector2FilterFilterCriteriaRelatedVulnerabilities>?
  relatedVulnerabilities;

  final List<Inspector2FilterFilterCriteriaResourceId>? resourceId;

  final List<Inspector2FilterFilterCriteriaResourceTags>? resourceTags;

  final List<Inspector2FilterFilterCriteriaResourceType>? resourceType;

  final List<Inspector2FilterFilterCriteriaSeverity>? severity;

  final List<Inspector2FilterFilterCriteriaTitle>? title;

  final List<Inspector2FilterFilterCriteriaUpdatedAt>? updatedAt;

  final List<Inspector2FilterFilterCriteriaVendorSeverity>? vendorSeverity;

  final List<Inspector2FilterFilterCriteriaVulnerabilityId>? vulnerabilityId;

  final List<Inspector2FilterFilterCriteriaVulnerabilitySource>?
  vulnerabilitySource;

  final List<Inspector2FilterFilterCriteriaVulnerablePackages>?
  vulnerablePackages;

  Map<String, Object?> encode() => {
    if (awsAccountId != null)
      'aws_account_id': [for (final e in awsAccountId!) e.encode()],
    if (codeRepositoryProjectName != null)
      'code_repository_project_name': [
        for (final e in codeRepositoryProjectName!) e.encode(),
      ],
    if (codeRepositoryProviderType != null)
      'code_repository_provider_type': [
        for (final e in codeRepositoryProviderType!) e.encode(),
      ],
    if (codeVulnerabilityDetectorName != null)
      'code_vulnerability_detector_name': [
        for (final e in codeVulnerabilityDetectorName!) e.encode(),
      ],
    if (codeVulnerabilityDetectorTags != null)
      'code_vulnerability_detector_tags': [
        for (final e in codeVulnerabilityDetectorTags!) e.encode(),
      ],
    if (codeVulnerabilityFilePath != null)
      'code_vulnerability_file_path': [
        for (final e in codeVulnerabilityFilePath!) e.encode(),
      ],
    if (componentId != null)
      'component_id': [for (final e in componentId!) e.encode()],
    if (componentType != null)
      'component_type': [for (final e in componentType!) e.encode()],
    if (ec2InstanceImageId != null)
      'ec2_instance_image_id': [
        for (final e in ec2InstanceImageId!) e.encode(),
      ],
    if (ec2InstanceSubnetId != null)
      'ec2_instance_subnet_id': [
        for (final e in ec2InstanceSubnetId!) e.encode(),
      ],
    if (ec2InstanceVpcId != null)
      'ec2_instance_vpc_id': [for (final e in ec2InstanceVpcId!) e.encode()],
    if (ecrImageArchitecture != null)
      'ecr_image_architecture': [
        for (final e in ecrImageArchitecture!) e.encode(),
      ],
    if (ecrImageHash != null)
      'ecr_image_hash': [for (final e in ecrImageHash!) e.encode()],
    if (ecrImageInUseCount != null)
      'ecr_image_in_use_count': [
        for (final e in ecrImageInUseCount!) e.encode(),
      ],
    if (ecrImageLastInUseAt != null)
      'ecr_image_last_in_use_at': [
        for (final e in ecrImageLastInUseAt!) e.encode(),
      ],
    if (ecrImagePushedAt != null)
      'ecr_image_pushed_at': [for (final e in ecrImagePushedAt!) e.encode()],
    if (ecrImageRegistry != null)
      'ecr_image_registry': [for (final e in ecrImageRegistry!) e.encode()],
    if (ecrImageRepositoryName != null)
      'ecr_image_repository_name': [
        for (final e in ecrImageRepositoryName!) e.encode(),
      ],
    if (ecrImageTags != null)
      'ecr_image_tags': [for (final e in ecrImageTags!) e.encode()],
    if (epssScore != null)
      'epss_score': [for (final e in epssScore!) e.encode()],
    if (exploitAvailable != null)
      'exploit_available': [for (final e in exploitAvailable!) e.encode()],
    if (findingArn != null)
      'finding_arn': [for (final e in findingArn!) e.encode()],
    if (findingStatus != null)
      'finding_status': [for (final e in findingStatus!) e.encode()],
    if (findingType != null)
      'finding_type': [for (final e in findingType!) e.encode()],
    if (firstObservedAt != null)
      'first_observed_at': [for (final e in firstObservedAt!) e.encode()],
    if (fixAvailable != null)
      'fix_available': [for (final e in fixAvailable!) e.encode()],
    if (inspectorScore != null)
      'inspector_score': [for (final e in inspectorScore!) e.encode()],
    if (lambdaFunctionExecutionRoleArn != null)
      'lambda_function_execution_role_arn': [
        for (final e in lambdaFunctionExecutionRoleArn!) e.encode(),
      ],
    if (lambdaFunctionLastModifiedAt != null)
      'lambda_function_last_modified_at': [
        for (final e in lambdaFunctionLastModifiedAt!) e.encode(),
      ],
    if (lambdaFunctionLayers != null)
      'lambda_function_layers': [
        for (final e in lambdaFunctionLayers!) e.encode(),
      ],
    if (lambdaFunctionName != null)
      'lambda_function_name': [for (final e in lambdaFunctionName!) e.encode()],
    if (lambdaFunctionRuntime != null)
      'lambda_function_runtime': [
        for (final e in lambdaFunctionRuntime!) e.encode(),
      ],
    if (lastObservedAt != null)
      'last_observed_at': [for (final e in lastObservedAt!) e.encode()],
    if (networkProtocol != null)
      'network_protocol': [for (final e in networkProtocol!) e.encode()],
    if (portRange != null)
      'port_range': [for (final e in portRange!) e.encode()],
    if (relatedVulnerabilities != null)
      'related_vulnerabilities': [
        for (final e in relatedVulnerabilities!) e.encode(),
      ],
    if (resourceId != null)
      'resource_id': [for (final e in resourceId!) e.encode()],
    if (resourceTags != null)
      'resource_tags': [for (final e in resourceTags!) e.encode()],
    if (resourceType != null)
      'resource_type': [for (final e in resourceType!) e.encode()],
    if (severity != null) 'severity': [for (final e in severity!) e.encode()],
    if (title != null) 'title': [for (final e in title!) e.encode()],
    if (updatedAt != null)
      'updated_at': [for (final e in updatedAt!) e.encode()],
    if (vendorSeverity != null)
      'vendor_severity': [for (final e in vendorSeverity!) e.encode()],
    if (vulnerabilityId != null)
      'vulnerability_id': [for (final e in vulnerabilityId!) e.encode()],
    if (vulnerabilitySource != null)
      'vulnerability_source': [
        for (final e in vulnerabilitySource!) e.encode(),
      ],
    if (vulnerablePackages != null)
      'vulnerable_packages': [for (final e in vulnerablePackages!) e.encode()],
  };
}

/// Typed helper for the `filter_criteria.aws_account_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaAwsAccountId {
  const Inspector2FilterFilterCriteriaAwsAccountId({
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

/// Typed helper for the `filter_criteria.code_repository_project_name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaCodeRepositoryProjectName {
  const Inspector2FilterFilterCriteriaCodeRepositoryProjectName({
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

/// Typed helper for the `filter_criteria.code_repository_provider_type` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaCodeRepositoryProviderType {
  const Inspector2FilterFilterCriteriaCodeRepositoryProviderType({
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

/// Typed helper for the `filter_criteria.code_vulnerability_detector_name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaCodeVulnerabilityDetectorName {
  const Inspector2FilterFilterCriteriaCodeVulnerabilityDetectorName({
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

/// Typed helper for the `filter_criteria.code_vulnerability_detector_tags` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaCodeVulnerabilityDetectorTags {
  const Inspector2FilterFilterCriteriaCodeVulnerabilityDetectorTags({
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

/// Typed helper for the `filter_criteria.code_vulnerability_file_path` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaCodeVulnerabilityFilePath {
  const Inspector2FilterFilterCriteriaCodeVulnerabilityFilePath({
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

/// Typed helper for the `filter_criteria.component_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaComponentId {
  const Inspector2FilterFilterCriteriaComponentId({
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

/// Typed helper for the `filter_criteria.component_type` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaComponentType {
  const Inspector2FilterFilterCriteriaComponentType({
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

/// Typed helper for the `filter_criteria.ec2_instance_image_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEc2InstanceImageId {
  const Inspector2FilterFilterCriteriaEc2InstanceImageId({
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

/// Typed helper for the `filter_criteria.ec2_instance_subnet_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEc2InstanceSubnetId {
  const Inspector2FilterFilterCriteriaEc2InstanceSubnetId({
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

/// Typed helper for the `filter_criteria.ec2_instance_vpc_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEc2InstanceVpcId {
  const Inspector2FilterFilterCriteriaEc2InstanceVpcId({
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

/// Typed helper for the `filter_criteria.ecr_image_architecture` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEcrImageArchitecture {
  const Inspector2FilterFilterCriteriaEcrImageArchitecture({
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

/// Typed helper for the `filter_criteria.ecr_image_hash` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEcrImageHash {
  const Inspector2FilterFilterCriteriaEcrImageHash({
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

/// Typed helper for the `filter_criteria.ecr_image_in_use_count` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEcrImageInUseCount {
  const Inspector2FilterFilterCriteriaEcrImageInUseCount({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  final TfArg<num> lowerInclusive;

  final TfArg<num> upperInclusive;

  Map<String, Object?> encode() => {
    'lower_inclusive': lowerInclusive.toTfJson(),
    'upper_inclusive': upperInclusive.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_last_in_use_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEcrImageLastInUseAt {
  const Inspector2FilterFilterCriteriaEcrImageLastInUseAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    if (endInclusive != null) 'end_inclusive': endInclusive!.toTfJson(),
    if (startInclusive != null) 'start_inclusive': startInclusive!.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_pushed_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEcrImagePushedAt {
  const Inspector2FilterFilterCriteriaEcrImagePushedAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    if (endInclusive != null) 'end_inclusive': endInclusive!.toTfJson(),
    if (startInclusive != null) 'start_inclusive': startInclusive!.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_registry` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEcrImageRegistry {
  const Inspector2FilterFilterCriteriaEcrImageRegistry({
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

/// Typed helper for the `filter_criteria.ecr_image_repository_name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEcrImageRepositoryName {
  const Inspector2FilterFilterCriteriaEcrImageRepositoryName({
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

/// Typed helper for the `filter_criteria.ecr_image_tags` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEcrImageTags {
  const Inspector2FilterFilterCriteriaEcrImageTags({
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

/// Typed helper for the `filter_criteria.epss_score` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaEpssScore {
  const Inspector2FilterFilterCriteriaEpssScore({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  final TfArg<num> lowerInclusive;

  final TfArg<num> upperInclusive;

  Map<String, Object?> encode() => {
    'lower_inclusive': lowerInclusive.toTfJson(),
    'upper_inclusive': upperInclusive.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.exploit_available` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaExploitAvailable {
  const Inspector2FilterFilterCriteriaExploitAvailable({
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

/// Typed helper for the `filter_criteria.finding_arn` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaFindingArn {
  const Inspector2FilterFilterCriteriaFindingArn({
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

/// Typed helper for the `filter_criteria.finding_status` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaFindingStatus {
  const Inspector2FilterFilterCriteriaFindingStatus({
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

/// Typed helper for the `filter_criteria.finding_type` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaFindingType {
  const Inspector2FilterFilterCriteriaFindingType({
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

/// Typed helper for the `filter_criteria.first_observed_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaFirstObservedAt {
  const Inspector2FilterFilterCriteriaFirstObservedAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    if (endInclusive != null) 'end_inclusive': endInclusive!.toTfJson(),
    if (startInclusive != null) 'start_inclusive': startInclusive!.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.fix_available` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaFixAvailable {
  const Inspector2FilterFilterCriteriaFixAvailable({
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

/// Typed helper for the `filter_criteria.inspector_score` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaInspectorScore {
  const Inspector2FilterFilterCriteriaInspectorScore({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  final TfArg<num> lowerInclusive;

  final TfArg<num> upperInclusive;

  Map<String, Object?> encode() => {
    'lower_inclusive': lowerInclusive.toTfJson(),
    'upper_inclusive': upperInclusive.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.lambda_function_execution_role_arn` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaLambdaFunctionExecutionRoleArn {
  const Inspector2FilterFilterCriteriaLambdaFunctionExecutionRoleArn({
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

/// Typed helper for the `filter_criteria.lambda_function_last_modified_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaLambdaFunctionLastModifiedAt {
  const Inspector2FilterFilterCriteriaLambdaFunctionLastModifiedAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    if (endInclusive != null) 'end_inclusive': endInclusive!.toTfJson(),
    if (startInclusive != null) 'start_inclusive': startInclusive!.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.lambda_function_layers` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaLambdaFunctionLayers {
  const Inspector2FilterFilterCriteriaLambdaFunctionLayers({
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

/// Typed helper for the `filter_criteria.lambda_function_name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaLambdaFunctionName {
  const Inspector2FilterFilterCriteriaLambdaFunctionName({
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

/// Typed helper for the `filter_criteria.lambda_function_runtime` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaLambdaFunctionRuntime {
  const Inspector2FilterFilterCriteriaLambdaFunctionRuntime({
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

/// Typed helper for the `filter_criteria.last_observed_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaLastObservedAt {
  const Inspector2FilterFilterCriteriaLastObservedAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    if (endInclusive != null) 'end_inclusive': endInclusive!.toTfJson(),
    if (startInclusive != null) 'start_inclusive': startInclusive!.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.network_protocol` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaNetworkProtocol {
  const Inspector2FilterFilterCriteriaNetworkProtocol({
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

/// Typed helper for the `filter_criteria.port_range` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaPortRange {
  const Inspector2FilterFilterCriteriaPortRange({
    required this.beginInclusive,
    required this.endInclusive,
  });

  final TfArg<num> beginInclusive;

  final TfArg<num> endInclusive;

  Map<String, Object?> encode() => {
    'begin_inclusive': beginInclusive.toTfJson(),
    'end_inclusive': endInclusive.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.related_vulnerabilities` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaRelatedVulnerabilities {
  const Inspector2FilterFilterCriteriaRelatedVulnerabilities({
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

/// Typed helper for the `filter_criteria.resource_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaResourceId {
  const Inspector2FilterFilterCriteriaResourceId({
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

/// Typed helper for the `filter_criteria.resource_tags` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaResourceTags {
  const Inspector2FilterFilterCriteriaResourceTags({
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

/// Typed helper for the `filter_criteria.resource_type` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaResourceType {
  const Inspector2FilterFilterCriteriaResourceType({
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

/// Typed helper for the `filter_criteria.severity` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaSeverity {
  const Inspector2FilterFilterCriteriaSeverity({
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

/// Typed helper for the `filter_criteria.title` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaTitle {
  const Inspector2FilterFilterCriteriaTitle({
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

/// Typed helper for the `filter_criteria.updated_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaUpdatedAt {
  const Inspector2FilterFilterCriteriaUpdatedAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    if (endInclusive != null) 'end_inclusive': endInclusive!.toTfJson(),
    if (startInclusive != null) 'start_inclusive': startInclusive!.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vendor_severity` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVendorSeverity {
  const Inspector2FilterFilterCriteriaVendorSeverity({
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

/// Typed helper for the `filter_criteria.vulnerability_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerabilityId {
  const Inspector2FilterFilterCriteriaVulnerabilityId({
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

/// Typed helper for the `filter_criteria.vulnerability_source` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerabilitySource {
  const Inspector2FilterFilterCriteriaVulnerabilitySource({
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

/// Typed helper for the `filter_criteria.vulnerable_packages` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerablePackages {
  const Inspector2FilterFilterCriteriaVulnerablePackages({
    this.architecture,
    this.epoch,
    this.filePath,
    this.name,
    this.release,
    this.sourceLambdaLayerArn,
    this.sourceLayerHash,
    this.version,
  });

  final List<Inspector2FilterFilterCriteriaVulnerablePackagesArchitecture>?
  architecture;

  final List<Inspector2FilterFilterCriteriaVulnerablePackagesEpoch>? epoch;

  final List<Inspector2FilterFilterCriteriaVulnerablePackagesFilePath>?
  filePath;

  final List<Inspector2FilterFilterCriteriaVulnerablePackagesName>? name;

  final List<Inspector2FilterFilterCriteriaVulnerablePackagesRelease>? release;

  final List<
    Inspector2FilterFilterCriteriaVulnerablePackagesSourceLambdaLayerArn
  >?
  sourceLambdaLayerArn;

  final List<Inspector2FilterFilterCriteriaVulnerablePackagesSourceLayerHash>?
  sourceLayerHash;

  final List<Inspector2FilterFilterCriteriaVulnerablePackagesVersion>? version;

  Map<String, Object?> encode() => {
    if (architecture != null)
      'architecture': [for (final e in architecture!) e.encode()],
    if (epoch != null) 'epoch': [for (final e in epoch!) e.encode()],
    if (filePath != null) 'file_path': [for (final e in filePath!) e.encode()],
    if (name != null) 'name': [for (final e in name!) e.encode()],
    if (release != null) 'release': [for (final e in release!) e.encode()],
    if (sourceLambdaLayerArn != null)
      'source_lambda_layer_arn': [
        for (final e in sourceLambdaLayerArn!) e.encode(),
      ],
    if (sourceLayerHash != null)
      'source_layer_hash': [for (final e in sourceLayerHash!) e.encode()],
    if (version != null) 'version': [for (final e in version!) e.encode()],
  };
}

/// Typed helper for the `filter_criteria.vulnerable_packages.architecture` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerablePackagesArchitecture {
  const Inspector2FilterFilterCriteriaVulnerablePackagesArchitecture({
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

/// Typed helper for the `filter_criteria.vulnerable_packages.epoch` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerablePackagesEpoch {
  const Inspector2FilterFilterCriteriaVulnerablePackagesEpoch({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  final TfArg<num> lowerInclusive;

  final TfArg<num> upperInclusive;

  Map<String, Object?> encode() => {
    'lower_inclusive': lowerInclusive.toTfJson(),
    'upper_inclusive': upperInclusive.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerable_packages.file_path` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerablePackagesFilePath {
  const Inspector2FilterFilterCriteriaVulnerablePackagesFilePath({
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

/// Typed helper for the `filter_criteria.vulnerable_packages.name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerablePackagesName {
  const Inspector2FilterFilterCriteriaVulnerablePackagesName({
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

/// Typed helper for the `filter_criteria.vulnerable_packages.release` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerablePackagesRelease {
  const Inspector2FilterFilterCriteriaVulnerablePackagesRelease({
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

/// Typed helper for the `filter_criteria.vulnerable_packages.source_lambda_layer_arn` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerablePackagesSourceLambdaLayerArn {
  const Inspector2FilterFilterCriteriaVulnerablePackagesSourceLambdaLayerArn({
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

/// Typed helper for the `filter_criteria.vulnerable_packages.source_layer_hash` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerablePackagesSourceLayerHash {
  const Inspector2FilterFilterCriteriaVulnerablePackagesSourceLayerHash({
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

/// Typed helper for the `filter_criteria.vulnerable_packages.version` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFilterCriteriaVulnerablePackagesVersion {
  const Inspector2FilterFilterCriteriaVulnerablePackagesVersion({
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

/// Factory wrapper for `aws_inspector2_filter`.
final class AwsInspector2Filter extends Resource {
  static const String tfType = 'aws_inspector2_filter';

  AwsInspector2Filter({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? reason,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<Inspector2FilterFilterCriteria>? filterCriteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (description != null) 'description': description,
           'name': name,
           if (reason != null) 'reason': reason,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filterCriteria != null)
             'filter_criteria': TfArg.literal([
               for (final e in filterCriteria) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInspector2FilterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
