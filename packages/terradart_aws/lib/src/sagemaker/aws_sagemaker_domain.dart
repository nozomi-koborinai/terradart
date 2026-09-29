// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_domain`.
const Set<String> _awsSagemakerDomainSensitive = <String>{};

/// Sagemaker Domain App Network Access enum for `app_network_access_type`.
enum SagemakerDomainAppNetworkAccessType implements TerraformEnum {
  publicinternetonly('PublicInternetOnly'),
  vpconly('VpcOnly');

  const SagemakerDomainAppNetworkAccessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Sagemaker Domain App Security Group enum for `app_security_group_management`.
enum SagemakerDomainAppSecurityGroupManagement implements TerraformEnum {
  service('Service'),
  customer('Customer');

  const SagemakerDomainAppSecurityGroupManagement(this.terraformValue);
  @override
  final String terraformValue;
}

/// Sagemaker Domain Auth enum for `auth_mode`.
enum SagemakerDomainAuthMode implements TerraformEnum {
  sso('SSO'),
  iam('IAM');

  const SagemakerDomainAuthMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Sagemaker Domain Tag enum for `tag_propagation`.
enum SagemakerDomainTagPropagation implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainTagPropagation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_space_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettings {
  const SagemakerDomainDefaultSpaceSettings({
    required this.executionRole,
    this.securityGroups,
    this.customFileSystemConfig,
    this.customPosixUserConfig,
    this.jupyterLabAppSettings,
    this.jupyterServerAppSettings,
    this.kernelGatewayAppSettings,
    this.spaceStorageSettings,
  });

  final TfArg<String> executionRole;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final List<SagemakerDomainDefaultSpaceSettingsCustomFileSystemConfig>?
  customFileSystemConfig;

  final SagemakerDomainDefaultSpaceSettingsCustomPosixUserConfig?
  customPosixUserConfig;

  final SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettings?
  jupyterLabAppSettings;

  final SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettings?
  jupyterServerAppSettings;

  final SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettings?
  kernelGatewayAppSettings;

  final SagemakerDomainDefaultSpaceSettingsSpaceStorageSettings?
  spaceStorageSettings;

  Map<String, Object?> encode() => {
    'execution_role': executionRole.toTfJson(),
    if (securityGroups != null)
      'security_groups': securityGroups!.encodeAs('id').toTfJson(),
    if (customFileSystemConfig != null)
      'custom_file_system_config': [
        for (final e in customFileSystemConfig!) e.encode(),
      ],
    if (customPosixUserConfig != null)
      'custom_posix_user_config': customPosixUserConfig!.encode(),
    if (jupyterLabAppSettings != null)
      'jupyter_lab_app_settings': jupyterLabAppSettings!.encode(),
    if (jupyterServerAppSettings != null)
      'jupyter_server_app_settings': jupyterServerAppSettings!.encode(),
    if (kernelGatewayAppSettings != null)
      'kernel_gateway_app_settings': kernelGatewayAppSettings!.encode(),
    if (spaceStorageSettings != null)
      'space_storage_settings': spaceStorageSettings!.encode(),
  };
}

/// Typed helper for the `default_space_settings.custom_file_system_config` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsCustomFileSystemConfig {
  const SagemakerDomainDefaultSpaceSettingsCustomFileSystemConfig({
    this.efsFileSystemConfig,
  });

  final SagemakerDomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig?
  efsFileSystemConfig;

  Map<String, Object?> encode() => {
    if (efsFileSystemConfig != null)
      'efs_file_system_config': efsFileSystemConfig!.encode(),
  };
}

/// Typed helper for the `default_space_settings.custom_file_system_config.efs_file_system_config` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig {
  const SagemakerDomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig({
    required this.fileSystemId,
    required this.fileSystemPath,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String> fileSystemPath;

  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'file_system_path': fileSystemPath.toTfJson(),
  };
}

/// Typed helper for the `default_space_settings.custom_posix_user_config` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsCustomPosixUserConfig {
  const SagemakerDomainDefaultSpaceSettingsCustomPosixUserConfig({
    required this.gid,
    required this.uid,
  });

  final TfArg<num> gid;

  final TfArg<num> uid;

