// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_user_profile`.
const Set<String> _awsSagemakerUserProfileSensitive = <String>{};

/// Typed helper for the `user_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettings {
  const SagemakerUserProfileUserSettings({
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

  final SagemakerUserProfileUserSettingsCanvasAppSettings? canvasAppSettings;

  final SagemakerUserProfileUserSettingsCodeEditorAppSettings?
  codeEditorAppSettings;

  final List<SagemakerUserProfileUserSettingsCustomFileSystemConfig>?
  customFileSystemConfig;

  final SagemakerUserProfileUserSettingsCustomPosixUserConfig?
  customPosixUserConfig;

  final SagemakerUserProfileUserSettingsJupyterLabAppSettings?
  jupyterLabAppSettings;

  final SagemakerUserProfileUserSettingsJupyterServerAppSettings?
  jupyterServerAppSettings;

  final SagemakerUserProfileUserSettingsKernelGatewayAppSettings?
  kernelGatewayAppSettings;

  final SagemakerUserProfileUserSettingsRSessionAppSettings?
  rSessionAppSettings;

  final SagemakerUserProfileUserSettingsRStudioServerProAppSettings?
  rStudioServerProAppSettings;

  final SagemakerUserProfileUserSettingsSharingSettings? sharingSettings;

  final SagemakerUserProfileUserSettingsSpaceStorageSettings?
  spaceStorageSettings;

  final SagemakerUserProfileUserSettingsStudioWebPortalSettings?
  studioWebPortalSettings;

  final SagemakerUserProfileUserSettingsTensorBoardAppSettings?
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

/// Typed helper for the `user_settings.canvas_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettings({
    this.directDeploySettings,
    this.emrServerlessSettings,
    this.generativeAiSettings,
    this.identityProviderOauthSettings,
    this.kendraSettings,
    this.modelRegisterSettings,
    this.timeSeriesForecastingSettings,
    this.workspaceSettings,
  });

  final SagemakerUserProfileUserSettingsCanvasAppSettingsDirectDeploySettings?
  directDeploySettings;

  final SagemakerUserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings?
  emrServerlessSettings;

  final SagemakerUserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings?
  generativeAiSettings;

  final List<
    SagemakerUserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSettings
  >?
  identityProviderOauthSettings;

  final SagemakerUserProfileUserSettingsCanvasAppSettingsKendraSettings?
  kendraSettings;

  final SagemakerUserProfileUserSettingsCanvasAppSettingsModelRegisterSettings?
  modelRegisterSettings;

  final SagemakerUserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings?
  timeSeriesForecastingSettings;

  final SagemakerUserProfileUserSettingsCanvasAppSettingsWorkspaceSettings?
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

/// Typed helper for the `user_settings.canvas_app_settings.direct_deploy_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsDirectDeploySettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsDirectDeploySettings({
    this.status,
  });

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `user_settings.canvas_app_settings.emr_serverless_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings({
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

/// Typed helper for the `user_settings.canvas_app_settings.generative_ai_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings({
    this.amazonBedrockRoleArn,
  });

  final TfArg<String>? amazonBedrockRoleArn;

  Map<String, Object?> encode() => {
    if (amazonBedrockRoleArn != null)
      'amazon_bedrock_role_arn': amazonBedrockRoleArn!.toTfJson(),
  };
}

/// Typed helper for the `user_settings.canvas_app_settings.identity_provider_oauth_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSettings({
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

