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
extension type const SagemakerDomainAppNetworkAccessType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainAppNetworkAccessType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainAppNetworkAccessType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainAppNetworkAccessType.arg(TfArg<String> arg)
    : this._(arg);

  static const publicinternetonly = SagemakerDomainAppNetworkAccessType._(
    TfArgLiteral('PublicInternetOnly'),
  );
  static const vpconly = SagemakerDomainAppNetworkAccessType._(
    TfArgLiteral('VpcOnly'),
  );

  static const List<SagemakerDomainAppNetworkAccessType> values = [
    publicinternetonly,
    vpconly,
  ];
}

/// Sagemaker Domain App Security Group enum for `app_security_group_management`.
extension type const SagemakerDomainAppSecurityGroupManagement._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerDomainAppSecurityGroupManagement.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainAppSecurityGroupManagement.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainAppSecurityGroupManagement.arg(TfArg<String> arg)
    : this._(arg);

  static const service = SagemakerDomainAppSecurityGroupManagement._(
    TfArgLiteral('Service'),
  );
  static const customer = SagemakerDomainAppSecurityGroupManagement._(
    TfArgLiteral('Customer'),
  );

  static const List<SagemakerDomainAppSecurityGroupManagement> values = [
    service,
    customer,
  ];
}

/// Sagemaker Domain Auth enum for `auth_mode`.
extension type const SagemakerDomainAuthMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainAuthMode.variable(String name) : this._(TfArg.variable(name));
  SagemakerDomainAuthMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainAuthMode.arg(TfArg<String> arg) : this._(arg);

  static const sso = SagemakerDomainAuthMode._(TfArgLiteral('SSO'));
  static const iam = SagemakerDomainAuthMode._(TfArgLiteral('IAM'));

  static const List<SagemakerDomainAuthMode> values = [sso, iam];
}

/// Sagemaker Domain Tag enum for `tag_propagation`.
extension type const SagemakerDomainTagPropagation._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainTagPropagation.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainTagPropagation.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainTagPropagation.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SagemakerDomainTagPropagation._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SagemakerDomainTagPropagation._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerDomainTagPropagation> values = [enabled, disabled];
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

  final List<SagemakerDomainCustomFileSystemConfig>? customFileSystemConfig;

  final SagemakerDomainCustomPosixUserConfig? customPosixUserConfig;

  final SagemakerDomainJupyterLabAppSettings? jupyterLabAppSettings;

  final SagemakerDomainJupyterServerAppSettings? jupyterServerAppSettings;

  final SagemakerDomainKernelGatewayAppSettings? kernelGatewayAppSettings;

  final SagemakerDomainSpaceStorageSettings? spaceStorageSettings;

  @internal
  Map<String, Object?> encode() => {
    'execution_role': executionRole.toTfJson(),
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    if (customFileSystemConfig != null)
      'custom_file_system_config': [
        for (final e in customFileSystemConfig!) e.encode(),
      ],
    'custom_posix_user_config': ?customPosixUserConfig?.encode(),
    'jupyter_lab_app_settings': ?jupyterLabAppSettings?.encode(),
    'jupyter_server_app_settings': ?jupyterServerAppSettings?.encode(),
    'kernel_gateway_app_settings': ?kernelGatewayAppSettings?.encode(),
    'space_storage_settings': ?spaceStorageSettings?.encode(),
  };
}

/// Typed helper for the `default_space_settings.custom_file_system_config` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainCustomFileSystemConfig {
  const SagemakerDomainCustomFileSystemConfig({this.efsFileSystemConfig});

  final SagemakerDomainEfsFileSystemConfig? efsFileSystemConfig;

  @internal
  Map<String, Object?> encode() => {
    'efs_file_system_config': ?efsFileSystemConfig?.encode(),
  };
}

/// Typed helper for the `default_space_settings.custom_file_system_config.efs_file_system_config` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainEfsFileSystemConfig {
  const SagemakerDomainEfsFileSystemConfig({
    required this.fileSystemId,
    required this.fileSystemPath,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String> fileSystemPath;

  @internal
  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    'file_system_path': fileSystemPath.toTfJson(),
  };
}

