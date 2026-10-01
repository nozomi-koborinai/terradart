// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_space`.
const Set<String> _awsSagemakerSpaceSensitive = <String>{};

/// Typed helper for the `ownership_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceOwnershipSettings {
  const SagemakerSpaceOwnershipSettings({required this.ownerUserProfileName});

  final TfArg<String> ownerUserProfileName;

  Map<String, Object?> encode() => {
    'owner_user_profile_name': ownerUserProfileName.toTfJson(),
  };
}

/// Typed helper for the `space_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSettings {
  const SagemakerSpaceSettings({
    this.appType,
    this.codeEditorAppSettings,
    this.customFileSystem,
    this.jupyterLabAppSettings,
    this.jupyterServerAppSettings,
    this.kernelGatewayAppSettings,
    this.spaceStorageSettings,
  });

  final TfArg<SagemakerSpaceAppType>? appType;

  final SagemakerSpaceCodeEditorAppSettings? codeEditorAppSettings;

  final List<SagemakerSpaceCustomFileSystem>? customFileSystem;

  final SagemakerSpaceJupyterLabAppSettings? jupyterLabAppSettings;

  final SagemakerSpaceJupyterServerAppSettings? jupyterServerAppSettings;

  final SagemakerSpaceKernelGatewayAppSettings? kernelGatewayAppSettings;

  final SagemakerSpaceStorageSettings? spaceStorageSettings;

  Map<String, Object?> encode() => {
    'app_type': ?appType?.toTfJson(),
    'code_editor_app_settings': ?codeEditorAppSettings?.encode(),
    if (customFileSystem != null)
      'custom_file_system': [for (final e in customFileSystem!) e.encode()],
    'jupyter_lab_app_settings': ?jupyterLabAppSettings?.encode(),
    'jupyter_server_app_settings': ?jupyterServerAppSettings?.encode(),
    'kernel_gateway_app_settings': ?kernelGatewayAppSettings?.encode(),
    'space_storage_settings': ?spaceStorageSettings?.encode(),
  };
}

/// `app_type` — derived from the provider schema description.
enum SagemakerSpaceAppType implements TerraformEnum {
  jupyterserver('JupyterServer'),
  kernelgateway('KernelGateway'),
  detailedprofiler('DetailedProfiler'),
  tensorboard('TensorBoard'),
  codeeditor('CodeEditor'),
  jupyterlab('JupyterLab'),
  rstudioserverpro('RStudioServerPro'),
  rsessiongateway('RSessionGateway'),
  canvas('Canvas');

  const SagemakerSpaceAppType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `space_settings.code_editor_app_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceCodeEditorAppSettings {
  const SagemakerSpaceCodeEditorAppSettings({
    this.appLifecycleManagement,
    required this.defaultResourceSpec,
  });

  final SagemakerSpaceAppLifecycleManagement? appLifecycleManagement;

  final SagemakerSpaceDefaultResourceSpec defaultResourceSpec;

  Map<String, Object?> encode() => {
    'app_lifecycle_management': ?appLifecycleManagement?.encode(),
    'default_resource_spec': defaultResourceSpec.encode(),
  };
}

/// Typed helper for the `space_settings.code_editor_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_space` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerSpaceAppLifecycleManagement {
  const SagemakerSpaceAppLifecycleManagement({this.idleSettings});

  final SagemakerSpaceIdleSettings? idleSettings;

  Map<String, Object?> encode() => {'idle_settings': ?idleSettings?.encode()};
}

/// Typed helper for the `space_settings.code_editor_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerSpaceIdleSettings {
  const SagemakerSpaceIdleSettings({this.idleTimeoutInMinutes});

  final TfArg<num>? idleTimeoutInMinutes;

  Map<String, Object?> encode() => {
    'idle_timeout_in_minutes': ?idleTimeoutInMinutes?.toTfJson(),
  };
}

/// Typed helper for the `space_settings.code_editor_app_settings.default_resource_spec` block of
/// `aws_sagemaker_space` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerSpaceDefaultResourceSpec {
  const SagemakerSpaceDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<SagemakerSpaceInstanceType>? instanceType;

  final TfArg<String>? lifecycleConfigArn;

  final TfArg<String>? sagemakerImageArn;

  final TfArg<String>? sagemakerImageVersionAlias;

  final TfArg<String>? sagemakerImageVersionArn;