/// Typed helper for the `user_settings.canvas_app_settings.kendra_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsKendraSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsKendraSettings({
    this.status,
  });

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `user_settings.canvas_app_settings.model_register_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsModelRegisterSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsModelRegisterSettings({
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

/// Typed helper for the `user_settings.canvas_app_settings.time_series_forecasting_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings({
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

/// Typed helper for the `user_settings.canvas_app_settings.workspace_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsWorkspaceSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsWorkspaceSettings({
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

/// Typed helper for the `user_settings.code_editor_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCodeEditorAppSettings {
  const SagemakerUserProfileUserSettingsCodeEditorAppSettings({
    this.builtInLifecycleConfigArn,
    this.lifecycleConfigArns,
    this.appLifecycleManagement,
    this.customImage,
    this.defaultResourceSpec,
  });

  final TfArg<String>? builtInLifecycleConfigArn;

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement?
  appLifecycleManagement;

  final List<SagemakerUserProfileUserSettingsCodeEditorAppSettingsCustomImage>?
  customImage;

  final SagemakerUserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec?
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

/// Typed helper for the `user_settings.code_editor_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement {
  const SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  final SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  Map<String, Object?> encode() => {
    if (idleSettings != null) 'idle_settings': idleSettings!.encode(),
  };
}

/// Typed helper for the `user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings {
  const SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings({
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

/// Typed helper for the `user_settings.code_editor_app_settings.custom_image` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCodeEditorAppSettingsCustomImage {
  const SagemakerUserProfileUserSettingsCodeEditorAppSettingsCustomImage({
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

/// Typed helper for the `user_settings.code_editor_app_settings.default_resource_spec` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec {
  const SagemakerUserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec({
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

/// Typed helper for the `user_settings.custom_file_system_config` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCustomFileSystemConfig {
  const SagemakerUserProfileUserSettingsCustomFileSystemConfig({
    this.efsFileSystemConfig,
  });

  final List<
    SagemakerUserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig
  >?
  efsFileSystemConfig;

  Map<String, Object?> encode() => {
    if (efsFileSystemConfig != null)
      'efs_file_system_config': [
        for (final e in efsFileSystemConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `user_settings.custom_file_system_config.efs_file_system_config` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig {
  const SagemakerUserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig({
    required this.fileSystemId,
    this.fileSystemPath,
  });

  final TfArg<String> fileSystemId;

  final TfArg<String>? fileSystemPath;

  Map<String, Object?> encode() => {
    'file_system_id': fileSystemId.toTfJson(),
    if (fileSystemPath != null) 'file_system_path': fileSystemPath!.toTfJson(),
  };
}

/// Typed helper for the `user_settings.custom_posix_user_config` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCustomPosixUserConfig {
  const SagemakerUserProfileUserSettingsCustomPosixUserConfig({
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

/// Typed helper for the `user_settings.jupyter_lab_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterLabAppSettings {
  const SagemakerUserProfileUserSettingsJupyterLabAppSettings({
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

  final SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement?
  appLifecycleManagement;

  final List<
    SagemakerUserProfileUserSettingsJupyterLabAppSettingsCodeRepository
  >?
  codeRepository;

  final List<SagemakerUserProfileUserSettingsJupyterLabAppSettingsCustomImage>?
  customImage;

  final SagemakerUserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  final SagemakerUserProfileUserSettingsJupyterLabAppSettingsEmrSettings?
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

/// Typed helper for the `user_settings.jupyter_lab_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement {
  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  final SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  Map<String, Object?> encode() => {
    if (idleSettings != null) 'idle_settings': idleSettings!.encode(),
  };
}

/// Typed helper for the `user_settings.jupyter_lab_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings {
  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings({
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

/// Typed helper for the `user_settings.jupyter_lab_app_settings.code_repository` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterLabAppSettingsCodeRepository {
  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `user_settings.jupyter_lab_app_settings.custom_image` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterLabAppSettingsCustomImage {
  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsCustomImage({
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

/// Typed helper for the `user_settings.jupyter_lab_app_settings.default_resource_spec` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpec {
  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpec({
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

/// Typed helper for the `user_settings.jupyter_lab_app_settings.emr_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterLabAppSettingsEmrSettings {
  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsEmrSettings({
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

/// Typed helper for the `user_settings.jupyter_server_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterServerAppSettings {
  const SagemakerUserProfileUserSettingsJupyterServerAppSettings({
    this.lifecycleConfigArns,
    this.codeRepository,
    this.defaultResourceSpec,
  });

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final List<
    SagemakerUserProfileUserSettingsJupyterServerAppSettingsCodeRepository
  >?
  codeRepository;

  final SagemakerUserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpec?
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

/// Typed helper for the `user_settings.jupyter_server_app_settings.code_repository` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterServerAppSettingsCodeRepository {
  const SagemakerUserProfileUserSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `user_settings.jupyter_server_app_settings.default_resource_spec` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpec {
  const SagemakerUserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpec({
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

/// Typed helper for the `user_settings.kernel_gateway_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsKernelGatewayAppSettings {
  const SagemakerUserProfileUserSettingsKernelGatewayAppSettings({
    this.lifecycleConfigArns,
    this.customImage,
    this.defaultResourceSpec,
  });

  final TfArg<List<Object?>>? lifecycleConfigArns;

  final List<
    SagemakerUserProfileUserSettingsKernelGatewayAppSettingsCustomImage
  >?
  customImage;

  final SagemakerUserProfileUserSettingsKernelGatewayAppSettingsDefaultResourceSpec?
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

/// Typed helper for the `user_settings.kernel_gateway_app_settings.custom_image` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsKernelGatewayAppSettingsCustomImage {
  const SagemakerUserProfileUserSettingsKernelGatewayAppSettingsCustomImage({
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

/// Typed helper for the `user_settings.kernel_gateway_app_settings.default_resource_spec` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsKernelGatewayAppSettingsDefaultResourceSpec {
  const SagemakerUserProfileUserSettingsKernelGatewayAppSettingsDefaultResourceSpec({
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

/// Typed helper for the `user_settings.r_session_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsRSessionAppSettings {
  const SagemakerUserProfileUserSettingsRSessionAppSettings({
    this.customImage,
    this.defaultResourceSpec,
  });

  final List<SagemakerUserProfileUserSettingsRSessionAppSettingsCustomImage>?
  customImage;

  final SagemakerUserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `user_settings.r_session_app_settings.custom_image` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsRSessionAppSettingsCustomImage {
  const SagemakerUserProfileUserSettingsRSessionAppSettingsCustomImage({
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

/// Typed helper for the `user_settings.r_session_app_settings.default_resource_spec` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec {
  const SagemakerUserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec({
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

/// Typed helper for the `user_settings.r_studio_server_pro_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsRStudioServerProAppSettings {
  const SagemakerUserProfileUserSettingsRStudioServerProAppSettings({
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

/// Typed helper for the `user_settings.sharing_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsSharingSettings {
  const SagemakerUserProfileUserSettingsSharingSettings({
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

/// Typed helper for the `user_settings.space_storage_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsSpaceStorageSettings {
  const SagemakerUserProfileUserSettingsSpaceStorageSettings({
    this.defaultEbsStorageSettings,
  });

  final SagemakerUserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings?
  defaultEbsStorageSettings;

  Map<String, Object?> encode() => {
    if (defaultEbsStorageSettings != null)
      'default_ebs_storage_settings': defaultEbsStorageSettings!.encode(),
  };
}

/// Typed helper for the `user_settings.space_storage_settings.default_ebs_storage_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings {
  const SagemakerUserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings({
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

/// Typed helper for the `user_settings.studio_web_portal_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsStudioWebPortalSettings {
  const SagemakerUserProfileUserSettingsStudioWebPortalSettings({
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

/// Typed helper for the `user_settings.tensor_board_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsTensorBoardAppSettings {
  const SagemakerUserProfileUserSettingsTensorBoardAppSettings({
    this.defaultResourceSpec,
  });

  final SagemakerUserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (defaultResourceSpec != null)
      'default_resource_spec': defaultResourceSpec!.encode(),
  };
}

/// Typed helper for the `user_settings.tensor_board_app_settings.default_resource_spec` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpec {
  const SagemakerUserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpec({
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

/// Factory wrapper for `aws_sagemaker_user_profile`.
final class AwsSagemakerUserProfile extends Resource {
  static const String tfType = 'aws_sagemaker_user_profile';

  AwsSagemakerUserProfile({
    required super.localName,
    required TfArg<String> domainId,
    TfArg<String>? region,
    TfArg<String>? singleSignOnUserIdentifier,
    TfArg<String>? singleSignOnUserValue,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userProfileName,
    SagemakerUserProfileUserSettings? userSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_id': domainId,
           if (region != null) 'region': region,
           if (singleSignOnUserIdentifier != null)
             'single_sign_on_user_identifier': singleSignOnUserIdentifier,
           if (singleSignOnUserValue != null)
             'single_sign_on_user_value': singleSignOnUserValue,
           if (tags != null) 'tags': tags,
           'user_profile_name': userProfileName,
           if (userSettings != null)
             'user_settings': TfArg.literal(userSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerUserProfileSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `home_efs_file_system_uid` attribute.
  TfRef<String> get homeEfsFileSystemUid =>
      TfRef.attribute<String>(this, 'home_efs_file_system_uid');
}
