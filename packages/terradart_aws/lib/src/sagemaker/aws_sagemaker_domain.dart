// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_domain`.
const Set<String> _awsSagemakerDomainSensitive = <String>{};

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

  final TfArg<List<Object?>>? securityGroups;

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
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
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

  final TfArg<String>? lifecycleManagement;

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

  final TfArg<String>? autoMountHomeEfs;

  final TfArg<String>? defaultLandingUri;

  final TfArg<String> executionRole;

  final TfArg<List<Object?>>? securityGroups;

  final TfArg<String>? studioWebPortal;

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
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
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

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.canvas_app_settings.emr_serverless_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings({
    this.executionRoleArn,
    this.status,
  });

  final TfArg<String>? executionRoleArn;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (executionRoleArn != null)
      'execution_role_arn': executionRoleArn!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
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

  final TfArg<String>? dataSourceName;

  final TfArg<String> secretArn;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (dataSourceName != null) 'data_source_name': dataSourceName!.toTfJson(),
    'secret_arn': secretArn.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `default_user_settings.canvas_app_settings.kendra_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsCanvasAppSettingsKendraSettings {
  const SagemakerDomainDefaultUserSettingsCanvasAppSettingsKendraSettings({
    this.status,
  });

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
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

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (crossAccountModelRegisterRoleArn != null)
      'cross_account_model_register_role_arn': crossAccountModelRegisterRoleArn!
          .toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
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

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (amazonForecastRoleArn != null)
      'amazon_forecast_role_arn': amazonForecastRoleArn!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
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

  final TfArg<String>? lifecycleManagement;

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

  final TfArg<String>? lifecycleManagement;

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

/// Typed helper for the `default_user_settings.r_studio_server_pro_app_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDefaultUserSettingsRStudioServerProAppSettings {
  const SagemakerDomainDefaultUserSettingsRStudioServerProAppSettings({
    this.accessStatus,
    this.userGroup,
  });

  final TfArg<String>? accessStatus;

  final TfArg<String>? userGroup;

  Map<String, Object?> encode() => {
    if (accessStatus != null) 'access_status': accessStatus!.toTfJson(),
    if (userGroup != null) 'user_group': userGroup!.toTfJson(),
  };
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

  final TfArg<String>? notebookOutputOption;

  final TfArg<String>? s3KmsKeyId;

  final TfArg<String>? s3OutputPath;

  Map<String, Object?> encode() => {
    if (notebookOutputOption != null)
      'notebook_output_option': notebookOutputOption!.toTfJson(),
    if (s3KmsKeyId != null) 's3_kms_key_id': s3KmsKeyId!.toTfJson(),
    if (s3OutputPath != null) 's3_output_path': s3OutputPath!.toTfJson(),
  };
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

  final TfArg<List<Object?>>? hiddenAppTypes;

  final TfArg<List<Object?>>? hiddenInstanceTypes;

  final TfArg<List<Object?>>? hiddenMlTools;

  Map<String, Object?> encode() => {
    if (hiddenAppTypes != null) 'hidden_app_types': hiddenAppTypes!.toTfJson(),
    if (hiddenInstanceTypes != null)
      'hidden_instance_types': hiddenInstanceTypes!.toTfJson(),
    if (hiddenMlTools != null) 'hidden_ml_tools': hiddenMlTools!.toTfJson(),
  };
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

  final TfArg<String>? executionRoleIdentityConfig;

  final TfArg<List<Object?>>? securityGroupIds;

  final SagemakerDomainDomainSettingsDockerSettings? dockerSettings;

  final SagemakerDomainDomainSettingsRStudioServerProDomainSettings?
  rStudioServerProDomainSettings;

  final SagemakerDomainDomainSettingsTrustedIdentityPropagationSettings?
  trustedIdentityPropagationSettings;

  Map<String, Object?> encode() => {
    if (executionRoleIdentityConfig != null)
      'execution_role_identity_config': executionRoleIdentityConfig!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (dockerSettings != null) 'docker_settings': dockerSettings!.encode(),
    if (rStudioServerProDomainSettings != null)
      'r_studio_server_pro_domain_settings': rStudioServerProDomainSettings!
          .encode(),
    if (trustedIdentityPropagationSettings != null)
      'trusted_identity_propagation_settings':
          trustedIdentityPropagationSettings!.encode(),
  };
}

/// Typed helper for the `domain_settings.docker_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDomainSettingsDockerSettings {
  const SagemakerDomainDomainSettingsDockerSettings({
    this.enableDockerAccess,
    this.vpcOnlyTrustedAccounts,
  });

  final TfArg<String>? enableDockerAccess;

  final TfArg<List<Object?>>? vpcOnlyTrustedAccounts;

  Map<String, Object?> encode() => {
    if (enableDockerAccess != null)
      'enable_docker_access': enableDockerAccess!.toTfJson(),
    if (vpcOnlyTrustedAccounts != null)
      'vpc_only_trusted_accounts': vpcOnlyTrustedAccounts!.toTfJson(),
  };
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

/// Typed helper for the `domain_settings.trusted_identity_propagation_settings` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainDomainSettingsTrustedIdentityPropagationSettings {
  const SagemakerDomainDomainSettingsTrustedIdentityPropagationSettings({
    required this.status,
  });

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Typed helper for the `retention_policy` block of
/// `aws_sagemaker_domain` (derived from provider schema).
@immutable
final class SagemakerDomainRetentionPolicy {
  const SagemakerDomainRetentionPolicy({this.homeEfsFileSystem});

  final TfArg<String>? homeEfsFileSystem;

  Map<String, Object?> encode() => {
    if (homeEfsFileSystem != null)
      'home_efs_file_system': homeEfsFileSystem!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_domain`.
final class AwsSagemakerDomain extends Resource {
  static const String tfType = 'aws_sagemaker_domain';

  AwsSagemakerDomain({
    required super.localName,
    TfArg<String>? appNetworkAccessType,
    TfArg<String>? appSecurityGroupManagement,
    required TfArg<String> authMode,
    required TfArg<String> domainName,
    TfArg<String>? kmsKeyId,
    TfArg<String>? region,
    required TfArg<List<String>> subnetIds,
    TfArg<String>? tagPropagation,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcId,
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
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (region != null) 'region': region,
           'subnet_ids': subnetIds,
           if (tagPropagation != null) 'tag_propagation': tagPropagation,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId,
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