  Map<String, Object?> encode() => {
    'instance_type': ?instanceType?.toTfJson(),
    'lifecycle_config_arn': ?lifecycleConfigArn?.toTfJson(),
    'sagemaker_image_arn': ?sagemakerImageArn?.toTfJson(),
    'sagemaker_image_version_alias': ?sagemakerImageVersionAlias?.toTfJson(),
    'sagemaker_image_version_arn': ?sagemakerImageVersionArn?.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerSpaceInstanceType implements TerraformEnum {
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

  const SagemakerSpaceInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `space_settings.custom_file_system` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceCustomFileSystem {
  const SagemakerSpaceCustomFileSystem({required this.efsFileSystem});

  final SagemakerSpaceEfsFileSystem efsFileSystem;

  Map<String, Object?> encode() => {'efs_file_system': efsFileSystem.encode()};
}

/// Typed helper for the `space_settings.custom_file_system.efs_file_system` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceEfsFileSystem {
  const SagemakerSpaceEfsFileSystem({required this.fileSystemId});

  final TfArg<String> fileSystemId;

  Map<String, Object?> encode() => {'file_system_id': fileSystemId.toTfJson()};
}

/// Typed helper for the `space_settings.jupyter_lab_app_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceJupyterLabAppSettings {
  const SagemakerSpaceJupyterLabAppSettings({
    this.appLifecycleManagement,
    this.codeRepository,
    required this.defaultResourceSpec,
  });

  final SagemakerSpaceAppLifecycleManagement? appLifecycleManagement;

  final List<SagemakerSpaceCodeRepository>? codeRepository;

  final SagemakerSpaceDefaultResourceSpec defaultResourceSpec;

  Map<String, Object?> encode() => {
    'app_lifecycle_management': ?appLifecycleManagement?.encode(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    'default_resource_spec': defaultResourceSpec.encode(),
  };
}

/// Typed helper for the `space_settings.jupyter_lab_app_settings.code_repository` block of
/// `aws_sagemaker_space` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerSpaceCodeRepository {
  const SagemakerSpaceCodeRepository({required this.repositoryUrl});

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `space_settings.jupyter_server_app_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceJupyterServerAppSettings {
  const SagemakerSpaceJupyterServerAppSettings({
    this.lifecycleConfigArns,
    this.codeRepository,
    required this.defaultResourceSpec,
  });

  final TfArg<List<String>>? lifecycleConfigArns;

  final List<SagemakerSpaceCodeRepository>? codeRepository;

  final SagemakerSpaceDefaultResourceSpec defaultResourceSpec;

  Map<String, Object?> encode() => {
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    'default_resource_spec': defaultResourceSpec.encode(),
  };
}

/// Typed helper for the `space_settings.kernel_gateway_app_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceKernelGatewayAppSettings {
  const SagemakerSpaceKernelGatewayAppSettings({
    this.lifecycleConfigArns,
    this.customImage,
    required this.defaultResourceSpec,
  });

  final TfArg<List<String>>? lifecycleConfigArns;

  final List<SagemakerSpaceCustomImage>? customImage;

  final SagemakerSpaceDefaultResourceSpec defaultResourceSpec;

  Map<String, Object?> encode() => {
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': defaultResourceSpec.encode(),
  };
}

/// Typed helper for the `space_settings.kernel_gateway_app_settings.custom_image` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceCustomImage {
  const SagemakerSpaceCustomImage({
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
    'image_version_number': ?imageVersionNumber?.toTfJson(),
  };
}

/// Typed helper for the `space_settings.space_storage_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceStorageSettings {
  const SagemakerSpaceStorageSettings({required this.ebsStorageSettings});

  final SagemakerSpaceEbsStorageSettings ebsStorageSettings;

  Map<String, Object?> encode() => {
    'ebs_storage_settings': ebsStorageSettings.encode(),
  };
}

/// Typed helper for the `space_settings.space_storage_settings.ebs_storage_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceEbsStorageSettings {
  const SagemakerSpaceEbsStorageSettings({required this.ebsVolumeSizeInGb});

  final TfArg<num> ebsVolumeSizeInGb;

  Map<String, Object?> encode() => {
    'ebs_volume_size_in_gb': ebsVolumeSizeInGb.toTfJson(),
  };
}

/// Typed helper for the `space_sharing_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSharingSettings {
  const SagemakerSpaceSharingSettings({required this.sharingType});

  final TfArg<SagemakerSpaceSharingType> sharingType;

  Map<String, Object?> encode() => {'sharing_type': sharingType.toTfJson()};
}

/// `sharing_type` — derived from the provider schema description.
enum SagemakerSpaceSharingType implements TerraformEnum {
  private('Private'),
  shared('Shared');

  const SagemakerSpaceSharingType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sagemaker_space`.
final class AwsSagemakerSpace extends Resource {
  static const String tfType = 'aws_sagemaker_space';

  AwsSagemakerSpace(
    super.localName, {
    required TfArg<String> domainId,
    TfArg<String>? region,
    TfArg<String>? spaceDisplayName,
    required TfArg<String> spaceName,
    TfArg<Map<String, String>>? tags,
    SagemakerSpaceOwnershipSettings? ownershipSettings,
    SagemakerSpaceSettings? spaceSettings,
    SagemakerSpaceSharingSettings? spaceSharingSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_id': domainId,
           'region': ?region,
           'space_display_name': ?spaceDisplayName,
           'space_name': spaceName,
           'tags': ?tags,
           if (ownershipSettings != null)
             'ownership_settings': TfArg.literal(ownershipSettings.encode()),
           if (spaceSettings != null)
             'space_settings': TfArg.literal(spaceSettings.encode()),
           if (spaceSharingSettings != null)
             'space_sharing_settings': TfArg.literal(
               spaceSharingSettings.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerSpaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerSpace>`.
  RefTo<AwsSagemakerSpace> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `home_efs_file_system_uid` attribute.
  TfRef<String> get homeEfsFileSystemUid =>
      TfRef.attribute<String>(this, 'home_efs_file_system_uid');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `space_display_name` attribute.
  TfRef<String> get spaceDisplayName =>
      TfRef.attribute<String>(this, 'space_display_name');

  /// Reference to `space_name` attribute.
  TfRef<String> get spaceName => TfRef.attribute<String>(this, 'space_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
