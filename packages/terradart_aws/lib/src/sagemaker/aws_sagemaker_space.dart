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
final class SagemakerSpaceSpaceSettings {
  const SagemakerSpaceSpaceSettings({
    this.appType,
    this.codeEditorAppSettings,
    this.customFileSystem,
    this.jupyterLabAppSettings,
    this.jupyterServerAppSettings,
    this.kernelGatewayAppSettings,
    this.spaceStorageSettings,
  });

  final TfArg<String>? appType;

  final SagemakerSpaceSpaceSettingsCodeEditorAppSettings? codeEditorAppSettings;

  final List<SagemakerSpaceSpaceSettingsCustomFileSystem>? customFileSystem;

  final SagemakerSpaceSpaceSettingsJupyterLabAppSettings? jupyterLabAppSettings;

  final SagemakerSpaceSpaceSettingsJupyterServerAppSettings?
  jupyterServerAppSettings;

  final SagemakerSpaceSpaceSettingsKernelGatewayAppSettings?
  kernelGatewayAppSettings;

  final SagemakerSpaceSpaceSettingsSpaceStorageSettings? spaceStorageSettings;

  Map<String, Object?> encode() => {
    if (appType != null) 'app_type': appType!.toTfJson(),
    if (codeEditorAppSettings != null)
      'code_editor_app_settings': codeEditorAppSettings!.encode(),
    if (customFileSystem != null)
      'custom_file_system': [for (final e in customFileSystem!) e.encode()],
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

/// Typed helper for the `space_settings.code_editor_app_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsCodeEditorAppSettings {
  const SagemakerSpaceSpaceSettingsCodeEditorAppSettings({
    this.appLifecycleManagement,
    required this.defaultResourceSpec,
  });

  final SagemakerSpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement?
  appLifecycleManagement;

  final SagemakerSpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (appLifecycleManagement != null)
      'app_lifecycle_management': appLifecycleManagement!.encode(),
    'default_resource_spec': defaultResourceSpec.encode(),
  };
}

/// Typed helper for the `space_settings.code_editor_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement {
  const SagemakerSpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  final SagemakerSpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  Map<String, Object?> encode() => {
    if (idleSettings != null) 'idle_settings': idleSettings!.encode(),
  };
}

/// Typed helper for the `space_settings.code_editor_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings {
  const SagemakerSpaceSpaceSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings({
    this.idleTimeoutInMinutes,
  });

  final TfArg<num>? idleTimeoutInMinutes;

  Map<String, Object?> encode() => {
    if (idleTimeoutInMinutes != null)
      'idle_timeout_in_minutes': idleTimeoutInMinutes!.toTfJson(),
  };
}

/// Typed helper for the `space_settings.code_editor_app_settings.default_resource_spec` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec {
  const SagemakerSpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<String>? instanceType;

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

/// Typed helper for the `space_settings.custom_file_system` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsCustomFileSystem {
  const SagemakerSpaceSpaceSettingsCustomFileSystem({
    required this.efsFileSystem,
  });

  final SagemakerSpaceSpaceSettingsCustomFileSystemEfsFileSystem efsFileSystem;

  Map<String, Object?> encode() => {'efs_file_system': efsFileSystem.encode()};
}

/// Typed helper for the `space_settings.custom_file_system.efs_file_system` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsCustomFileSystemEfsFileSystem {
  const SagemakerSpaceSpaceSettingsCustomFileSystemEfsFileSystem({
    required this.fileSystemId,
  });

  final TfArg<String> fileSystemId;

  Map<String, Object?> encode() => {'file_system_id': fileSystemId.toTfJson()};
}

/// Typed helper for the `space_settings.jupyter_lab_app_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsJupyterLabAppSettings {
  const SagemakerSpaceSpaceSettingsJupyterLabAppSettings({
    this.appLifecycleManagement,
    this.codeRepository,
    required this.defaultResourceSpec,
  });

  final SagemakerSpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement?
  appLifecycleManagement;

  final List<SagemakerSpaceSpaceSettingsJupyterLabAppSettingsCodeRepository>?
  codeRepository;

  final SagemakerSpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (appLifecycleManagement != null)
      'app_lifecycle_management': appLifecycleManagement!.encode(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    'default_resource_spec': defaultResourceSpec.encode(),
  };
}

/// Typed helper for the `space_settings.jupyter_lab_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement {
  const SagemakerSpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  final SagemakerSpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  Map<String, Object?> encode() => {
    if (idleSettings != null) 'idle_settings': idleSettings!.encode(),
  };
}