  Map<String, Object?> encode() => {
    'gid': gid.toTfJson(),
    'uid': uid.toTfJson(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettings {
  const SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettings({
    this.builtInLifecycleConfigArn,
    this.lifecycleConfigArns,
    this.appLifecycleManagement,
    this.codeRepository,
    this.customImage,
    this.defaultResourceSpec,
    this.emrSettings,
  });

  final TfArg<String>? builtInLifecycleConfigArn;

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement?
  appLifecycleManagement;

  final List<
    SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository
  >?
  codeRepository;

  final List<
    SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsCustomImage
  >?
  customImage;

  final SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  final SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsEmrSettings?
  emrSettings;

  Map<String, Object?> encode() => {
    if (builtInLifecycleConfigArn != null)
      'built_in_lifecycle_config_arn': builtInLifecycleConfigArn!.toTfJson(),
    if (lifecycleConfigArns != null)
      'lifecycle_config_arns': lifecycleConfigArns!.toTfJson(),
    if (appLifecycleManagement != null)
      'app_lifecycle_management': appLifecycleManagement!.encode(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
    if (emrSettings != null) 'emr_settings': emrSettings!.encode(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement {
  const SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  final SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  Map<String, Object?> encode() => {
    if (idleSettings != null) 'idle_settings': idleSettings!.encode(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings {
  const SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings({
    this.idleTimeoutInMinutes,
    this.lifecycleManagement,
    this.maxIdleTimeoutInMinutes,
    this.minIdleTimeoutInMinutes,
  });

  final TfArg<num>? idleTimeoutInMinutes;

  final TfArg<
    SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
  >?
  lifecycleManagement;

  final TfArg<num>? maxIdleTimeoutInMinutes;

  final TfArg<num>? minIdleTimeoutInMinutes;

  Map<String, Object?> encode() => {
    if (idleTimeoutInMinutes != null)
      'idle_timeout_in_minutes': idleTimeoutInMinutes!.toTfJson(),
    if (lifecycleManagement != null)
      'lifecycle_management': lifecycleManagement!.toTfJson(),
    if (maxIdleTimeoutInMinutes != null)
      'max_idle_timeout_in_minutes': maxIdleTimeoutInMinutes!.toTfJson(),
    if (minIdleTimeoutInMinutes != null)
      'min_idle_timeout_in_minutes': minIdleTimeoutInMinutes!.toTfJson(),
  };
}

/// `lifecycle_management` — derived from the provider schema description.
enum SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.code_repository` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository {
  const SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.custom_image` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsCustomImage {
  const SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsCustomImage({
    required this.appImageConfigName,
    required this.imageName,
    this.imageVersionNumber,
  });

  final TfArg<String> appImageConfigName;

  final TfArg<String> imageName;

  final TfArg<num>? imageVersionNumber;

  Map<String, Object?> encode() => {
    'app_image_config_name': appImageConfigName.toTfJson(),
    'image_name': imageName.toTfJson(),
    if (imageVersionNumber != null)
      'image_version_number': imageVersionNumber!.toTfJson(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec {
  const SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.emr_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsEmrSettings {
  const SagemakerDomainDefaultSpaceSettingsJupyterLabAppSettingsEmrSettings({
    this.assumableRoleArns,
    this.executionRoleArns,
  });

  final TfArg<List<Object?>>? assumableRoleArns;

  final TfArg<List<Object?>>? executionRoleArns;

  Map<String, Object?> encode() => {
    if (assumableRoleArns != null)
      'assumable_role_arns': assumableRoleArns!.toTfJson(),
    if (executionRoleArns != null)
      'execution_role_arns': executionRoleArns!.toTfJson(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_server_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettings {
  const SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettings({
    this.lifecycleConfigArns,
    this.codeRepository,
    this.defaultResourceSpec,
  });

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final List<
    SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository
  >?
  codeRepository;

  final SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (lifecycleConfigArns != null)
      'lifecycle_config_arns': lifecycleConfigArns!.toTfJson(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_server_app_settings.code_repository` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository {
  const SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `default_space_settings.jupyter_server_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec {
  const SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_space_settings.kernel_gateway_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettings {
  const SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettings({
    this.lifecycleConfigArns,
    this.customImage,
    this.defaultResourceSpec,
  });

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final List<
    SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage
  >?
  customImage;

  final SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (lifecycleConfigArns != null)
      'lifecycle_config_arns': lifecycleConfigArns!.toTfJson(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `default_space_settings.kernel_gateway_app_settings.custom_image` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage {
  const SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage({
    required this.appImageConfigName,
    required this.imageName,
    this.imageVersionNumber,
  });

  final TfArg<String> appImageConfigName;

  final TfArg<String> imageName;

  final TfArg<num>? imageVersionNumber;

  Map<String, Object?> encode() => {
    'app_image_config_name': appImageConfigName.toTfJson(),
    'image_name': imageName.toTfJson(),
    if (imageVersionNumber != null)
      'image_version_number': imageVersionNumber!.toTfJson(),
  };
}

/// Typed helper for the `default_space_settings.kernel_gateway_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec {
  const SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_space_settings.space_storage_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsSpaceStorageSettings {
  const SagemakerDomainDefaultSpaceSettingsSpaceStorageSettings({
    this.defaultEbsStorageSettings,
  });

  final SagemakerDomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings?
  defaultEbsStorageSettings;

  Map<String, Object?> encode() => {
    if (defaultEbsStorageSettings != null)
      'default_ebs_storage_settings': defaultEbsStorageSettings!.encode(),
  };
}

/// Typed helper for the `default_space_settings.space_storage_settings.default_ebs_storage_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings {
  const SagemakerDomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings({
    required this.defaultEbsVolumeSizeInGb,
    required this.maximumEbsVolumeSizeInGb,
  });

  final TfArg<num> defaultEbsVolumeSizeInGb;

  final TfArg<num> maximumEbsVolumeSizeInGb;

  Map<String, Object?> encode() => {
    'default_ebs_volume_size_in_gb': defaultEbsVolumeSizeInGb.toTfJson(),
    'maximum_ebs_volume_size_in_gb': maximumEbsVolumeSizeInGb.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettings {
  const SagemakerDomainDefaultUserSettings({
    this.autoMountHomeEfs,
    this.defaultLandingUri,
    required this.executionRole,
    this.securityGroups,
    this.studioWebPortal,
    this.canvasAppSettings,
    this.codeEditorAppSettings,
    this.customFileSystemConfig,
    this.customPosixUserConfig,
    this.jupyterLabAppSettings,
    this.jupyterServerAppSettings,
    this.kernelGatewayAppSettings,
    this.rSessionAppSettings,
    this.rStudioServerProAppSettings,
    this.sharingSettings,
    this.spaceStorageSettings,
    this.studioWebPortalSettings,
    this.tensorBoardAppSettings,
  });

  final TfArg<SagemakerDomainDefaultUserSettingsAutoMountHomeEfs>?
  autoMountHomeEfs;

  final TfArg<String>? defaultLandingUri;

  final TfArg<String> executionRole;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<SagemakerDomainDefaultUserSettingsStudioWebPortal>?
  studioWebPortal;

  final SagemakerDomainDefaultUserSettingsCanvasAppSettings? canvasAppSettings;

  final SagemakerDomainDefaultUserSettingsCodeEditorAppSettings?
  codeEditorAppSettings;

  final List<SagemakerDomainDefaultUserSettingsCustomFileSystemConfig>?
  customFileSystemConfig;

  final SagemakerDomainDefaultUserSettingsCustomPosixUserConfig?
  customPosixUserConfig;

  final SagemakerDomainDefaultUserSettingsJupyterLabAppSettings?
  jupyterLabAppSettings;

  final SagemakerDomainDefaultUserSettingsJupyterServerAppSettings?
  jupyterServerAppSettings;

  final SagemakerDomainDefaultUserSettingsKernelGatewayAppSettings?
  kernelGatewayAppSettings;

  final SagemakerDomainDefaultUserSettingsRSessionAppSettings?
  rSessionAppSettings;

  final SagemakerDomainDefaultUserSettingsRStudioServerProAppSettings?
  rStudioServerProAppSettings;

  final SagemakerDomainDefaultUserSettingsSharingSettings? sharingSettings;

  final SagemakerDomainDefaultUserSettingsSpaceStorageSettings?
  spaceStorageSettings;

  final SagemakerDomainDefaultUserSettingsStudioWebPortalSettings?
  studioWebPortalSettings;

  final SagemakerDomainDefaultUserSettingsTensorBoardAppSettings?
  tensorBoardAppSettings;

  Map<String, Object?> encode() => {
    if (autoMountHomeEfs != null)
      'auto_mount_home_efs': autoMountHomeEfs!.toTfJson(),
    if (defaultLandingUri != null)
      'default_landing_uri': defaultLandingUri!.toTfJson(),
    'execution_role': executionRole.toTfJson(),
    if (securityGroups != null)
      'security_groups': securityGroups!.encodeAs('id').toTfJson(),
    if (studioWebPortal != null)
      'studio_web_portal': studioWebPortal!.toTfJson(),
    if (canvasAppSettings != null)
      'canvas_app_settings': canvasAppSettings!.encode(),
    if (codeEditorAppSettings != null)
      'code_editor_app_settings': codeEditorAppSettings!.encode(),
    if (customFileSystemConfig != null)
      'custom_file_system_config': [
        for (final e in customFileSystemConfig!) e.encode(),
      ],
    if (customPosixUserConfig != null)
      'custom_posix_user_config': customPosixUserConfig!.encode(),
    if (jupyterLabAppSettings != null)
      'jupyter_lab_app_settings': jupyterLabAppSettings!.encode(),
    if (jupyterServerAppSettings != null)
      'jupyter_server_app_settings': jupyterServerAppSettings!.encode(),
    if (kernelGatewayAppSettings != null)
      'kernel_gateway_app_settings': kernelGatewayAppSettings!.encode(),
    if (rSessionAppSettings != null)
      'r_session_app_settings': rSessionAppSettings!.encode(),
    if (rStudioServerProAppSettings != null)
      'r_studio_server_pro_app_settings': rStudioServerProAppSettings!.encode(),
    if (sharingSettings != null) 'sharing_settings': sharingSettings!.encode(),
    if (spaceStorageSettings != null)
      'space_storage_settings': spaceStorageSettings!.encode(),
    if (studioWebPortalSettings != null)
      'studio_web_portal_settings': studioWebPortalSettings!.encode(),
    if (tensorBoardAppSettings != null)
      'tensor_board_app_settings': tensorBoardAppSettings!.encode(),
  };
}

/// `auto_mount_home_efs` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsAutoMountHomeEfs
    implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled'),
  defaultasdomain('DefaultAsDomain');

  const SagemakerDomainDefaultUserSettingsAutoMountHomeEfs(this.terraformValue);
  @override
  final String terraformValue;
}

/// `studio_web_portal` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsStudioWebPortal
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsStudioWebPortal(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.canvas_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettings({
    this.directDeploySettings,
    this.emrServerlessSettings,
    this.generativeAiSettings,
    this.identityProviderOauthSettings,
    this.kendraSettings,
    this.modelRegisterSettings,
    this.timeSeriesForecastingSettings,
    this.workspaceSettings,
  });

  final SagemakerDomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings?
  directDeploySettings;

  final SagemakerDomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings?
  emrServerlessSettings;

  final SagemakerDomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings?
  generativeAiSettings;

  final List<
    SagemakerDomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSettings
  >?
  identityProviderOauthSettings;

  final SagemakerDomainDefaultUserSettingsCanvasAppSettingsKendraSettings?
  kendraSettings;

  final SagemakerDomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings?
  modelRegisterSettings;

  final SagemakerDomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings?
  timeSeriesForecastingSettings;

  final SagemakerDomainDefaultUserSettingsCanvasAppSettingsWorkspaceSettings?
  workspaceSettings;

  Map<String, Object?> encode() => {
    if (directDeploySettings != null)
      'direct_deploy_settings': directDeploySettings!.encode(),
    if (emrServerlessSettings != null)
      'emr_serverless_settings': emrServerlessSettings!.encode(),
    if (generativeAiSettings != null)
      'generative_ai_settings': generativeAiSettings!.encode(),
    if (identityProviderOauthSettings != null)
      'identity_provider_oauth_settings': [
        for (final e in identityProviderOauthSettings!) e.encode(),
      ],
    if (kendraSettings != null) 'kendra_settings': kendraSettings!.encode(),
    if (modelRegisterSettings != null)
      'model_register_settings': modelRegisterSettings!.encode(),
    if (timeSeriesForecastingSettings != null)
      'time_series_forecasting_settings': timeSeriesForecastingSettings!
          .encode(),
    if (workspaceSettings != null)
      'workspace_settings': workspaceSettings!.encode(),
  };
}

/// Typed helper for the `default_user_settings.canvas_app_settings.direct_deploy_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings({
    this.status,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.canvas_app_settings.emr_serverless_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings({
    this.executionRoleArn,
    this.status,
  });

  final RefTo<AwsIamRole>? executionRoleArn;

  final TfArg<
    SagemakerDomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    if (executionRoleArn != null)
      'execution_role_arn': executionRoleArn!.encodeAs('arn').toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.canvas_app_settings.generative_ai_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings({
    this.amazonBedrockRoleArn,
  });

  final TfArg<String>? amazonBedrockRoleArn;

  Map<String, Object?> encode() => {
    if (amazonBedrockRoleArn != null)
      'amazon_bedrock_role_arn': amazonBedrockRoleArn!.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.canvas_app_settings.identity_provider_oauth_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSettings({
    this.dataSourceName,
    required this.secretArn,
    this.status,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsDataSourceName
  >?
  dataSourceName;

  final TfArg<String> secretArn;

  final TfArg<
    SagemakerDomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    if (dataSourceName != null) 'data_source_name': dataSourceName!.toTfJson(),
    'secret_arn': secretArn.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// `data_source_name` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsDataSourceName
    implements TerraformEnum {
  salesforcegenie('SalesforceGenie'),
  snowflake('Snowflake');

  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsDataSourceName(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `status` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.canvas_app_settings.kendra_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsKendraSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsKendraSettings({
    this.status,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsCanvasAppSettingsKendraSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsCanvasAppSettingsKendraSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsKendraSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.canvas_app_settings.model_register_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings({
    this.crossAccountModelRegisterRoleArn,
    this.status,
  });

  final TfArg<String>? crossAccountModelRegisterRoleArn;

  final TfArg<
    SagemakerDomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    if (crossAccountModelRegisterRoleArn != null)
      'cross_account_model_register_role_arn': crossAccountModelRegisterRoleArn!
          .toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.canvas_app_settings.time_series_forecasting_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings({
    this.amazonForecastRoleArn,
    this.status,
  });

  final TfArg<String>? amazonForecastRoleArn;

  final TfArg<
    SagemakerDomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    if (amazonForecastRoleArn != null)
      'amazon_forecast_role_arn': amazonForecastRoleArn!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.canvas_app_settings.workspace_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsWorkspaceSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsWorkspaceSettings({
    this.s3ArtifactPath,
    this.s3KmsKeyId,
  });

  final TfArg<String>? s3ArtifactPath;

  final TfArg<String>? s3KmsKeyId;

  Map<String, Object?> encode() => {
    if (s3ArtifactPath != null) 's3_artifact_path': s3ArtifactPath!.toTfJson(),
    if (s3KmsKeyId != null) 's3_kms_key_id': s3KmsKeyId!.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.code_editor_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCodeEditorAppSettings {
  const SagemakerDomainDefaultUserSettingsCodeEditorAppSettings({
    this.builtInLifecycleConfigArn,
    this.lifecycleConfigArns,
    this.appLifecycleManagement,
    this.customImage,
    this.defaultResourceSpec,
  });

  final TfArg<String>? builtInLifecycleConfigArn;

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement?
  appLifecycleManagement;

  final List<
    SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsCustomImage
  >?
  customImage;

  final SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (builtInLifecycleConfigArn != null)
      'built_in_lifecycle_config_arn': builtInLifecycleConfigArn!.toTfJson(),
    if (lifecycleConfigArns != null)
      'lifecycle_config_arns': lifecycleConfigArns!.toTfJson(),
    if (appLifecycleManagement != null)
      'app_lifecycle_management': appLifecycleManagement!.encode(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `default_user_settings.code_editor_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement {
  const SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  final SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  Map<String, Object?> encode() => {
    if (idleSettings != null) 'idle_settings': idleSettings!.encode(),
  };
}

/// Typed helper for the `default_user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings {
  const SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings({
    this.idleTimeoutInMinutes,
    this.lifecycleManagement,
    this.maxIdleTimeoutInMinutes,
    this.minIdleTimeoutInMinutes,
  });

  final TfArg<num>? idleTimeoutInMinutes;

  final TfArg<
    SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
  >?
  lifecycleManagement;

  final TfArg<num>? maxIdleTimeoutInMinutes;

  final TfArg<num>? minIdleTimeoutInMinutes;

  Map<String, Object?> encode() => {
    if (idleTimeoutInMinutes != null)
      'idle_timeout_in_minutes': idleTimeoutInMinutes!.toTfJson(),
    if (lifecycleManagement != null)
      'lifecycle_management': lifecycleManagement!.toTfJson(),
    if (maxIdleTimeoutInMinutes != null)
      'max_idle_timeout_in_minutes': maxIdleTimeoutInMinutes!.toTfJson(),
    if (minIdleTimeoutInMinutes != null)
      'min_idle_timeout_in_minutes': minIdleTimeoutInMinutes!.toTfJson(),
  };
}

/// `lifecycle_management` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.code_editor_app_settings.custom_image` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsCustomImage {
  const SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsCustomImage({
    required this.appImageConfigName,
    required this.imageName,
    this.imageVersionNumber,
  });

  final TfArg<String> appImageConfigName;

  final TfArg<String> imageName;

  final TfArg<num>? imageVersionNumber;

  Map<String, Object?> encode() => {
    'app_image_config_name': appImageConfigName.toTfJson(),
    'image_name': imageName.toTfJson(),
    if (imageVersionNumber != null)
      'image_version_number': imageVersionNumber!.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.code_editor_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpec {
  const SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.custom_file_system_config` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCustomFileSystemConfig {
  const SagemakerDomainDefaultUserSettingsCustomFileSystemConfig({
    this.efsFileSystemConfig,
  });

  final SagemakerDomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig?
  efsFileSystemConfig;

  Map<String, Object?> encode() => {
    if (efsFileSystemConfig != null)
      'efs_file_system_config': efsFileSystemConfig!.encode(),
  };
}

/// Typed helper for the `default_user_settings.custom_file_system_config.efs_file_system_config` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig {
  const SagemakerDomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig({
    required this.fileSystemId,
    required this.fileSystemPath,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String> fileSystemPath;

  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'file_system_path': fileSystemPath.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.custom_posix_user_config` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCustomPosixUserConfig {
  const SagemakerDomainDefaultUserSettingsCustomPosixUserConfig({
    required this.gid,
    required this.uid,
  });

  final TfArg<num> gid;

  final TfArg<num> uid;

  Map<String, Object?> encode() => {
    'gid': gid.toTfJson(),
    'uid': uid.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.jupyter_lab_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterLabAppSettings {
  const SagemakerDomainDefaultUserSettingsJupyterLabAppSettings({
    this.builtInLifecycleConfigArn,
    this.lifecycleConfigArns,
    this.appLifecycleManagement,
    this.codeRepository,
    this.customImage,
    this.defaultResourceSpec,
    this.emrSettings,
  });

  final TfArg<String>? builtInLifecycleConfigArn;

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement?
  appLifecycleManagement;

  final List<
    SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository
  >?
  codeRepository;

  final List<
    SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsCustomImage
  >?
  customImage;

  final SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  final SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings?
  emrSettings;

  Map<String, Object?> encode() => {
    if (builtInLifecycleConfigArn != null)
      'built_in_lifecycle_config_arn': builtInLifecycleConfigArn!.toTfJson(),
    if (lifecycleConfigArns != null)
      'lifecycle_config_arns': lifecycleConfigArns!.toTfJson(),
    if (appLifecycleManagement != null)
      'app_lifecycle_management': appLifecycleManagement!.encode(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
    if (emrSettings != null) 'emr_settings': emrSettings!.encode(),
  };
}

/// Typed helper for the `default_user_settings.jupyter_lab_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement {
  const SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  final SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  Map<String, Object?> encode() => {
    if (idleSettings != null) 'idle_settings': idleSettings!.encode(),
  };
}

/// Typed helper for the `default_user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings {
  const SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings({
    this.idleTimeoutInMinutes,
    this.lifecycleManagement,
    this.maxIdleTimeoutInMinutes,
    this.minIdleTimeoutInMinutes,
  });

  final TfArg<num>? idleTimeoutInMinutes;

  final TfArg<
    SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
  >?
  lifecycleManagement;

  final TfArg<num>? maxIdleTimeoutInMinutes;

  final TfArg<num>? minIdleTimeoutInMinutes;

  Map<String, Object?> encode() => {
    if (idleTimeoutInMinutes != null)
      'idle_timeout_in_minutes': idleTimeoutInMinutes!.toTfJson(),
    if (lifecycleManagement != null)
      'lifecycle_management': lifecycleManagement!.toTfJson(),
    if (maxIdleTimeoutInMinutes != null)
      'max_idle_timeout_in_minutes': maxIdleTimeoutInMinutes!.toTfJson(),
    if (minIdleTimeoutInMinutes != null)
      'min_idle_timeout_in_minutes': minIdleTimeoutInMinutes!.toTfJson(),
  };
}

/// `lifecycle_management` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.jupyter_lab_app_settings.code_repository` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository {
  const SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `default_user_settings.jupyter_lab_app_settings.custom_image` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsCustomImage {
  const SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsCustomImage({
    required this.appImageConfigName,
    required this.imageName,
    this.imageVersionNumber,
  });

  final TfArg<String> appImageConfigName;

  final TfArg<String> imageName;

  final TfArg<num>? imageVersionNumber;

  Map<String, Object?> encode() => {
    'app_image_config_name': appImageConfigName.toTfJson(),
    'image_name': imageName.toTfJson(),
    if (imageVersionNumber != null)
      'image_version_number': imageVersionNumber!.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.jupyter_lab_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec {
  const SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.jupyter_lab_app_settings.emr_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings {
  const SagemakerDomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings({
    this.assumableRoleArns,
    this.executionRoleArns,
  });

  final TfArg<List<Object?>>? assumableRoleArns;

  final TfArg<List<Object?>>? executionRoleArns;

  Map<String, Object?> encode() => {
    if (assumableRoleArns != null)
      'assumable_role_arns': assumableRoleArns!.toTfJson(),
    if (executionRoleArns != null)
      'execution_role_arns': executionRoleArns!.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.jupyter_server_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterServerAppSettings {
  const SagemakerDomainDefaultUserSettingsJupyterServerAppSettings({
    this.lifecycleConfigArns,
    this.codeRepository,
    this.defaultResourceSpec,
  });

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final List<
    SagemakerDomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository
  >?
  codeRepository;

  final SagemakerDomainDefaultUserSettingsJupyterServerAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (lifecycleConfigArns != null)
      'lifecycle_config_arns': lifecycleConfigArns!.toTfJson(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `default_user_settings.jupyter_server_app_settings.code_repository` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository {
  const SagemakerDomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `default_user_settings.jupyter_server_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsJupyterServerAppSettingsDefaultResourceSpec {
  const SagemakerDomainDefaultUserSettingsJupyterServerAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsJupyterServerAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsJupyterServerAppSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultUserSettingsJupyterServerAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.kernel_gateway_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsKernelGatewayAppSettings {
  const SagemakerDomainDefaultUserSettingsKernelGatewayAppSettings({
    this.lifecycleConfigArns,
    this.customImage,
    this.defaultResourceSpec,
  });

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final List<
    SagemakerDomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage
  >?
  customImage;

  final SagemakerDomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (lifecycleConfigArns != null)
      'lifecycle_config_arns': lifecycleConfigArns!.toTfJson(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `default_user_settings.kernel_gateway_app_settings.custom_image` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage {
  const SagemakerDomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage({
    required this.appImageConfigName,
    required this.imageName,
    this.imageVersionNumber,
  });

  final TfArg<String> appImageConfigName;

  final TfArg<String> imageName;

  final TfArg<num>? imageVersionNumber;

  Map<String, Object?> encode() => {
    'app_image_config_name': appImageConfigName.toTfJson(),
    'image_name': imageName.toTfJson(),
    if (imageVersionNumber != null)
      'image_version_number': imageVersionNumber!.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.kernel_gateway_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpec {
  const SagemakerDomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.r_session_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsRSessionAppSettings {
  const SagemakerDomainDefaultUserSettingsRSessionAppSettings({
    this.customImage,
    this.defaultResourceSpec,
  });

  final List<SagemakerDomainDefaultUserSettingsRSessionAppSettingsCustomImage>?
  customImage;

  final SagemakerDomainDefaultUserSettingsRSessionAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `default_user_settings.r_session_app_settings.custom_image` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsRSessionAppSettingsCustomImage {
  const SagemakerDomainDefaultUserSettingsRSessionAppSettingsCustomImage({
    required this.appImageConfigName,
    required this.imageName,
    this.imageVersionNumber,
  });

  final TfArg<String> appImageConfigName;

  final TfArg<String> imageName;

  final TfArg<num>? imageVersionNumber;

  Map<String, Object?> encode() => {
    'app_image_config_name': appImageConfigName.toTfJson(),
    'image_name': imageName.toTfJson(),
    if (imageVersionNumber != null)
      'image_version_number': imageVersionNumber!.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.r_session_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsRSessionAppSettingsDefaultResourceSpec {
  const SagemakerDomainDefaultUserSettingsRSessionAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsRSessionAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsRSessionAppSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultUserSettingsRSessionAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.r_studio_server_pro_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsRStudioServerProAppSettings {
  const SagemakerDomainDefaultUserSettingsRStudioServerProAppSettings({
    this.accessStatus,
    this.userGroup,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsRStudioServerProAppSettingsAccessStatus
  >?
  accessStatus;

  final TfArg<
    SagemakerDomainDefaultUserSettingsRStudioServerProAppSettingsUserGroup
  >?
  userGroup;

  Map<String, Object?> encode() => {
    if (accessStatus != null) 'access_status': accessStatus!.toTfJson(),
    if (userGroup != null) 'user_group': userGroup!.toTfJson(),
  };
}

/// `access_status` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsRStudioServerProAppSettingsAccessStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDefaultUserSettingsRStudioServerProAppSettingsAccessStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `user_group` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsRStudioServerProAppSettingsUserGroup
    implements TerraformEnum {
  rStudioAdmin('R_STUDIO_ADMIN'),
  rStudioUser('R_STUDIO_USER');

  const SagemakerDomainDefaultUserSettingsRStudioServerProAppSettingsUserGroup(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.sharing_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsSharingSettings {
  const SagemakerDomainDefaultUserSettingsSharingSettings({
    this.notebookOutputOption,
    this.s3KmsKeyId,
    this.s3OutputPath,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsSharingSettingsNotebookOutputOption
  >?
  notebookOutputOption;

  final TfArg<String>? s3KmsKeyId;

  final TfArg<String>? s3OutputPath;

  Map<String, Object?> encode() => {
    if (notebookOutputOption != null)
      'notebook_output_option': notebookOutputOption!.toTfJson(),
    if (s3KmsKeyId != null) 's3_kms_key_id': s3KmsKeyId!.toTfJson(),
    if (s3OutputPath != null) 's3_output_path': s3OutputPath!.toTfJson(),
  };
}

/// `notebook_output_option` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsSharingSettingsNotebookOutputOption
    implements TerraformEnum {
  allowed('Allowed'),
  disabled('Disabled');

  const SagemakerDomainDefaultUserSettingsSharingSettingsNotebookOutputOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.space_storage_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsSpaceStorageSettings {
  const SagemakerDomainDefaultUserSettingsSpaceStorageSettings({
    this.defaultEbsStorageSettings,
  });

  final SagemakerDomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings?
  defaultEbsStorageSettings;

  Map<String, Object?> encode() => {
    if (defaultEbsStorageSettings != null)
      'default_ebs_storage_settings': defaultEbsStorageSettings!.encode(),
  };
}

/// Typed helper for the `default_user_settings.space_storage_settings.default_ebs_storage_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings {
  const SagemakerDomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings({
    required this.defaultEbsVolumeSizeInGb,
    required this.maximumEbsVolumeSizeInGb,
  });

  final TfArg<num> defaultEbsVolumeSizeInGb;

  final TfArg<num> maximumEbsVolumeSizeInGb;

  Map<String, Object?> encode() => {
    'default_ebs_volume_size_in_gb': defaultEbsVolumeSizeInGb.toTfJson(),
    'maximum_ebs_volume_size_in_gb': maximumEbsVolumeSizeInGb.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.studio_web_portal_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsStudioWebPortalSettings {
  const SagemakerDomainDefaultUserSettingsStudioWebPortalSettings({
    this.hiddenAppTypes,
    this.hiddenInstanceTypes,
    this.hiddenMlTools,
  });

  final List<
    TfArg<
      SagemakerDomainDefaultUserSettingsStudioWebPortalSettingsHiddenAppTypes
    >
  >?
  hiddenAppTypes;

  final List<
    TfArg<
      SagemakerDomainDefaultUserSettingsStudioWebPortalSettingsHiddenInstanceTypes
    >
  >?
  hiddenInstanceTypes;

  final List<
    TfArg<
      SagemakerDomainDefaultUserSettingsStudioWebPortalSettingsHiddenMlTools
    >
  >?
  hiddenMlTools;

  Map<String, Object?> encode() => {
    if (hiddenAppTypes != null)
      'hidden_app_types': [for (final e in hiddenAppTypes!) e.toTfJson()],
    if (hiddenInstanceTypes != null)
      'hidden_instance_types': [
        for (final e in hiddenInstanceTypes!) e.toTfJson(),
      ],
    if (hiddenMlTools != null)
      'hidden_ml_tools': [for (final e in hiddenMlTools!) e.toTfJson()],
  };
}

/// `hidden_app_types` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsStudioWebPortalSettingsHiddenAppTypes
    implements TerraformEnum {
  jupyterserver('JupyterServer'),
  kernelgateway('KernelGateway'),
  detailedprofiler('DetailedProfiler'),
  tensorboard('TensorBoard'),
  codeeditor('CodeEditor'),
  jupyterlab('JupyterLab'),
  rstudioserverpro('RStudioServerPro'),
  rsessiongateway('RSessionGateway'),
  canvas('Canvas');

  const SagemakerDomainDefaultUserSettingsStudioWebPortalSettingsHiddenAppTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `hidden_instance_types` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsStudioWebPortalSettingsHiddenInstanceTypes
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultUserSettingsStudioWebPortalSettingsHiddenInstanceTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `hidden_ml_tools` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsStudioWebPortalSettingsHiddenMlTools
    implements TerraformEnum {
  datawrangler('DataWrangler'),
  featurestore('FeatureStore'),
  emrclusters('EmrClusters'),
  automl('AutoMl'),
  experiments('Experiments'),
  training('Training'),
  modelevaluation('ModelEvaluation'),
  pipelines('Pipelines'),
  models('Models'),
  jumpstart('JumpStart'),
  inferencerecommender('InferenceRecommender'),
  endpoints('Endpoints'),
  projects('Projects'),
  inferenceoptimization('InferenceOptimization'),
  performanceevaluation('PerformanceEvaluation'),
  lakeraguard('LakeraGuard'),
  comet('Comet'),
  deepchecksllmevaluation('DeepchecksLLMEvaluation'),
  fiddler('Fiddler'),
  hyperpodclusters('HyperPodClusters'),
  runninginstances('RunningInstances'),
  datasets('Datasets'),
  evaluators('Evaluators');

  const SagemakerDomainDefaultUserSettingsStudioWebPortalSettingsHiddenMlTools(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `default_user_settings.tensor_board_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsTensorBoardAppSettings {
  const SagemakerDomainDefaultUserSettingsTensorBoardAppSettings({
    this.defaultResourceSpec,
  });

  final SagemakerDomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `default_user_settings.tensor_board_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpec {
  const SagemakerDomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `domain_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDomainSettings {
  const SagemakerDomainDomainSettings({
    this.executionRoleIdentityConfig,
    this.securityGroupIds,
    this.dockerSettings,
    this.rStudioServerProDomainSettings,
    this.trustedIdentityPropagationSettings,
  });

  final TfArg<SagemakerDomainDomainSettingsExecutionRoleIdentityConfig>?
  executionRoleIdentityConfig;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final SagemakerDomainDomainSettingsDockerSettings? dockerSettings;

  final SagemakerDomainDomainSettingsRStudioServerProDomainSettings?
  rStudioServerProDomainSettings;

  final SagemakerDomainDomainSettingsTrustedIdentityPropagationSettings?
  trustedIdentityPropagationSettings;

  Map<String, Object?> encode() => {
    if (executionRoleIdentityConfig != null)
      'execution_role_identity_config': executionRoleIdentityConfig!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.encodeAs('id').toTfJson(),
    if (dockerSettings != null) 'docker_settings': dockerSettings!.encode(),
    if (rStudioServerProDomainSettings != null)
      'r_studio_server_pro_domain_settings': rStudioServerProDomainSettings!
          .encode(),
    if (trustedIdentityPropagationSettings != null)
      'trusted_identity_propagation_settings':
          trustedIdentityPropagationSettings!.encode(),
  };
}

/// `execution_role_identity_config` — derived from the provider schema description.
enum SagemakerDomainDomainSettingsExecutionRoleIdentityConfig
    implements TerraformEnum {
  userProfileName('USER_PROFILE_NAME'),
  disabled('DISABLED');

  const SagemakerDomainDomainSettingsExecutionRoleIdentityConfig(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `domain_settings.docker_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDomainSettingsDockerSettings {
  const SagemakerDomainDomainSettingsDockerSettings({
    this.enableDockerAccess,
    this.vpcOnlyTrustedAccounts,
  });

  final TfArg<SagemakerDomainDomainSettingsDockerSettingsEnableDockerAccess>?
  enableDockerAccess;

  final TfArg<List<Object?>>? vpcOnlyTrustedAccounts;

  Map<String, Object?> encode() => {
    if (enableDockerAccess != null)
      'enable_docker_access': enableDockerAccess!.toTfJson(),
    if (vpcOnlyTrustedAccounts != null)
      'vpc_only_trusted_accounts': vpcOnlyTrustedAccounts!.toTfJson(),
  };
}

/// `enable_docker_access` — derived from the provider schema description.
enum SagemakerDomainDomainSettingsDockerSettingsEnableDockerAccess
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDomainSettingsDockerSettingsEnableDockerAccess(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `domain_settings.r_studio_server_pro_domain_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDomainSettingsRStudioServerProDomainSettings {
  const SagemakerDomainDomainSettingsRStudioServerProDomainSettings({
    required this.domainExecutionRoleArn,
    this.rStudioConnectUrl,
    this.rStudioPackageManagerUrl,
    this.defaultResourceSpec,
  });

  final TfArg<String> domainExecutionRoleArn;

  final TfArg<String>? rStudioConnectUrl;

  final TfArg<String>? rStudioPackageManagerUrl;

  final SagemakerDomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    'domain_execution_role_arn': domainExecutionRoleArn.toTfJson(),
    if (rStudioConnectUrl != null)
      'r_studio_connect_url': rStudioConnectUrl!.toTfJson(),
    if (rStudioPackageManagerUrl != null)
      'r_studio_package_manager_url': rStudioPackageManagerUrl!.toTfJson(),
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `domain_settings.r_studio_server_pro_domain_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpec {
  const SagemakerDomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<
    SagemakerDomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (lifecycleConfigArn != null)
      'lifecycle_config_arn': lifecycleConfigArn!.toTfJson(),
    if (sagemakerImageArn != null)
      'sagemaker_image_arn': sagemakerImageArn!.toTfJson(),
    if (sagemakerImageVersionAlias != null)
      'sagemaker_image_version_alias': sagemakerImageVersionAlias!.toTfJson(),
    if (sagemakerImageVersionArn != null)
      'sagemaker_image_version_arn': sagemakerImageVersionArn!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpecInstanceType
    implements TerraformEnum {
  system('system'),
  mlT3Micro('ml.t3.micro'),
  mlT3Small('ml.t3.small'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p8xlarge('ml.m5.8xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p16xlarge('ml.m5.16xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p12xlarge('ml.c5.12xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5p24xlarge('ml.c5.24xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlGeospatialInteractive('ml.geospatial.interactive'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge');

  const SagemakerDomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `domain_settings.trusted_identity_propagation_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDomainSettingsTrustedIdentityPropagationSettings {
  const SagemakerDomainDomainSettingsTrustedIdentityPropagationSettings({
    required this.status,
  });

  final TfArg<
    SagemakerDomainDomainSettingsTrustedIdentityPropagationSettingsStatus
  >
  status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
enum SagemakerDomainDomainSettingsTrustedIdentityPropagationSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerDomainDomainSettingsTrustedIdentityPropagationSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `retention_policy` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainRetentionPolicy {
  const SagemakerDomainRetentionPolicy({this.homeEfsFileSystem});

  final TfArg<SagemakerDomainRetentionPolicyHomeEfsFileSystem>?
  homeEfsFileSystem;

  Map<String, Object?> encode() => {
    if (homeEfsFileSystem != null)
      'home_efs_file_system': homeEfsFileSystem!.toTfJson(),
  };
}

/// `home_efs_file_system` — derived from the provider schema description.
enum SagemakerDomainRetentionPolicyHomeEfsFileSystem implements TerraformEnum {
  retain('Retain'),
  delete('Delete');

  const SagemakerDomainRetentionPolicyHomeEfsFileSystem(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sagemaker_domain`.
final class AwsSagemakerDomain extends Resource {
  static const String tfType = 'aws_sagemaker_domain';

  AwsSagemakerDomain({
    required super.localName,
    TfArg<SagemakerDomainAppNetworkAccessType>? appNetworkAccessType,
    TfArg<SagemakerDomainAppSecurityGroupManagement>?
    appSecurityGroupManagement,
    required TfArg<SagemakerDomainAuthMode> authMode,
    required TfArg<String> domainName,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? region,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<SagemakerDomainTagPropagation>? tagPropagation,
    TfArg<Map<String, String>>? tags,
    required RefTo<AwsVpc> vpcId,
    SagemakerDomainDefaultSpaceSettings? defaultSpaceSettings,
    required SagemakerDomainDefaultUserSettings defaultUserSettings,
    SagemakerDomainDomainSettings? domainSettings,
    SagemakerDomainRetentionPolicy? retentionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (appNetworkAccessType != null)
             'app_network_access_type': appNetworkAccessType,
           if (appSecurityGroupManagement != null)
             'app_security_group_management': appSecurityGroupManagement,
           'auth_mode': authMode,
           'domain_name': domainName,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId.encodeAs('arn'),
           if (region != null) 'region': region,
           'subnet_ids': subnetIds.encodeAs('id'),
           if (tagPropagation != null) 'tag_propagation': tagPropagation,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId.encodeAs('id'),
           if (defaultSpaceSettings != null)
             'default_space_settings': TfArg.literal(
               defaultSpaceSettings.encode(),
             ),
           'default_user_settings': TfArg.literal(defaultUserSettings.encode()),
           if (domainSettings != null)
             'domain_settings': TfArg.literal(domainSettings.encode()),
           if (retentionPolicy != null)
             'retention_policy': TfArg.literal(retentionPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerDomain>`.
  RefTo<AwsSagemakerDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `home_efs_file_system_id` attribute.
  TfRef<String> get homeEfsFileSystemId =>
      TfRef.attribute<String>(this, 'home_efs_file_system_id');

  /// Reference to `security_group_id_for_domain_boundary` attribute.
  TfRef<String> get securityGroupIdForDomainBoundary =>
      TfRef.attribute<String>(this, 'security_group_id_for_domain_boundary');

  /// Reference to `single_sign_on_application_arn` attribute.
  TfRef<String> get singleSignOnApplicationArn =>
      TfRef.attribute<String>(this, 'single_sign_on_application_arn');

  /// Reference to `single_sign_on_managed_application_instance_id` attribute.
  TfRef<String> get singleSignOnManagedApplicationInstanceId =>
      TfRef.attribute<String>(
        this,
        'single_sign_on_managed_application_instance_id',
      );

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