/// Typed helper for the `default_space_settings.custom_posix_user_config` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainCustomPosixUserConfig {
  const SagemakerDomainCustomPosixUserConfig({
    required this.gid,
    required this.uid,
  });

  final TfArg<num> gid;

  final TfArg<num> uid;

  @internal
  Map<String, Object?> encode() => {
    'gid': gid.toTfJson(),
    'uid': uid.toTfJson(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainJupyterLabAppSettings {
  const SagemakerDomainJupyterLabAppSettings({
    this.builtInLifecycleConfigArn,
    this.lifecycleConfigArns,
    this.appLifecycleManagement,
    this.codeRepository,
    this.customImage,
    this.defaultResourceSpec,
    this.emrSettings,
  });

  final TfArg<String>? builtInLifecycleConfigArn;

  final TfArg<List<String>>? lifecycleConfigArns;

  final SagemakerDomainAppLifecycleManagement? appLifecycleManagement;

  final List<SagemakerDomainCodeRepository>? codeRepository;

  final List<SagemakerDomainCustomImage>? customImage;

  final SagemakerDomainDefaultResourceSpec? defaultResourceSpec;

  final SagemakerDomainEmrSettings? emrSettings;

  @internal
  Map<String, Object?> encode() => {
    'built_in_lifecycle_config_arn': ?builtInLifecycleConfigArn?.toTfJson(),
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    'app_lifecycle_management': ?appLifecycleManagement?.encode(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
    'emr_settings': ?emrSettings?.encode(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainAppLifecycleManagement {
  const SagemakerDomainAppLifecycleManagement({this.idleSettings});

  final SagemakerDomainIdleSettings? idleSettings;

  @internal
  Map<String, Object?> encode() => {'idle_settings': ?idleSettings?.encode()};
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainIdleSettings {
  const SagemakerDomainIdleSettings({
    this.idleTimeoutInMinutes,
    this.lifecycleManagement,
    this.maxIdleTimeoutInMinutes,
    this.minIdleTimeoutInMinutes,
  });

  final TfArg<num>? idleTimeoutInMinutes;

  final SagemakerDomainLifecycleManagement? lifecycleManagement;

  final TfArg<num>? maxIdleTimeoutInMinutes;

  final TfArg<num>? minIdleTimeoutInMinutes;

  @internal
  Map<String, Object?> encode() => {
    'idle_timeout_in_minutes': ?idleTimeoutInMinutes?.toTfJson(),
    'lifecycle_management': ?lifecycleManagement?.toTfJson(),
    'max_idle_timeout_in_minutes': ?maxIdleTimeoutInMinutes?.toTfJson(),
    'min_idle_timeout_in_minutes': ?minIdleTimeoutInMinutes?.toTfJson(),
  };
}

/// `lifecycle_management` — derived from the provider schema description.
extension type const SagemakerDomainLifecycleManagement._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainLifecycleManagement.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainLifecycleManagement.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainLifecycleManagement.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SagemakerDomainLifecycleManagement._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SagemakerDomainLifecycleManagement._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerDomainLifecycleManagement> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.code_repository` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainCodeRepository {
  const SagemakerDomainCodeRepository({required this.repositoryUrl});

  final TfArg<String> repositoryUrl;

  @internal
  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.custom_image` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainCustomImage {
  const SagemakerDomainCustomImage({
    required this.appImageConfigName,
    required this.imageName,
    this.imageVersionNumber,
  });

  final TfArg<String> appImageConfigName;

  final TfArg<String> imageName;

  final TfArg<num>? imageVersionNumber;

  @internal
  Map<String, Object?> encode() => {
    'app_image_config_name': appImageConfigName.toTfJson(),
    'image_name': imageName.toTfJson(),
    'image_version_number': ?imageVersionNumber?.toTfJson(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.default_resource_spec` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainDefaultResourceSpec {
  const SagemakerDomainDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final SagemakerDomainInstanceType? instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  @internal
  Map<String, Object?> encode() => {
    'instance_type': ?instanceType?.toTfJson(),
    'lifecycle_config_arn': ?lifecycleConfigArn?.toTfJson(),
    'sagemaker_image_arn': ?sagemakerImageArn?.toTfJson(),
    'sagemaker_image_version_alias': ?sagemakerImageVersionAlias?.toTfJson(),
    'sagemaker_image_version_arn': ?sagemakerImageVersionArn?.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerDomainInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const system = SagemakerDomainInstanceType._(TfArgLiteral('system'));
  static const mlT3Micro = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.t3.micro'),
  );
  static const mlT3Small = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.t3.small'),
  );
  static const mlT3Medium = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlM5Large = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5.8xlarge'),
  );
  static const mlM5p12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5.16xlarge'),
  );
  static const mlM5p24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlM5dLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5d.large'),
  );
  static const mlM5dXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5d.xlarge'),
  );
  static const mlM5d2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5d.2xlarge'),
  );
  static const mlM5d4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5d.4xlarge'),
  );
  static const mlM5d8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5d.8xlarge'),
  );
  static const mlM5d12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5d.12xlarge'),
  );
  static const mlM5d16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5d.16xlarge'),
  );
  static const mlM5d24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m5d.24xlarge'),
  );
  static const mlC5Large = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c5.large'),
  );
  static const mlC5Xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c5.12xlarge'),
  );
  static const mlC5p18xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5p24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c5.24xlarge'),
  );
  static const mlP3p2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p3dn.24xlarge'),
  );
  static const mlG4dnXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlR5Large = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlG5Xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlGeospatialInteractive = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.geospatial.interactive'),
  );
  static const mlP4d24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlP5p48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlP6B200p48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p6-b200.48xlarge'),
  );
  static const mlM6iLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlM7iLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC6iLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlC7iLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR6iLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6i.2xlarge'),
  );
  static const mlR6i4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6i.4xlarge'),
  );
  static const mlR6i8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6i.8xlarge'),
  );
  static const mlR6i12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6i.12xlarge'),
  );
  static const mlR6i16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6i.16xlarge'),
  );
  static const mlR6i24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6i.24xlarge'),
  );
  static const mlR6i32xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6i.32xlarge'),
  );
  static const mlR7iLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlM6idLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6id.large'),
  );
  static const mlM6idXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6id.xlarge'),
  );
  static const mlM6id2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6id.2xlarge'),
  );
  static const mlM6id4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6id.4xlarge'),
  );
  static const mlM6id8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6id.8xlarge'),
  );
  static const mlM6id12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6id.12xlarge'),
  );
  static const mlM6id16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6id.16xlarge'),
  );
  static const mlM6id24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6id.24xlarge'),
  );
  static const mlM6id32xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.m6id.32xlarge'),
  );
  static const mlC6idLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6id.large'),
  );
  static const mlC6idXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6id.xlarge'),
  );
  static const mlC6id2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6id.2xlarge'),
  );
  static const mlC6id4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6id.4xlarge'),
  );
  static const mlC6id8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6id.8xlarge'),
  );
  static const mlC6id12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6id.12xlarge'),
  );
  static const mlC6id16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6id.16xlarge'),
  );
  static const mlC6id24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6id.24xlarge'),
  );
  static const mlC6id32xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.c6id.32xlarge'),
  );
  static const mlR6idLarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6id.large'),
  );
  static const mlR6idXlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6id.xlarge'),
  );
  static const mlR6id2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6id.2xlarge'),
  );
  static const mlR6id4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6id.4xlarge'),
  );
  static const mlR6id8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6id.8xlarge'),
  );
  static const mlR6id12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6id.12xlarge'),
  );
  static const mlR6id16xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6id.16xlarge'),
  );
  static const mlR6id24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6id.24xlarge'),
  );
  static const mlR6id32xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.r6id.32xlarge'),
  );
  static const mlP5p4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlG7p2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );
  static const mlG7e2xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerDomainInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );

  static const List<SagemakerDomainInstanceType> values = [
    system,
    mlT3Micro,
    mlT3Small,
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p8xlarge,
    mlM5p12xlarge,
    mlM5p16xlarge,
    mlM5p24xlarge,
    mlM5dLarge,
    mlM5dXlarge,
    mlM5d2xlarge,
    mlM5d4xlarge,
    mlM5d8xlarge,
    mlM5d12xlarge,
    mlM5d16xlarge,
    mlM5d24xlarge,
    mlC5Large,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p12xlarge,
    mlC5p18xlarge,
    mlC5p24xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlP3dn24xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e12xlarge,
    mlG6e16xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlGeospatialInteractive,
    mlP4d24xlarge,
    mlP4de24xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlP5p48xlarge,
    mlP5en48xlarge,
    mlP6B200p48xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC6iLarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR6iLarge,
    mlR6iXlarge,
    mlR6i2xlarge,
    mlR6i4xlarge,
    mlR6i8xlarge,
    mlR6i12xlarge,
    mlR6i16xlarge,
    mlR6i24xlarge,
    mlR6i32xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlM6idLarge,
    mlM6idXlarge,
    mlM6id2xlarge,
    mlM6id4xlarge,
    mlM6id8xlarge,
    mlM6id12xlarge,
    mlM6id16xlarge,
    mlM6id24xlarge,
    mlM6id32xlarge,
    mlC6idLarge,
    mlC6idXlarge,
    mlC6id2xlarge,
    mlC6id4xlarge,
    mlC6id8xlarge,
    mlC6id12xlarge,
    mlC6id16xlarge,
    mlC6id24xlarge,
    mlC6id32xlarge,
    mlR6idLarge,
    mlR6idXlarge,
    mlR6id2xlarge,
    mlR6id4xlarge,
    mlR6id8xlarge,
    mlR6id12xlarge,
    mlR6id16xlarge,
    mlR6id24xlarge,
    mlR6id32xlarge,
    mlP5p4xlarge,
    mlG7p2xlarge,
    mlG7p4xlarge,
    mlG7p8xlarge,
    mlG7p12xlarge,
    mlG7p24xlarge,
    mlG7p48xlarge,
    mlG7e2xlarge,
    mlG7e4xlarge,
    mlG7e8xlarge,
    mlG7e12xlarge,
    mlG7e24xlarge,
    mlG7e48xlarge,
  ];
}

/// Typed helper for the `default_space_settings.jupyter_lab_app_settings.emr_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainEmrSettings {
  const SagemakerDomainEmrSettings({
    this.assumableRoleArns,
    this.executionRoleArns,
  });

  final TfArg<List<String>>? assumableRoleArns;

  final TfArg<List<String>>? executionRoleArns;

  @internal
  Map<String, Object?> encode() => {
    'assumable_role_arns': ?assumableRoleArns?.toTfJson(),
    'execution_role_arns': ?executionRoleArns?.toTfJson(),
  };
}

/// Typed helper for the `default_space_settings.jupyter_server_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainJupyterServerAppSettings {
  const SagemakerDomainJupyterServerAppSettings({
    this.lifecycleConfigArns,
    this.codeRepository,
    this.defaultResourceSpec,
  });

  final TfArg<List<String>>? lifecycleConfigArns;

  final List<SagemakerDomainCodeRepository>? codeRepository;

  final SagemakerDomainDefaultResourceSpec? defaultResourceSpec;

  @internal
  Map<String, Object?> encode() => {
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Typed helper for the `default_space_settings.kernel_gateway_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainKernelGatewayAppSettings {
  const SagemakerDomainKernelGatewayAppSettings({
    this.lifecycleConfigArns,
    this.customImage,
    this.defaultResourceSpec,
  });

  final TfArg<List<String>>? lifecycleConfigArns;

  final List<SagemakerDomainCustomImage>? customImage;

  final SagemakerDomainDefaultResourceSpec? defaultResourceSpec;

  @internal
  Map<String, Object?> encode() => {
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Typed helper for the `default_space_settings.space_storage_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainSpaceStorageSettings {
  const SagemakerDomainSpaceStorageSettings({this.defaultEbsStorageSettings});

  final SagemakerDomainDefaultEbsStorageSettings? defaultEbsStorageSettings;

  @internal
  Map<String, Object?> encode() => {
    'default_ebs_storage_settings': ?defaultEbsStorageSettings?.encode(),
  };
}

/// Typed helper for the `default_space_settings.space_storage_settings.default_ebs_storage_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerDomainDefaultEbsStorageSettings {
  const SagemakerDomainDefaultEbsStorageSettings({
    required this.defaultEbsVolumeSizeInGb,
    required this.maximumEbsVolumeSizeInGb,
  });

  final TfArg<num> defaultEbsVolumeSizeInGb;

  final TfArg<num> maximumEbsVolumeSizeInGb;

  @internal
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

  final SagemakerDomainAutoMountHomeEfs? autoMountHomeEfs;

  final TfArg<String>? defaultLandingUri;

  final TfArg<String> executionRole;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final SagemakerDomainStudioWebPortal? studioWebPortal;

  final SagemakerDomainCanvasAppSettings? canvasAppSettings;

  final SagemakerDomainCodeEditorAppSettings? codeEditorAppSettings;

  final List<SagemakerDomainCustomFileSystemConfig>? customFileSystemConfig;

  final SagemakerDomainCustomPosixUserConfig? customPosixUserConfig;

  final SagemakerDomainJupyterLabAppSettings? jupyterLabAppSettings;

  final SagemakerDomainJupyterServerAppSettings? jupyterServerAppSettings;

  final SagemakerDomainKernelGatewayAppSettings? kernelGatewayAppSettings;

  final SagemakerDomainRSessionAppSettings? rSessionAppSettings;

  final SagemakerDomainRStudioServerProAppSettings? rStudioServerProAppSettings;

  final SagemakerDomainSharingSettings? sharingSettings;

  final SagemakerDomainSpaceStorageSettings? spaceStorageSettings;

  final SagemakerDomainStudioWebPortalSettings? studioWebPortalSettings;

  final SagemakerDomainTensorBoardAppSettings? tensorBoardAppSettings;

  @internal
  Map<String, Object?> encode() => {
    'auto_mount_home_efs': ?autoMountHomeEfs?.toTfJson(),
    'default_landing_uri': ?defaultLandingUri?.toTfJson(),
    'execution_role': executionRole.toTfJson(),
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    'studio_web_portal': ?studioWebPortal?.toTfJson(),
    'canvas_app_settings': ?canvasAppSettings?.encode(),
    'code_editor_app_settings': ?codeEditorAppSettings?.encode(),
    if (customFileSystemConfig != null)
      'custom_file_system_config': [
        for (final e in customFileSystemConfig!) e.encode(),
      ],
    'custom_posix_user_config': ?customPosixUserConfig?.encode(),
    'jupyter_lab_app_settings': ?jupyterLabAppSettings?.encode(),
    'jupyter_server_app_settings': ?jupyterServerAppSettings?.encode(),
    'kernel_gateway_app_settings': ?kernelGatewayAppSettings?.encode(),
    'r_session_app_settings': ?rSessionAppSettings?.encode(),
    'r_studio_server_pro_app_settings': ?rStudioServerProAppSettings?.encode(),
    'sharing_settings': ?sharingSettings?.encode(),
    'space_storage_settings': ?spaceStorageSettings?.encode(),
    'studio_web_portal_settings': ?studioWebPortalSettings?.encode(),
    'tensor_board_app_settings': ?tensorBoardAppSettings?.encode(),
  };
}

/// `auto_mount_home_efs` — derived from the provider schema description.
extension type const SagemakerDomainAutoMountHomeEfs._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainAutoMountHomeEfs.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainAutoMountHomeEfs.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainAutoMountHomeEfs.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SagemakerDomainAutoMountHomeEfs._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = SagemakerDomainAutoMountHomeEfs._(
    TfArgLiteral('Disabled'),
  );
  static const defaultasdomain = SagemakerDomainAutoMountHomeEfs._(
    TfArgLiteral('DefaultAsDomain'),
  );

  static const List<SagemakerDomainAutoMountHomeEfs> values = [
    enabled,
    disabled,
    defaultasdomain,
  ];
}

/// `studio_web_portal` — derived from the provider schema description.
extension type const SagemakerDomainStudioWebPortal._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainStudioWebPortal.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainStudioWebPortal.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainStudioWebPortal.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SagemakerDomainStudioWebPortal._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SagemakerDomainStudioWebPortal._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerDomainStudioWebPortal> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `default_user_settings.canvas_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainCanvasAppSettings {
  const SagemakerDomainCanvasAppSettings({
    this.directDeploySettings,
    this.emrServerlessSettings,
    this.generativeAiSettings,
    this.identityProviderOauthSettings,
    this.kendraSettings,
    this.modelRegisterSettings,
    this.timeSeriesForecastingSettings,
    this.workspaceSettings,
  });

  final SagemakerDomainDirectDeploySettings? directDeploySettings;

  final SagemakerDomainEmrServerlessSettings? emrServerlessSettings;

  final SagemakerDomainGenerativeAiSettings? generativeAiSettings;

  final List<SagemakerDomainIdentityProviderOauthSettings>?
  identityProviderOauthSettings;

  final SagemakerDomainKendraSettings? kendraSettings;

  final SagemakerDomainModelRegisterSettings? modelRegisterSettings;

  final SagemakerDomainTimeSeriesForecastingSettings?
  timeSeriesForecastingSettings;

  final SagemakerDomainWorkspaceSettings? workspaceSettings;

  @internal
  Map<String, Object?> encode() => {
    'direct_deploy_settings': ?directDeploySettings?.encode(),
    'emr_serverless_settings': ?emrServerlessSettings?.encode(),
    'generative_ai_settings': ?generativeAiSettings?.encode(),
    if (identityProviderOauthSettings != null)
      'identity_provider_oauth_settings': [
        for (final e in identityProviderOauthSettings!) e.encode(),
      ],
    'kendra_settings': ?kendraSettings?.encode(),
    'model_register_settings': ?modelRegisterSettings?.encode(),
    'time_series_forecasting_settings': ?timeSeriesForecastingSettings
        ?.encode(),
    'workspace_settings': ?workspaceSettings?.encode(),
  };
}

/// Typed helper for the `default_user_settings.canvas_app_settings.direct_deploy_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDirectDeploySettings {
  const SagemakerDomainDirectDeploySettings({this.status});

  final SagemakerDomainStatus? status;

  @internal
  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// `status` — derived from the provider schema description.
extension type const SagemakerDomainStatus._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainStatus.variable(String name) : this._(TfArg.variable(name));
  SagemakerDomainStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SagemakerDomainStatus._(TfArgLiteral('ENABLED'));
  static const disabled = SagemakerDomainStatus._(TfArgLiteral('DISABLED'));

  static const List<SagemakerDomainStatus> values = [enabled, disabled];
}

/// Typed helper for the `default_user_settings.canvas_app_settings.emr_serverless_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainEmrServerlessSettings {
  const SagemakerDomainEmrServerlessSettings({
    this.executionRoleArn,
    this.status,
  });

  final RefTo<AwsIamRole>? executionRoleArn;

  final SagemakerDomainStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'execution_role_arn': ?executionRoleArn?.encodeAs('arn').toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.canvas_app_settings.generative_ai_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainGenerativeAiSettings {
  const SagemakerDomainGenerativeAiSettings({this.amazonBedrockRoleArn});

  final TfArg<String>? amazonBedrockRoleArn;

  @internal
  Map<String, Object?> encode() => {
    'amazon_bedrock_role_arn': ?amazonBedrockRoleArn?.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.canvas_app_settings.identity_provider_oauth_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainIdentityProviderOauthSettings {
  const SagemakerDomainIdentityProviderOauthSettings({
    this.dataSourceName,
    required this.secretArn,
    this.status,
  });

  final SagemakerDomainDataSourceName? dataSourceName;

  final TfArg<String> secretArn;

  final SagemakerDomainStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'data_source_name': ?dataSourceName?.toTfJson(),
    'secret_arn': secretArn.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `data_source_name` — derived from the provider schema description.
extension type const SagemakerDomainDataSourceName._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainDataSourceName.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainDataSourceName.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainDataSourceName.arg(TfArg<String> arg) : this._(arg);

  static const salesforcegenie = SagemakerDomainDataSourceName._(
    TfArgLiteral('SalesforceGenie'),
  );
  static const snowflake = SagemakerDomainDataSourceName._(
    TfArgLiteral('Snowflake'),
  );

  static const List<SagemakerDomainDataSourceName> values = [
    salesforcegenie,
    snowflake,
  ];
}

/// Typed helper for the `default_user_settings.canvas_app_settings.kendra_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainKendraSettings {
  const SagemakerDomainKendraSettings({this.status});

  final SagemakerDomainStatus? status;

  @internal
  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// Typed helper for the `default_user_settings.canvas_app_settings.model_register_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainModelRegisterSettings {
  const SagemakerDomainModelRegisterSettings({
    this.crossAccountModelRegisterRoleArn,
    this.status,
  });

  final TfArg<String>? crossAccountModelRegisterRoleArn;

  final SagemakerDomainStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'cross_account_model_register_role_arn': ?crossAccountModelRegisterRoleArn
        ?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.canvas_app_settings.time_series_forecasting_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainTimeSeriesForecastingSettings {
  const SagemakerDomainTimeSeriesForecastingSettings({
    this.amazonForecastRoleArn,
    this.status,
  });

  final TfArg<String>? amazonForecastRoleArn;

  final SagemakerDomainStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'amazon_forecast_role_arn': ?amazonForecastRoleArn?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.canvas_app_settings.workspace_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainWorkspaceSettings {
  const SagemakerDomainWorkspaceSettings({
    this.s3ArtifactPath,
    this.s3KmsKeyId,
  });

  final TfArg<String>? s3ArtifactPath;

  final TfArg<String>? s3KmsKeyId;

  @internal
  Map<String, Object?> encode() => {
    's3_artifact_path': ?s3ArtifactPath?.toTfJson(),
    's3_kms_key_id': ?s3KmsKeyId?.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.code_editor_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainCodeEditorAppSettings {
  const SagemakerDomainCodeEditorAppSettings({
    this.builtInLifecycleConfigArn,
    this.lifecycleConfigArns,
    this.appLifecycleManagement,
    this.customImage,
    this.defaultResourceSpec,
  });

  final TfArg<String>? builtInLifecycleConfigArn;

  final TfArg<List<String>>? lifecycleConfigArns;

  final SagemakerDomainAppLifecycleManagement? appLifecycleManagement;

  final List<SagemakerDomainCustomImage>? customImage;

  final SagemakerDomainDefaultResourceSpec? defaultResourceSpec;

  @internal
  Map<String, Object?> encode() => {
    'built_in_lifecycle_config_arn': ?builtInLifecycleConfigArn?.toTfJson(),
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    'app_lifecycle_management': ?appLifecycleManagement?.encode(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Typed helper for the `default_user_settings.r_session_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainRSessionAppSettings {
  const SagemakerDomainRSessionAppSettings({
    this.customImage,
    this.defaultResourceSpec,
  });

  final List<SagemakerDomainCustomImage>? customImage;

  final SagemakerDomainDefaultResourceSpec? defaultResourceSpec;

  @internal
  Map<String, Object?> encode() => {
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Typed helper for the `default_user_settings.r_studio_server_pro_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainRStudioServerProAppSettings {
  const SagemakerDomainRStudioServerProAppSettings({
    this.accessStatus,
    this.userGroup,
  });

  final SagemakerDomainAccessStatus? accessStatus;

  final SagemakerDomainUserGroup? userGroup;

  @internal
  Map<String, Object?> encode() => {
    'access_status': ?accessStatus?.toTfJson(),
    'user_group': ?userGroup?.toTfJson(),
  };
}

/// `access_status` — derived from the provider schema description.
extension type const SagemakerDomainAccessStatus._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainAccessStatus.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainAccessStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainAccessStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SagemakerDomainAccessStatus._(TfArgLiteral('ENABLED'));
  static const disabled = SagemakerDomainAccessStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerDomainAccessStatus> values = [enabled, disabled];
}

/// `user_group` — derived from the provider schema description.
extension type const SagemakerDomainUserGroup._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainUserGroup.variable(String name) : this._(TfArg.variable(name));
  SagemakerDomainUserGroup.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainUserGroup.arg(TfArg<String> arg) : this._(arg);

  static const rStudioAdmin = SagemakerDomainUserGroup._(
    TfArgLiteral('R_STUDIO_ADMIN'),
  );
  static const rStudioUser = SagemakerDomainUserGroup._(
    TfArgLiteral('R_STUDIO_USER'),
  );

  static const List<SagemakerDomainUserGroup> values = [
    rStudioAdmin,
    rStudioUser,
  ];
}

/// Typed helper for the `default_user_settings.sharing_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainSharingSettings {
  const SagemakerDomainSharingSettings({
    this.notebookOutputOption,
    this.s3KmsKeyId,
    this.s3OutputPath,
  });

  final SagemakerDomainNotebookOutputOption? notebookOutputOption;

  final TfArg<String>? s3KmsKeyId;

  final TfArg<String>? s3OutputPath;

  @internal
  Map<String, Object?> encode() => {
    'notebook_output_option': ?notebookOutputOption?.toTfJson(),
    's3_kms_key_id': ?s3KmsKeyId?.toTfJson(),
    's3_output_path': ?s3OutputPath?.toTfJson(),
  };
}

/// `notebook_output_option` — derived from the provider schema description.
extension type const SagemakerDomainNotebookOutputOption._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainNotebookOutputOption.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainNotebookOutputOption.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainNotebookOutputOption.arg(TfArg<String> arg)
    : this._(arg);

  static const allowed = SagemakerDomainNotebookOutputOption._(
    TfArgLiteral('Allowed'),
  );
  static const disabled = SagemakerDomainNotebookOutputOption._(
    TfArgLiteral('Disabled'),
  );

  static const List<SagemakerDomainNotebookOutputOption> values = [
    allowed,
    disabled,
  ];
}

/// Typed helper for the `default_user_settings.studio_web_portal_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainStudioWebPortalSettings {
  const SagemakerDomainStudioWebPortalSettings({
    this.hiddenAppTypes,
    this.hiddenInstanceTypes,
    this.hiddenMlTools,
  });

  final List<SagemakerDomainHiddenAppTypes>? hiddenAppTypes;

  final List<SagemakerDomainHiddenInstanceTypes>? hiddenInstanceTypes;

  final List<SagemakerDomainHiddenMlTools>? hiddenMlTools;

  @internal
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
extension type const SagemakerDomainHiddenAppTypes._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainHiddenAppTypes.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainHiddenAppTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainHiddenAppTypes.arg(TfArg<String> arg) : this._(arg);

  static const jupyterserver = SagemakerDomainHiddenAppTypes._(
    TfArgLiteral('JupyterServer'),
  );
  static const kernelgateway = SagemakerDomainHiddenAppTypes._(
    TfArgLiteral('KernelGateway'),
  );
  static const detailedprofiler = SagemakerDomainHiddenAppTypes._(
    TfArgLiteral('DetailedProfiler'),
  );
  static const tensorboard = SagemakerDomainHiddenAppTypes._(
    TfArgLiteral('TensorBoard'),
  );
  static const codeeditor = SagemakerDomainHiddenAppTypes._(
    TfArgLiteral('CodeEditor'),
  );
  static const jupyterlab = SagemakerDomainHiddenAppTypes._(
    TfArgLiteral('JupyterLab'),
  );
  static const rstudioserverpro = SagemakerDomainHiddenAppTypes._(
    TfArgLiteral('RStudioServerPro'),
  );
  static const rsessiongateway = SagemakerDomainHiddenAppTypes._(
    TfArgLiteral('RSessionGateway'),
  );
  static const canvas = SagemakerDomainHiddenAppTypes._(TfArgLiteral('Canvas'));

  static const List<SagemakerDomainHiddenAppTypes> values = [
    jupyterserver,
    kernelgateway,
    detailedprofiler,
    tensorboard,
    codeeditor,
    jupyterlab,
    rstudioserverpro,
    rsessiongateway,
    canvas,
  ];
}

/// `hidden_instance_types` — derived from the provider schema description.
extension type const SagemakerDomainHiddenInstanceTypes._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainHiddenInstanceTypes.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainHiddenInstanceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainHiddenInstanceTypes.arg(TfArg<String> arg) : this._(arg);

  static const system = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('system'),
  );
  static const mlT3Micro = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.micro'),
  );
  static const mlT3Small = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.small'),
  );
  static const mlT3Medium = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlM5Large = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.8xlarge'),
  );
  static const mlM5p12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.16xlarge'),
  );
  static const mlM5p24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlM5dLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.large'),
  );
  static const mlM5dXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.xlarge'),
  );
  static const mlM5d2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.2xlarge'),
  );
  static const mlM5d4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.4xlarge'),
  );
  static const mlM5d8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.8xlarge'),
  );
  static const mlM5d12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.12xlarge'),
  );
  static const mlM5d16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.16xlarge'),
  );
  static const mlM5d24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.24xlarge'),
  );
  static const mlC5Large = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.large'),
  );
  static const mlC5Xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.12xlarge'),
  );
  static const mlC5p18xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5p24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.24xlarge'),
  );
  static const mlP3p2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p3dn.24xlarge'),
  );
  static const mlG4dnXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlR5Large = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlG5Xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlGeospatialInteractive = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.geospatial.interactive'),
  );
  static const mlP4d24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlP5p48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlP6B200p48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p6-b200.48xlarge'),
  );
  static const mlM6iLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlM7iLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC6iLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlC7iLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR6iLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.2xlarge'),
  );
  static const mlR6i4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.4xlarge'),
  );
  static const mlR6i8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.8xlarge'),
  );
  static const mlR6i12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.12xlarge'),
  );
  static const mlR6i16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.16xlarge'),
  );
  static const mlR6i24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.24xlarge'),
  );
  static const mlR6i32xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.32xlarge'),
  );
  static const mlR7iLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlM6idLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.large'),
  );
  static const mlM6idXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.xlarge'),
  );
  static const mlM6id2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.2xlarge'),
  );
  static const mlM6id4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.4xlarge'),
  );
  static const mlM6id8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.8xlarge'),
  );
  static const mlM6id12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.12xlarge'),
  );
  static const mlM6id16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.16xlarge'),
  );
  static const mlM6id24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.24xlarge'),
  );
  static const mlM6id32xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.32xlarge'),
  );
  static const mlC6idLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.large'),
  );
  static const mlC6idXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.xlarge'),
  );
  static const mlC6id2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.2xlarge'),
  );
  static const mlC6id4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.4xlarge'),
  );
  static const mlC6id8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.8xlarge'),
  );
  static const mlC6id12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.12xlarge'),
  );
  static const mlC6id16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.16xlarge'),
  );
  static const mlC6id24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.24xlarge'),
  );
  static const mlC6id32xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.32xlarge'),
  );
  static const mlR6idLarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.large'),
  );
  static const mlR6idXlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.xlarge'),
  );
  static const mlR6id2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.2xlarge'),
  );
  static const mlR6id4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.4xlarge'),
  );
  static const mlR6id8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.8xlarge'),
  );
  static const mlR6id12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.12xlarge'),
  );
  static const mlR6id16xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.16xlarge'),
  );
  static const mlR6id24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.24xlarge'),
  );
  static const mlR6id32xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.32xlarge'),
  );
  static const mlP5p4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlG7p2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.48xlarge'),
  );
  static const mlG7e2xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerDomainHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );

  static const List<SagemakerDomainHiddenInstanceTypes> values = [
    system,
    mlT3Micro,
    mlT3Small,
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p8xlarge,
    mlM5p12xlarge,
    mlM5p16xlarge,
    mlM5p24xlarge,
    mlM5dLarge,
    mlM5dXlarge,
    mlM5d2xlarge,
    mlM5d4xlarge,
    mlM5d8xlarge,
    mlM5d12xlarge,
    mlM5d16xlarge,
    mlM5d24xlarge,
    mlC5Large,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p12xlarge,
    mlC5p18xlarge,
    mlC5p24xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlP3dn24xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e12xlarge,
    mlG6e16xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlGeospatialInteractive,
    mlP4d24xlarge,
    mlP4de24xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlP5p48xlarge,
    mlP5en48xlarge,
    mlP6B200p48xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC6iLarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR6iLarge,
    mlR6iXlarge,
    mlR6i2xlarge,
    mlR6i4xlarge,
    mlR6i8xlarge,
    mlR6i12xlarge,
    mlR6i16xlarge,
    mlR6i24xlarge,
    mlR6i32xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlM6idLarge,
    mlM6idXlarge,
    mlM6id2xlarge,
    mlM6id4xlarge,
    mlM6id8xlarge,
    mlM6id12xlarge,
    mlM6id16xlarge,
    mlM6id24xlarge,
    mlM6id32xlarge,
    mlC6idLarge,
    mlC6idXlarge,
    mlC6id2xlarge,
    mlC6id4xlarge,
    mlC6id8xlarge,
    mlC6id12xlarge,
    mlC6id16xlarge,
    mlC6id24xlarge,
    mlC6id32xlarge,
    mlR6idLarge,
    mlR6idXlarge,
    mlR6id2xlarge,
    mlR6id4xlarge,
    mlR6id8xlarge,
    mlR6id12xlarge,
    mlR6id16xlarge,
    mlR6id24xlarge,
    mlR6id32xlarge,
    mlP5p4xlarge,
    mlG7p2xlarge,
    mlG7p4xlarge,
    mlG7p8xlarge,
    mlG7p12xlarge,
    mlG7p24xlarge,
    mlG7p48xlarge,
    mlG7e2xlarge,
    mlG7e4xlarge,
    mlG7e8xlarge,
    mlG7e12xlarge,
    mlG7e24xlarge,
    mlG7e48xlarge,
  ];
}

