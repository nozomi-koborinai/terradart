// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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

  final TfArg<List<String>>? licenseConfigurationArns;

  final TfArg<String> region;

  final ImagebuilderDistributionConfigurationAmiDistributionConfiguration?
  amiDistributionConfiguration;

  final ImagebuilderDistributionConfigurationContainerDistributionConfiguration?
  containerDistributionConfiguration;

  final List<ImagebuilderDistributionConfigurationFastLaunchConfiguration>?
  fastLaunchConfiguration;

  final List<ImagebuilderDistributionConfigurationLaunchTemplateConfiguration>?
  launchTemplateConfiguration;

  final ImagebuilderDistributionConfigurationS3ExportConfiguration?
  s3ExportConfiguration;

  final List<ImagebuilderDistributionConfigurationSsmParameterConfiguration>?
  ssmParameterConfiguration;

  Map<String, Object?> encode() => {
    'license_configuration_arns': ?licenseConfigurationArns?.toTfJson(),
    'region': region.toTfJson(),
    'ami_distribution_configuration': ?amiDistributionConfiguration?.encode(),
    'container_distribution_configuration': ?containerDistributionConfiguration
        ?.encode(),
    if (fastLaunchConfiguration != null)
      'fast_launch_configuration': [
        for (final e in fastLaunchConfiguration!) e.encode(),
      ],
    if (launchTemplateConfiguration != null)
      'launch_template_configuration': [
        for (final e in launchTemplateConfiguration!) e.encode(),
      ],
    's3_export_configuration': ?s3ExportConfiguration?.encode(),
    if (ssmParameterConfiguration != null)
      'ssm_parameter_configuration': [
        for (final e in ssmParameterConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `distribution.ami_distribution_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationAmiDistributionConfiguration {
  const ImagebuilderDistributionConfigurationAmiDistributionConfiguration({
    this.amiTags,
    this.description,
    this.kmsKeyId,
    this.name,
    this.targetAccountIds,
    this.launchPermission,
  });

  final TfArg<Map<String, String>>? amiTags;

  final TfArg<String>? description;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String>? name;

  final TfArg<List<String>>? targetAccountIds;

  final ImagebuilderDistributionConfigurationLaunchPermission? launchPermission;

  Map<String, Object?> encode() => {
    'ami_tags': ?amiTags?.toTfJson(),
    'description': ?description?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'name': ?name?.toTfJson(),
    'target_account_ids': ?targetAccountIds?.toTfJson(),
    'launch_permission': ?launchPermission?.encode(),
  };
}

/// Typed helper for the `distribution.ami_distribution_configuration.launch_permission` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationLaunchPermission {
  const ImagebuilderDistributionConfigurationLaunchPermission({
    this.organizationArns,
    this.organizationalUnitArns,
    this.userGroups,
    this.userIds,
  });

  final TfArg<List<String>>? organizationArns;

  final TfArg<List<String>>? organizationalUnitArns;

  final TfArg<List<String>>? userGroups;

  final TfArg<List<String>>? userIds;

  Map<String, Object?> encode() => {
    'organization_arns': ?organizationArns?.toTfJson(),
    'organizational_unit_arns': ?organizationalUnitArns?.toTfJson(),
    'user_groups': ?userGroups?.toTfJson(),
    'user_ids': ?userIds?.toTfJson(),
  };
}

/// Typed helper for the `distribution.container_distribution_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationContainerDistributionConfiguration {
  const ImagebuilderDistributionConfigurationContainerDistributionConfiguration({
    this.containerTags,
    this.description,
    required this.targetRepository,
  });

  final TfArg<List<String>>? containerTags;

  final TfArg<String>? description;

  final ImagebuilderDistributionConfigurationTargetRepository targetRepository;

  Map<String, Object?> encode() => {
    'container_tags': ?containerTags?.toTfJson(),
    'description': ?description?.toTfJson(),
    'target_repository': targetRepository.encode(),
  };
}

/// Typed helper for the `distribution.container_distribution_configuration.target_repository` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationTargetRepository {
  const ImagebuilderDistributionConfigurationTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  final TfArg<String> repositoryName;

  final TfArg<ImagebuilderDistributionConfigurationService> service;

  Map<String, Object?> encode() => {
    'repository_name': repositoryName.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// `service` — derived from the provider schema description.
enum ImagebuilderDistributionConfigurationService implements TerraformEnum {
  ecr('ECR');

  const ImagebuilderDistributionConfigurationService(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `distribution.fast_launch_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationFastLaunchConfiguration {
  const ImagebuilderDistributionConfigurationFastLaunchConfiguration({
    required this.accountId,
    required this.enabled,
    this.maxParallelLaunches,
    this.launchTemplate,
    this.snapshotConfiguration,
  });

  final TfArg<String> accountId;

  final TfArg<bool> enabled;

  final TfArg<num>? maxParallelLaunches;

  final ImagebuilderDistributionConfigurationLaunchTemplate? launchTemplate;

  final ImagebuilderDistributionConfigurationSnapshotConfiguration?
  snapshotConfiguration;

  Map<String, Object?> encode() => {
    'account_id': accountId.toTfJson(),
    'enabled': enabled.toTfJson(),
    'max_parallel_launches': ?maxParallelLaunches?.toTfJson(),
    'launch_template': ?launchTemplate?.encode(),
    'snapshot_configuration': ?snapshotConfiguration?.encode(),
  };
}

/// Typed helper for the `distribution.fast_launch_configuration.launch_template` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationLaunchTemplate {
  const ImagebuilderDistributionConfigurationLaunchTemplate({
    this.launchTemplateId,
    this.launchTemplateName,
    this.launchTemplateVersion,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String>? launchTemplateVersion;

  Map<String, Object?> encode() => {
    'launch_template_id': ?launchTemplateId?.toTfJson(),
    'launch_template_name': ?launchTemplateName?.toTfJson(),
    'launch_template_version': ?launchTemplateVersion?.toTfJson(),
  };
}

/// Typed helper for the `distribution.fast_launch_configuration.snapshot_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationSnapshotConfiguration {
  const ImagebuilderDistributionConfigurationSnapshotConfiguration({
    this.targetResourceCount,
  });

  final TfArg<num>? targetResourceCount;

  Map<String, Object?> encode() => {
    'target_resource_count': ?targetResourceCount?.toTfJson(),
  };
}

/// Typed helper for the `distribution.launch_template_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationLaunchTemplateConfiguration {
  const ImagebuilderDistributionConfigurationLaunchTemplateConfiguration({
    this.accountId,
    this.defaultCase,
    required this.launchTemplateId,
  });

  final TfArg<String>? accountId;

  final TfArg<bool>? defaultCase;

  final TfArg<String> launchTemplateId;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.toTfJson(),
    'default': ?defaultCase?.toTfJson(),
    'launch_template_id': launchTemplateId.toTfJson(),
  };
}

/// Typed helper for the `distribution.s3_export_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationS3ExportConfiguration {
  const ImagebuilderDistributionConfigurationS3ExportConfiguration({
    required this.diskImageFormat,
    required this.roleName,
    required this.s3Bucket,
    this.s3Prefix,
  });

  final TfArg<ImagebuilderDistributionConfigurationDiskImageFormat>
  diskImageFormat;

  final RefTo<AwsIamRole> roleName;

  final RefTo<AwsS3Bucket> s3Bucket;

  final TfArg<String>? s3Prefix;

  Map<String, Object?> encode() => {
    'disk_image_format': diskImageFormat.toTfJson(),
    'role_name': roleName.encodeAs('name').toTfJson(),
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
    's3_prefix': ?s3Prefix?.toTfJson(),
  };
}

/// `disk_image_format` — derived from the provider schema description.
enum ImagebuilderDistributionConfigurationDiskImageFormat
    implements TerraformEnum {
  vmdk('VMDK'),
  raw('RAW'),
  vhd('VHD');

  const ImagebuilderDistributionConfigurationDiskImageFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `distribution.ssm_parameter_configuration` block of
/// `aws_imagebuilder_distribution_configuration` (derived from provider schema).
@immutable
final class ImagebuilderDistributionConfigurationSsmParameterConfiguration {
  const ImagebuilderDistributionConfigurationSsmParameterConfiguration({
    this.amiAccountId,
    this.dataType,
    required this.parameterName,
  });

  final TfArg<String>? amiAccountId;

  final TfArg<ImagebuilderDistributionConfigurationDataType>? dataType;

  final TfArg<String> parameterName;

  Map<String, Object?> encode() => {
    'ami_account_id': ?amiAccountId?.toTfJson(),
    'data_type': ?dataType?.toTfJson(),
    'parameter_name': parameterName.toTfJson(),
  };
}

/// `data_type` — derived from the provider schema description.
enum ImagebuilderDistributionConfigurationDataType implements TerraformEnum {
  text('text'),
  awsEc2Image('aws:ec2:image');

  const ImagebuilderDistributionConfigurationDataType(this.terraformValue);
  @override
  final String terraformValue;
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
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'distribution': TfArg.literal([
             for (final e in distribution) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsImagebuilderDistributionConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsImagebuilderDistributionConfiguration>`.
  RefTo<AwsImagebuilderDistributionConfiguration> get ref => RefTo.of(this);

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

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