/// Typed helper for the `space_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings {
  const SagemakerSpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings({
    this.idleTimeoutInMinutes,
  });

  final TfArg<num>? idleTimeoutInMinutes;

  Map<String, Object?> encode() => {
    if (idleTimeoutInMinutes != null)
      'idle_timeout_in_minutes': idleTimeoutInMinutes!.toTfJson(),
  };
}

/// Typed helper for the `space_settings.jupyter_lab_app_settings.code_repository` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsJupyterLabAppSettingsCodeRepository {
  const SagemakerSpaceSpaceSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `space_settings.jupyter_lab_app_settings.default_resource_spec` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec {
  const SagemakerSpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<String>? instanceType;

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

/// Typed helper for the `space_settings.jupyter_server_app_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsJupyterServerAppSettings {
  const SagemakerSpaceSpaceSettingsJupyterServerAppSettings({
    this.lifecycleConfigArns,
    this.codeRepository,
    required this.defaultResourceSpec,
  });

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final List<SagemakerSpaceSpaceSettingsJupyterServerAppSettingsCodeRepository>?
  codeRepository;

  final SagemakerSpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (lifecycleConfigArns != null)
      'lifecycle_config_arns': lifecycleConfigArns!.toTfJson(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    'default_resource_spec': defaultResourceSpec.encode(),
  };
}

/// Typed helper for the `space_settings.jupyter_server_app_settings.code_repository` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsJupyterServerAppSettingsCodeRepository {
  const SagemakerSpaceSpaceSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `space_settings.jupyter_server_app_settings.default_resource_spec` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec {
  const SagemakerSpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<String>? instanceType;

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

/// Typed helper for the `space_settings.kernel_gateway_app_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsKernelGatewayAppSettings {
  const SagemakerSpaceSpaceSettingsKernelGatewayAppSettings({
    this.lifecycleConfigArns,
    this.customImage,
    required this.defaultResourceSpec,
  });

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final List<SagemakerSpaceSpaceSettingsKernelGatewayAppSettingsCustomImage>?
  customImage;

  final SagemakerSpaceSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (lifecycleConfigArns != null)
      'lifecycle_config_arns': lifecycleConfigArns!.toTfJson(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': defaultResourceSpec.encode(),
  };
}

/// Typed helper for the `space_settings.kernel_gateway_app_settings.custom_image` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsKernelGatewayAppSettingsCustomImage {
  const SagemakerSpaceSpaceSettingsKernelGatewayAppSettingsCustomImage({
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

/// Typed helper for the `space_settings.kernel_gateway_app_settings.default_resource_spec` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec {
  const SagemakerSpaceSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final TfArg<String>? instanceType;

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

/// Typed helper for the `space_settings.space_storage_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsSpaceStorageSettings {
  const SagemakerSpaceSpaceSettingsSpaceStorageSettings({
    required this.ebsStorageSettings,
  });

  final SagemakerSpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings
  ebsStorageSettings;

  Map<String, Object?> encode() => {
    'ebs_storage_settings': ebsStorageSettings.encode(),
  };
}

/// Typed helper for the `space_settings.space_storage_settings.ebs_storage_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings {
  const SagemakerSpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings({
    required this.ebsVolumeSizeInGb,
  });

  final TfArg<num> ebsVolumeSizeInGb;

  Map<String, Object?> encode() => {
    'ebs_volume_size_in_gb': ebsVolumeSizeInGb.toTfJson(),
  };
}

/// Typed helper for the `space_sharing_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSpaceSharingSettings {
  const SagemakerSpaceSpaceSharingSettings({required this.sharingType});

  final TfArg<String> sharingType;

  Map<String, Object?> encode() => {'sharing_type': sharingType.toTfJson()};
}

/// Factory wrapper for `aws_sagemaker_space`.
final class AwsSagemakerSpace extends Resource {
  static const String tfType = 'aws_sagemaker_space';

  AwsSagemakerSpace({
    required super.localName,
    required TfArg<String> domainId,
    TfArg<String>? region,
    TfArg<String>? spaceDisplayName,
    required TfArg<String> spaceName,
    TfArg<Map<String, String>>? tags,
    SagemakerSpaceOwnershipSettings? ownershipSettings,
    SagemakerSpaceSpaceSettings? spaceSettings,
    SagemakerSpaceSpaceSharingSettings? spaceSharingSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_id': domainId,
           if (region != null) 'region': region,
           if (spaceDisplayName != null) 'space_display_name': spaceDisplayName,
           'space_name': spaceName,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `home_efs_file_system_uid` attribute.
  TfRef<String> get homeEfsFileSystemUid =>
      TfRef.attribute<String>(this, 'home_efs_file_system_uid');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