/// `hidden_ml_tools` — derived from the provider schema description.
extension type const SagemakerDomainHiddenMlTools._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainHiddenMlTools.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainHiddenMlTools.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainHiddenMlTools.arg(TfArg<String> arg) : this._(arg);

  static const datawrangler = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('DataWrangler'),
  );
  static const featurestore = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('FeatureStore'),
  );
  static const emrclusters = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('EmrClusters'),
  );
  static const automl = SagemakerDomainHiddenMlTools._(TfArgLiteral('AutoMl'));
  static const experiments = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('Experiments'),
  );
  static const training = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('Training'),
  );
  static const modelevaluation = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('ModelEvaluation'),
  );
  static const pipelines = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('Pipelines'),
  );
  static const models = SagemakerDomainHiddenMlTools._(TfArgLiteral('Models'));
  static const jumpstart = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('JumpStart'),
  );
  static const inferencerecommender = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('InferenceRecommender'),
  );
  static const endpoints = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('Endpoints'),
  );
  static const projects = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('Projects'),
  );
  static const inferenceoptimization = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('InferenceOptimization'),
  );
  static const performanceevaluation = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('PerformanceEvaluation'),
  );
  static const lakeraguard = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('LakeraGuard'),
  );
  static const comet = SagemakerDomainHiddenMlTools._(TfArgLiteral('Comet'));
  static const deepchecksllmevaluation = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('DeepchecksLLMEvaluation'),
  );
  static const fiddler = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('Fiddler'),
  );
  static const hyperpodclusters = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('HyperPodClusters'),
  );
  static const runninginstances = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('RunningInstances'),
  );
  static const datasets = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('Datasets'),
  );
  static const evaluators = SagemakerDomainHiddenMlTools._(
    TfArgLiteral('Evaluators'),
  );

  static const List<SagemakerDomainHiddenMlTools> values = [
    datawrangler,
    featurestore,
    emrclusters,
    automl,
    experiments,
    training,
    modelevaluation,
    pipelines,
    models,
    jumpstart,
    inferencerecommender,
    endpoints,
    projects,
    inferenceoptimization,
    performanceevaluation,
    lakeraguard,
    comet,
    deepchecksllmevaluation,
    fiddler,
    hyperpodclusters,
    runninginstances,
    datasets,
    evaluators,
  ];
}

