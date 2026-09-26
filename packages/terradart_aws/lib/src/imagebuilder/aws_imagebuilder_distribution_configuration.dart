// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_distribution_configuration`.
const Set<String> _awsImagebuilderDistributionConfigurationSensitive =
    <String>{};

/// Typed helper for the `distribution` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistribution {
  const ImagebuilderDistributionConfigurationDistribution({
    this.licenseConfigurationArns,
    required this.region,
    this.amiDistributionConfiguration,
    this.containerDistributionConfiguration,
    this.fastLaunchConfiguration,
    this.launchTemplateConfiguration,
    this.s3ExportConfiguration,
    this.ssmParameterConfiguration,
  });

  final TfArg<List<Object?>>? licenseConfigurationArns;

  final TfArg<String> region;

  final ImagebuilderDistributionConfigurationDistributionAmiDistributionConfiguration?
  amiDistributionConfiguration;

  final ImagebuilderDistributionConfigurationDistributionContainerDistributionConfiguration?
  containerDistributionConfiguration;

  final List<
    ImagebuilderDistributionConfigurationDistributionFastLaunchConfiguration
  >?
  fastLaunchConfiguration;

  final List<
    ImagebuilderDistributionConfigurationDistributionLaunchTemplateConfiguration
  >?
  launchTemplateConfiguration;

  final ImagebuilderDistributionConfigurationDistributionS3ExportConfiguration?
  s3ExportConfiguration;

  final List<
    ImagebuilderDistributionConfigurationDistributionSsmParameterConfiguration
  >?
  ssmParameterConfiguration;

  Map<String, Object?> encode() => {
    if (licenseConfigurationArns != null)
      'license_configuration_arns': licenseConfigurationArns!.toTfJson(),
    'region': region.toTfJson(),
    if (amiDistributionConfiguration != null)
      'ami_distribution_configuration': amiDistributionConfiguration!.encode(),
    if (containerDistributionConfiguration != null)
      'container_distribution_configuration':
          containerDistributionConfiguration!.encode(),
    if (fastLaunchConfiguration != null)
      'fast_launch_configuration': [
        for (final e in fastLaunchConfiguration!) e.encode(),
      ],
    if (launchTemplateConfiguration != null)
      'launch_template_configuration': [
        for (final e in launchTemplateConfiguration!) e.encode(),
      ],
    if (s3ExportConfiguration != null)
      's3_export_configuration': s3ExportConfiguration!.encode(),
    if (ssmParameterConfiguration != null)
      'ssm_parameter_configuration': [
        for (final e in ssmParameterConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `distribution.ami_distribution_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionAmiDistributionConfiguration {
  const ImagebuilderDistributionConfigurationDistributionAmiDistributionConfiguration({
    this.amiTags,
    this.description,
    this.kmsKeyId,
    this.name,
    this.targetAccountIds,
    this.launchPermission,
  });

  final TfArg<Map<String, String>>? amiTags;

  final TfArg<String>? description;

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? name;

  final TfArg<List<Object?>>? targetAccountIds;

  final ImagebuilderDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission?
  launchPermission;

  Map<String, Object?> encode() => {
    if (amiTags != null) 'ami_tags': amiTags!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (targetAccountIds != null)
      'target_account_ids': targetAccountIds!.toTfJson(),
    if (launchPermission != null)
      'launch_permission': launchPermission!.encode(),
  };
}

/// Typed helper for the `distribution.ami_distribution_configuration.launch_permission` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission {
  const ImagebuilderDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission({
    this.organizationArns,
    this.organizationalUnitArns,
    this.userGroups,
    this.userIds,
  });

  final TfArg<List<Object?>>? organizationArns;

  final TfArg<List<Object?>>? organizationalUnitArns;

  final TfArg<List<Object?>>? userGroups;

  final TfArg<List<Object?>>? userIds;

  Map<String, Object?> encode() => {
    if (organizationArns != null)
      'organization_arns': organizationArns!.toTfJson(),
    if (organizationalUnitArns != null)
      'organizational_unit_arns': organizationalUnitArns!.toTfJson(),
    if (userGroups != null) 'user_groups': userGroups!.toTfJson(),
    if (userIds != null) 'user_ids': userIds!.toTfJson(),
  };
}

/// Typed helper for the `distribution.container_distribution_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionContainerDistributionConfiguration {
  const ImagebuilderDistributionConfigurationDistributionContainerDistributionConfiguration({
    this.containerTags,
    this.description,
    required this.targetRepository,
  });

  final TfArg<List<Object?>>? containerTags;

  final TfArg<String>? description;

  final ImagebuilderDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository
  targetRepository;

  Map<String, Object?> encode() => {
    if (containerTags != null) 'container_tags': containerTags!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'target_repository': targetRepository.encode(),
  };
}

/// Typed helper for the `distribution.container_distribution_configuration.target_repository` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository {
  const ImagebuilderDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  final TfArg<String> repositoryName;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    'repository_name': repositoryName.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `distribution.fast_launch_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionFastLaunchConfiguration {
  const ImagebuilderDistributionConfigurationDistributionFastLaunchConfiguration({
    required this.accountId,
    required this.enabled,
    this.maxParallelLaunches,
    this.launchTemplate,
    this.snapshotConfiguration,
  });

  final TfArg<String> accountId;

  final TfArg<bool> enabled;

  final TfArg<num>? maxParallelLaunches;

  final ImagebuilderDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate?
  launchTemplate;

  final ImagebuilderDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration?
  snapshotConfiguration;

  Map<String, Object?> encode() => {
    'account_id': accountId.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (maxParallelLaunches != null)
      'max_parallel_launches': maxParallelLaunches!.toTfJson(),
    if (launchTemplate != null) 'launch_template': launchTemplate!.encode(),
    if (snapshotConfiguration != null)
      'snapshot_configuration': snapshotConfiguration!.encode(),
  };
}

/// Typed helper for the `distribution.fast_launch_configuration.launch_template` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate {
  const ImagebuilderDistributionConfigurationDistributionFastLaunchConfigurationLaunchTemplate({
    this.launchTemplateId,
    this.launchTemplateName,
    this.launchTemplateVersion,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String>? launchTemplateVersion;

  Map<String, Object?> encode() => {
    if (launchTemplateId != null)
      'launch_template_id': launchTemplateId!.toTfJson(),
    if (launchTemplateName != null)
      'launch_template_name': launchTemplateName!.toTfJson(),
    if (launchTemplateVersion != null)
      'launch_template_version': launchTemplateVersion!.toTfJson(),
  };
}

/// Typed helper for the `distribution.fast_launch_configuration.snapshot_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration {
  const ImagebuilderDistributionConfigurationDistributionFastLaunchConfigurationSnapshotConfiguration({
    this.targetResourceCount,
  });

  final TfArg<num>? targetResourceCount;

  Map<String, Object?> encode() => {
    if (targetResourceCount != null)
      'target_resource_count': targetResourceCount!.toTfJson(),
  };
}

/// Typed helper for the `distribution.launch_template_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionLaunchTemplateConfiguration {
  const ImagebuilderDistributionConfigurationDistributionLaunchTemplateConfiguration({
    this.accountId,
    this.defaultCase,
    required this.launchTemplateId,
  });

  final TfArg<String>? accountId;

  final TfArg<bool>? defaultCase;

  final TfArg<String> launchTemplateId;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
    if (defaultCase != null) 'default': defaultCase!.toTfJson(),
    'launch_template_id': launchTemplateId.toTfJson(),
  };
}

/// Typed helper for the `distribution.s3_export_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionS3ExportConfiguration {
  const ImagebuilderDistributionConfigurationDistributionS3ExportConfiguration({
    required this.diskImageFormat,
    required this.roleName,
    required this.s3Bucket,
    this.s3Prefix,
  });

  final TfArg<String> diskImageFormat;

  final TfArg<String> roleName;

  final TfArg<String> s3Bucket;

  final TfArg<String>? s3Prefix;

  Map<String, Object?> encode() => {
    'disk_image_format': diskImageFormat.toTfJson(),
    'role_name': roleName.toTfJson(),
    's3_bucket': s3Bucket.toTfJson(),
    if (s3Prefix != null) 's3_prefix': s3Prefix!.toTfJson(),
  };
}

/// Typed helper for the `distribution.ssm_parameter_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationDistributionSsmParameterConfiguration {
  const ImagebuilderDistributionConfigurationDistributionSsmParameterConfiguration({
    this.amiAccountId,
    this.dataType,
    required this.parameterName,
  });

  final TfArg<String>? amiAccountId;

  final TfArg<String>? dataType;

  final TfArg<String> parameterName;

  Map<String, Object?> encode() => {
    if (amiAccountId != null) 'ami_account_id': amiAccountId!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
    'parameter_name': parameterName.toTfJson(),
  };
}

/// Factory wrapper for `aws_imagebuilder_distribution_configuration`.
final class AwsImagebuilderDistributionConfiguration extends Resource {
  static const String tfType = 'aws_imagebuilder_distribution_configuration';

  AwsImagebuilderDistributionConfiguration({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<ImagebuilderDistributionConfigurationDistribution>
    distribution,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'distribution': TfArg.literal([
             for (final e in distribution) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsImagebuilderDistributionConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `date_updated` attribute.
  TfRef<String> get dateUpdated =>
      TfRef.attribute<String>(this, 'date_updated');
}
