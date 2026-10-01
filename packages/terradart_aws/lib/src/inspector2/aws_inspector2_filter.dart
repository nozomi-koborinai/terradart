// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector2_filter`.
const Set<String> _awsInspector2FilterSensitive = <String>{};

/// Inspector2 Filter enum for `action`.
extension type const Inspector2FilterAction._(TfArg<String> _)
    implements TfArg<String> {
  Inspector2FilterAction.variable(String name) : this._(TfArg.variable(name));
  Inspector2FilterAction.expression(String template)
    : this._(TfArg.expression(template));
  const Inspector2FilterAction.arg(TfArg<String> arg) : this._(arg);

  static const none = Inspector2FilterAction._(TfArgLiteral('NONE'));
  static const suppress = Inspector2FilterAction._(TfArgLiteral('SUPPRESS'));

  static const List<Inspector2FilterAction> values = [none, suppress];
}

/// Typed helper for the `filter_criteria` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterCriteria {
  const Inspector2FilterCriteria({
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

  final List<Inspector2FilterAwsAccountId>? awsAccountId;

  final List<Inspector2FilterCodeRepositoryProjectName>?
  codeRepositoryProjectName;

  final List<Inspector2FilterCodeRepositoryProviderType>?
  codeRepositoryProviderType;

  final List<Inspector2FilterCodeVulnerabilityDetectorName>?
  codeVulnerabilityDetectorName;

  final List<Inspector2FilterCodeVulnerabilityDetectorTags>?
  codeVulnerabilityDetectorTags;

  final List<Inspector2FilterCodeVulnerabilityFilePath>?
  codeVulnerabilityFilePath;

  final List<Inspector2FilterComponentId>? componentId;

  final List<Inspector2FilterComponentType>? componentType;

  final List<Inspector2FilterEc2InstanceImageId>? ec2InstanceImageId;

  final List<Inspector2FilterEc2InstanceSubnetId>? ec2InstanceSubnetId;

  final List<Inspector2FilterEc2InstanceVpcId>? ec2InstanceVpcId;

  final List<Inspector2FilterEcrImageArchitecture>? ecrImageArchitecture;

  final List<Inspector2FilterEcrImageHash>? ecrImageHash;

  final List<Inspector2FilterEcrImageInUseCount>? ecrImageInUseCount;

  final List<Inspector2FilterEcrImageLastInUseAt>? ecrImageLastInUseAt;

  final List<Inspector2FilterEcrImagePushedAt>? ecrImagePushedAt;

  final List<Inspector2FilterEcrImageRegistry>? ecrImageRegistry;

  final List<Inspector2FilterEcrImageRepositoryName>? ecrImageRepositoryName;

  final List<Inspector2FilterEcrImageTags>? ecrImageTags;

  final List<Inspector2FilterEpssScore>? epssScore;

  final List<Inspector2FilterExploitAvailable>? exploitAvailable;

  final List<Inspector2FilterFindingArn>? findingArn;

  final List<Inspector2FilterFindingStatus>? findingStatus;

  final List<Inspector2FilterFindingType>? findingType;

  final List<Inspector2FilterFirstObservedAt>? firstObservedAt;

  final List<Inspector2FilterFixAvailable>? fixAvailable;

  final List<Inspector2FilterInspectorScore>? inspectorScore;

  final List<Inspector2FilterLambdaFunctionExecutionRoleArn>?
  lambdaFunctionExecutionRoleArn;

  final List<Inspector2FilterLambdaFunctionLastModifiedAt>?
  lambdaFunctionLastModifiedAt;

  final List<Inspector2FilterLambdaFunctionLayers>? lambdaFunctionLayers;

  final List<Inspector2FilterLambdaFunctionName>? lambdaFunctionName;

  final List<Inspector2FilterLambdaFunctionRuntime>? lambdaFunctionRuntime;

  final List<Inspector2FilterLastObservedAt>? lastObservedAt;

  final List<Inspector2FilterNetworkProtocol>? networkProtocol;

  final List<Inspector2FilterPortRange>? portRange;

  final List<Inspector2FilterRelatedVulnerabilities>? relatedVulnerabilities;

  final List<Inspector2FilterResourceId>? resourceId;

  final List<Inspector2FilterResourceTags>? resourceTags;

  final List<Inspector2FilterResourceType>? resourceType;

  final List<Inspector2FilterSeverity>? severity;

  final List<Inspector2FilterTitle>? title;

  final List<Inspector2FilterUpdatedAt>? updatedAt;

  final List<Inspector2FilterVendorSeverity>? vendorSeverity;

  final List<Inspector2FilterVulnerabilityId>? vulnerabilityId;

  final List<Inspector2FilterVulnerabilitySource>? vulnerabilitySource;

  final List<Inspector2FilterVulnerablePackages>? vulnerablePackages;

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
final class Inspector2FilterAwsAccountId {
  const Inspector2FilterAwsAccountId({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `comparison` — derived from the provider schema description.
extension type const Inspector2FilterAwsAccountIdComparison._(TfArg<String> _)
    implements TfArg<String> {
  Inspector2FilterAwsAccountIdComparison.variable(String name)
    : this._(TfArg.variable(name));
  Inspector2FilterAwsAccountIdComparison.expression(String template)
    : this._(TfArg.expression(template));
  const Inspector2FilterAwsAccountIdComparison.arg(TfArg<String> arg)
    : this._(arg);

  static const equals = Inspector2FilterAwsAccountIdComparison._(
    TfArgLiteral('EQUALS'),
  );
  static const prefix = Inspector2FilterAwsAccountIdComparison._(
    TfArgLiteral('PREFIX'),
  );
  static const notEquals = Inspector2FilterAwsAccountIdComparison._(
    TfArgLiteral('NOT_EQUALS'),
  );

  static const List<Inspector2FilterAwsAccountIdComparison> values = [
    equals,
    prefix,
    notEquals,
  ];
}

/// Typed helper for the `filter_criteria.code_repository_project_name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterCodeRepositoryProjectName {
  const Inspector2FilterCodeRepositoryProjectName({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.code_repository_provider_type` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterCodeRepositoryProviderType {
  const Inspector2FilterCodeRepositoryProviderType({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.code_vulnerability_detector_name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterCodeVulnerabilityDetectorName {
  const Inspector2FilterCodeVulnerabilityDetectorName({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.code_vulnerability_detector_tags` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterCodeVulnerabilityDetectorTags {
  const Inspector2FilterCodeVulnerabilityDetectorTags({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.code_vulnerability_file_path` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterCodeVulnerabilityFilePath {
  const Inspector2FilterCodeVulnerabilityFilePath({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.component_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterComponentId {
  const Inspector2FilterComponentId({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.component_type` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterComponentType {
  const Inspector2FilterComponentType({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ec2_instance_image_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEc2InstanceImageId {
  const Inspector2FilterEc2InstanceImageId({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ec2_instance_subnet_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEc2InstanceSubnetId {
  const Inspector2FilterEc2InstanceSubnetId({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ec2_instance_vpc_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEc2InstanceVpcId {
  const Inspector2FilterEc2InstanceVpcId({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_architecture` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEcrImageArchitecture {
  const Inspector2FilterEcrImageArchitecture({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_hash` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEcrImageHash {
  const Inspector2FilterEcrImageHash({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_in_use_count` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEcrImageInUseCount {
  const Inspector2FilterEcrImageInUseCount({
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
final class Inspector2FilterEcrImageLastInUseAt {
  const Inspector2FilterEcrImageLastInUseAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    'end_inclusive': ?endInclusive?.toTfJson(),
    'start_inclusive': ?startInclusive?.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_pushed_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEcrImagePushedAt {
  const Inspector2FilterEcrImagePushedAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    'end_inclusive': ?endInclusive?.toTfJson(),
    'start_inclusive': ?startInclusive?.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_registry` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEcrImageRegistry {
  const Inspector2FilterEcrImageRegistry({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_repository_name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEcrImageRepositoryName {
  const Inspector2FilterEcrImageRepositoryName({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.ecr_image_tags` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEcrImageTags {
  const Inspector2FilterEcrImageTags({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.epss_score` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEpssScore {
  const Inspector2FilterEpssScore({
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
final class Inspector2FilterExploitAvailable {
  const Inspector2FilterExploitAvailable({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.finding_arn` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFindingArn {
  const Inspector2FilterFindingArn({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.finding_status` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFindingStatus {
  const Inspector2FilterFindingStatus({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.finding_type` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFindingType {
  const Inspector2FilterFindingType({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.first_observed_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFirstObservedAt {
  const Inspector2FilterFirstObservedAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    'end_inclusive': ?endInclusive?.toTfJson(),
    'start_inclusive': ?startInclusive?.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.fix_available` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterFixAvailable {
  const Inspector2FilterFixAvailable({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.inspector_score` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterInspectorScore {
  const Inspector2FilterInspectorScore({
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
final class Inspector2FilterLambdaFunctionExecutionRoleArn {
  const Inspector2FilterLambdaFunctionExecutionRoleArn({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.lambda_function_last_modified_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterLambdaFunctionLastModifiedAt {
  const Inspector2FilterLambdaFunctionLastModifiedAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    'end_inclusive': ?endInclusive?.toTfJson(),
    'start_inclusive': ?startInclusive?.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.lambda_function_layers` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterLambdaFunctionLayers {
  const Inspector2FilterLambdaFunctionLayers({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.lambda_function_name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterLambdaFunctionName {
  const Inspector2FilterLambdaFunctionName({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.lambda_function_runtime` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterLambdaFunctionRuntime {
  const Inspector2FilterLambdaFunctionRuntime({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.last_observed_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterLastObservedAt {
  const Inspector2FilterLastObservedAt({
    this.endInclusive,
    this.startInclusive,
  });

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    'end_inclusive': ?endInclusive?.toTfJson(),
    'start_inclusive': ?startInclusive?.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.network_protocol` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterNetworkProtocol {
  const Inspector2FilterNetworkProtocol({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.port_range` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterPortRange {
  const Inspector2FilterPortRange({
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
final class Inspector2FilterRelatedVulnerabilities {
  const Inspector2FilterRelatedVulnerabilities({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.resource_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterResourceId {
  const Inspector2FilterResourceId({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.resource_tags` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterResourceTags {
  const Inspector2FilterResourceTags({
    required this.comparison,
    required this.key,
    required this.value,
  });

  final Inspector2FilterResourceTagsComparison comparison;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `comparison` — derived from the provider schema description.
extension type const Inspector2FilterResourceTagsComparison._(TfArg<String> _)
    implements TfArg<String> {
  Inspector2FilterResourceTagsComparison.variable(String name)
    : this._(TfArg.variable(name));
  Inspector2FilterResourceTagsComparison.expression(String template)
    : this._(TfArg.expression(template));
  const Inspector2FilterResourceTagsComparison.arg(TfArg<String> arg)
    : this._(arg);

  static const equals = Inspector2FilterResourceTagsComparison._(
    TfArgLiteral('EQUALS'),
  );

  static const List<Inspector2FilterResourceTagsComparison> values = [equals];
}

/// Typed helper for the `filter_criteria.resource_type` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterResourceType {
  const Inspector2FilterResourceType({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.severity` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterSeverity {
  const Inspector2FilterSeverity({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.title` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterTitle {
  const Inspector2FilterTitle({required this.comparison, required this.value});

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.updated_at` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterUpdatedAt {
  const Inspector2FilterUpdatedAt({this.endInclusive, this.startInclusive});

  final TfArg<String>? endInclusive;

  final TfArg<String>? startInclusive;

  Map<String, Object?> encode() => {
    'end_inclusive': ?endInclusive?.toTfJson(),
    'start_inclusive': ?startInclusive?.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vendor_severity` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterVendorSeverity {
  const Inspector2FilterVendorSeverity({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerability_id` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterVulnerabilityId {
  const Inspector2FilterVulnerabilityId({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerability_source` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterVulnerabilitySource {
  const Inspector2FilterVulnerabilitySource({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerable_packages` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterVulnerablePackages {
  const Inspector2FilterVulnerablePackages({
    this.architecture,
    this.epoch,
    this.filePath,
    this.name,
    this.release,
    this.sourceLambdaLayerArn,
    this.sourceLayerHash,
    this.version,
  });

  final List<Inspector2FilterArchitecture>? architecture;

  final List<Inspector2FilterEpoch>? epoch;

  final List<Inspector2FilterFilePath>? filePath;

  final List<Inspector2FilterVulnerablePackagesName>? name;

  final List<Inspector2FilterRelease>? release;

  final List<Inspector2FilterSourceLambdaLayerArn>? sourceLambdaLayerArn;

  final List<Inspector2FilterSourceLayerHash>? sourceLayerHash;

  final List<Inspector2FilterVersion>? version;

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
final class Inspector2FilterArchitecture {
  const Inspector2FilterArchitecture({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerable_packages.epoch` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterEpoch {
  const Inspector2FilterEpoch({
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
final class Inspector2FilterFilePath {
  const Inspector2FilterFilePath({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerable_packages.name` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterVulnerablePackagesName {
  const Inspector2FilterVulnerablePackagesName({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerable_packages.release` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterRelease {
  const Inspector2FilterRelease({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerable_packages.source_lambda_layer_arn` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterSourceLambdaLayerArn {
  const Inspector2FilterSourceLambdaLayerArn({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerable_packages.source_layer_hash` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterSourceLayerHash {
  const Inspector2FilterSourceLayerHash({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria.vulnerable_packages.version` block of
/// `aws_inspector2_filter` (derived from provider schema).
@immutable
final class Inspector2FilterVersion {
  const Inspector2FilterVersion({
    required this.comparison,
    required this.value,
  });

  final Inspector2FilterAwsAccountIdComparison comparison;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'comparison': comparison.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_inspector2_filter`.
final class AwsInspector2Filter extends Resource {
  static const String tfType = 'aws_inspector2_filter';

  AwsInspector2Filter(
    super.localName, {
    required Inspector2FilterAction action,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? reason,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<Inspector2FilterCriteria>? filterCriteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'description': ?description,
           'name': name,
           'reason': ?reason,
           'region': ?region,
           'tags': ?tags,
           if (filterCriteria != null)
             'filter_criteria': TfArg.literal([
               for (final e in filterCriteria) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInspector2FilterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsInspector2Filter>`.
  RefTo<AwsInspector2Filter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `reason` attribute.
  TfRef<String> get reason => TfRef.attribute<String>(this, 'reason');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