/// Typed helper for the `default_user_settings.tensor_board_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainTensorBoardAppSettings {
  const SagemakerDomainTensorBoardAppSettings({this.defaultResourceSpec});

  final SagemakerDomainDefaultResourceSpec? defaultResourceSpec;

  @internal
  Map<String, Object?> encode() => {
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Typed helper for the `domain_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainSettings {
  const SagemakerDomainSettings({
    this.executionRoleIdentityConfig,
    this.securityGroupIds,
    this.dockerSettings,
    this.rStudioServerProDomainSettings,
    this.trustedIdentityPropagationSettings,
  });

  final SagemakerDomainExecutionRoleIdentityConfig? executionRoleIdentityConfig;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final SagemakerDomainDockerSettings? dockerSettings;

  final SagemakerDomainRStudioServerProDomainSettings?
  rStudioServerProDomainSettings;

  final SagemakerDomainTrustedIdentityPropagationSettings?
  trustedIdentityPropagationSettings;

  @internal
  Map<String, Object?> encode() => {
    'execution_role_identity_config': ?executionRoleIdentityConfig?.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'docker_settings': ?dockerSettings?.encode(),
    'r_studio_server_pro_domain_settings': ?rStudioServerProDomainSettings
        ?.encode(),
    'trusted_identity_propagation_settings': ?trustedIdentityPropagationSettings
        ?.encode(),
  };
}

/// `execution_role_identity_config` — derived from the provider schema description.
extension type const SagemakerDomainExecutionRoleIdentityConfig._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerDomainExecutionRoleIdentityConfig.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainExecutionRoleIdentityConfig.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainExecutionRoleIdentityConfig.arg(TfArg<String> arg)
    : this._(arg);

  static const userProfileName = SagemakerDomainExecutionRoleIdentityConfig._(
    TfArgLiteral('USER_PROFILE_NAME'),
  );
  static const disabled = SagemakerDomainExecutionRoleIdentityConfig._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerDomainExecutionRoleIdentityConfig> values = [
    userProfileName,
    disabled,
  ];
}

/// Typed helper for the `domain_settings.docker_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDockerSettings {
  const SagemakerDomainDockerSettings({
    this.enableDockerAccess,
    this.vpcOnlyTrustedAccounts,
  });

  final SagemakerDomainEnableDockerAccess? enableDockerAccess;

  final TfArg<List<String>>? vpcOnlyTrustedAccounts;

  @internal
  Map<String, Object?> encode() => {
    'enable_docker_access': ?enableDockerAccess?.toTfJson(),
    'vpc_only_trusted_accounts': ?vpcOnlyTrustedAccounts?.toTfJson(),
  };
}

/// `enable_docker_access` — derived from the provider schema description.
extension type const SagemakerDomainEnableDockerAccess._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainEnableDockerAccess.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainEnableDockerAccess.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainEnableDockerAccess.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SagemakerDomainEnableDockerAccess._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SagemakerDomainEnableDockerAccess._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerDomainEnableDockerAccess> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `domain_settings.r_studio_server_pro_domain_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainRStudioServerProDomainSettings {
  const SagemakerDomainRStudioServerProDomainSettings({
    required this.domainExecutionRoleArn,
    this.rStudioConnectUrl,
    this.rStudioPackageManagerUrl,
    this.defaultResourceSpec,
  });

  final TfArg<String> domainExecutionRoleArn;

  final TfArg<String>? rStudioConnectUrl;

  final TfArg<String>? rStudioPackageManagerUrl;

  final SagemakerDomainDefaultResourceSpec? defaultResourceSpec;

  @internal
  Map<String, Object?> encode() => {
    'domain_execution_role_arn': domainExecutionRoleArn.toTfJson(),
    'r_studio_connect_url': ?rStudioConnectUrl?.toTfJson(),
    'r_studio_package_manager_url': ?rStudioPackageManagerUrl?.toTfJson(),
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Typed helper for the `domain_settings.trusted_identity_propagation_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainTrustedIdentityPropagationSettings {
  const SagemakerDomainTrustedIdentityPropagationSettings({
    required this.status,
  });

  final SagemakerDomainStatus status;

  @internal
  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Typed helper for the `retention_policy` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainRetentionPolicy {
  const SagemakerDomainRetentionPolicy({this.homeEfsFileSystem});

  final SagemakerDomainHomeEfsFileSystem? homeEfsFileSystem;

  @internal
  Map<String, Object?> encode() => {
    'home_efs_file_system': ?homeEfsFileSystem?.toTfJson(),
  };
}

/// `home_efs_file_system` — derived from the provider schema description.
extension type const SagemakerDomainHomeEfsFileSystem._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerDomainHomeEfsFileSystem.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDomainHomeEfsFileSystem.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDomainHomeEfsFileSystem.arg(TfArg<String> arg) : this._(arg);

  static const retain = SagemakerDomainHomeEfsFileSystem._(
    TfArgLiteral('Retain'),
  );
  static const delete = SagemakerDomainHomeEfsFileSystem._(
    TfArgLiteral('Delete'),
  );

  static const List<SagemakerDomainHomeEfsFileSystem> values = [retain, delete];
}

/// Factory wrapper for `aws_sagemaker_domain`.
final class AwsSagemakerDomain extends Resource {
  static const String tfType = 'aws_sagemaker_domain';

  AwsSagemakerDomain(
    super.localName, {
    SagemakerDomainAppNetworkAccessType? appNetworkAccessType,
    SagemakerDomainAppSecurityGroupManagement? appSecurityGroupManagement,
    required SagemakerDomainAuthMode authMode,
    required TfArg<String> domainName,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? region,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    SagemakerDomainTagPropagation? tagPropagation,
    TfArg<Map<String, String>>? tags,
    required RefTo<AwsVpc> vpcId,
    SagemakerDomainDefaultSpaceSettings? defaultSpaceSettings,
    required SagemakerDomainDefaultUserSettings defaultUserSettings,
    SagemakerDomainSettings? domainSettings,
    SagemakerDomainRetentionPolicy? retentionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_network_access_type': ?appNetworkAccessType,
           'app_security_group_management': ?appSecurityGroupManagement,
           'auth_mode': authMode,
           'domain_name': domainName,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'region': ?region,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tag_propagation': ?tagPropagation,
           'tags': ?tags,
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

  /// Reference to `app_network_access_type` attribute.
  TfRef<String> get appNetworkAccessType =>
      TfRef.attribute<String>(this, 'app_network_access_type');

  /// Reference to `app_security_group_management` attribute.
  TfRef<String> get appSecurityGroupManagement =>
      TfRef.attribute<String>(this, 'app_security_group_management');

  /// Reference to `auth_mode` attribute.
  TfRef<String> get authMode => TfRef.attribute<String>(this, 'auth_mode');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tag_propagation` attribute.
  TfRef<String> get tagPropagation =>
      TfRef.attribute<String>(this, 'tag_propagation');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
