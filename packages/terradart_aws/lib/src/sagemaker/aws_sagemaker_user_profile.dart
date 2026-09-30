// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;

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

  final TfArg<SagemakerUserProfileUserSettingsAutoMountHomeEfs>?
  autoMountHomeEfs;

  final TfArg<String>? defaultLandingUri;

  final TfArg<String> executionRole;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<SagemakerUserProfileUserSettingsStudioWebPortal>? studioWebPortal;

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
enum SagemakerUserProfileUserSettingsAutoMountHomeEfs implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled'),
  defaultasdomain('DefaultAsDomain');

  const SagemakerUserProfileUserSettingsAutoMountHomeEfs(this.terraformValue);
  @override
  final String terraformValue;
}

/// `studio_web_portal` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsStudioWebPortal implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsStudioWebPortal(this.terraformValue);
  @override
  final String terraformValue;
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

/// Typed helper for the `user_settings.canvas_app_settings.direct_deploy_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsDirectDeploySettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsDirectDeploySettings({
    this.status,
  });

  final TfArg<
    SagemakerUserProfileUserSettingsCanvasAppSettingsDirectDeploySettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// `status` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsCanvasAppSettingsDirectDeploySettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsCanvasAppSettingsDirectDeploySettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `user_settings.canvas_app_settings.emr_serverless_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings({
    this.executionRoleArn,
    this.status,
  });

  final RefTo<AwsIamRole>? executionRoleArn;

  final TfArg<
    SagemakerUserProfileUserSettingsCanvasAppSettingsEmrServerlessSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    'execution_role_arn': ?executionRoleArn?.encodeAs('arn').toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsCanvasAppSettingsEmrServerlessSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsCanvasAppSettingsEmrServerlessSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'amazon_bedrock_role_arn': ?amazonBedrockRoleArn?.toTfJson(),
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

  final TfArg<
    SagemakerUserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsDataSourceName
  >?
  dataSourceName;

  final TfArg<String> secretArn;

  final TfArg<
    SagemakerUserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    'data_source_name': ?dataSourceName?.toTfJson(),
    'secret_arn': secretArn.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `data_source_name` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsDataSourceName
    implements TerraformEnum {
  salesforcegenie('SalesforceGenie'),
  snowflake('Snowflake');

  const SagemakerUserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsDataSourceName(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `status` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `user_settings.canvas_app_settings.kendra_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsCanvasAppSettingsKendraSettings {
  const SagemakerUserProfileUserSettingsCanvasAppSettingsKendraSettings({
    this.status,
  });

  final TfArg<
    SagemakerUserProfileUserSettingsCanvasAppSettingsKendraSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// `status` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsCanvasAppSettingsKendraSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsCanvasAppSettingsKendraSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerUserProfileUserSettingsCanvasAppSettingsModelRegisterSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    'cross_account_model_register_role_arn': ?crossAccountModelRegisterRoleArn
        ?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsCanvasAppSettingsModelRegisterSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsCanvasAppSettingsModelRegisterSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerUserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettingsStatus
  >?
  status;

  Map<String, Object?> encode() => {
    'amazon_forecast_role_arn': ?amazonForecastRoleArn?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettingsStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettingsStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    's3_artifact_path': ?s3ArtifactPath?.toTfJson(),
    's3_kms_key_id': ?s3KmsKeyId?.toTfJson(),
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

  final TfArg<List<String>>? lifecycleConfigArns;

  final SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement?
  appLifecycleManagement;

  final List<SagemakerUserProfileUserSettingsCodeEditorAppSettingsCustomImage>?
  customImage;

  final SagemakerUserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    'built_in_lifecycle_config_arn': ?builtInLifecycleConfigArn?.toTfJson(),
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    'app_lifecycle_management': ?appLifecycleManagement?.encode(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
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

  Map<String, Object?> encode() => {'idle_settings': ?idleSettings?.encode()};
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

  final TfArg<
    SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
  >?
  lifecycleManagement;

  final TfArg<num>? maxIdleTimeoutInMinutes;

  final TfArg<num>? minIdleTimeoutInMinutes;

  Map<String, Object?> encode() => {
    'idle_timeout_in_minutes': ?idleTimeoutInMinutes?.toTfJson(),
    'lifecycle_management': ?lifecycleManagement?.toTfJson(),
    'max_idle_timeout_in_minutes': ?maxIdleTimeoutInMinutes?.toTfJson(),
    'min_idle_timeout_in_minutes': ?minIdleTimeoutInMinutes?.toTfJson(),
  };
}

/// `lifecycle_management` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'image_version_number': ?imageVersionNumber?.toTfJson(),
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

  final TfArg<
    SagemakerUserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

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
enum SagemakerUserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpecInstanceType
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

  const SagemakerUserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'file_system_path': ?fileSystemPath?.toTfJson(),
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

  final TfArg<List<String>>? lifecycleConfigArns;

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

/// Typed helper for the `user_settings.jupyter_lab_app_settings.app_lifecycle_management` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement {
  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  final SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettings?
  idleSettings;

  Map<String, Object?> encode() => {'idle_settings': ?idleSettings?.encode()};
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

  final TfArg<
    SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
  >?
  lifecycleManagement;

  final TfArg<num>? maxIdleTimeoutInMinutes;

  final TfArg<num>? minIdleTimeoutInMinutes;

  Map<String, Object?> encode() => {
    'idle_timeout_in_minutes': ?idleTimeoutInMinutes?.toTfJson(),
    'lifecycle_management': ?lifecycleManagement?.toTfJson(),
    'max_idle_timeout_in_minutes': ?maxIdleTimeoutInMinutes?.toTfJson(),
    'min_idle_timeout_in_minutes': ?minIdleTimeoutInMinutes?.toTfJson(),
  };
}

/// `lifecycle_management` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagementIdleSettingsLifecycleManagement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'image_version_number': ?imageVersionNumber?.toTfJson(),
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

  final TfArg<
    SagemakerUserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

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
enum SagemakerUserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpecInstanceType
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

  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `user_settings.jupyter_lab_app_settings.emr_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsJupyterLabAppSettingsEmrSettings {
  const SagemakerUserProfileUserSettingsJupyterLabAppSettingsEmrSettings({
    this.assumableRoleArns,
    this.executionRoleArns,
  });

  final TfArg<List<String>>? assumableRoleArns;

  final TfArg<List<String>>? executionRoleArns;

  Map<String, Object?> encode() => {
    'assumable_role_arns': ?assumableRoleArns?.toTfJson(),
    'execution_role_arns': ?executionRoleArns?.toTfJson(),
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

  final TfArg<List<String>>? lifecycleConfigArns;

  final List<
    SagemakerUserProfileUserSettingsJupyterServerAppSettingsCodeRepository
  >?
  codeRepository;

  final SagemakerUserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
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

  final TfArg<
    SagemakerUserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

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
enum SagemakerUserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpecInstanceType
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

  const SagemakerUserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<List<String>>? lifecycleConfigArns;

  final List<
    SagemakerUserProfileUserSettingsKernelGatewayAppSettingsCustomImage
  >?
  customImage;

  final SagemakerUserProfileUserSettingsKernelGatewayAppSettingsDefaultResourceSpec?
  defaultResourceSpec;

  Map<String, Object?> encode() => {
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
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
    'image_version_number': ?imageVersionNumber?.toTfJson(),
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

  final TfArg<
    SagemakerUserProfileUserSettingsKernelGatewayAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

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
enum SagemakerUserProfileUserSettingsKernelGatewayAppSettingsDefaultResourceSpecInstanceType
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

  const SagemakerUserProfileUserSettingsKernelGatewayAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'default_resource_spec': ?defaultResourceSpec?.encode(),
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
    'image_version_number': ?imageVersionNumber?.toTfJson(),
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

  final TfArg<
    SagemakerUserProfileUserSettingsRSessionAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

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
enum SagemakerUserProfileUserSettingsRSessionAppSettingsDefaultResourceSpecInstanceType
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

  const SagemakerUserProfileUserSettingsRSessionAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `user_settings.r_studio_server_pro_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileUserSettingsRStudioServerProAppSettings {
  const SagemakerUserProfileUserSettingsRStudioServerProAppSettings({
    this.accessStatus,
    this.userGroup,
  });

  final TfArg<
    SagemakerUserProfileUserSettingsRStudioServerProAppSettingsAccessStatus
  >?
  accessStatus;

  final TfArg<
    SagemakerUserProfileUserSettingsRStudioServerProAppSettingsUserGroup
  >?
  userGroup;

  Map<String, Object?> encode() => {
    'access_status': ?accessStatus?.toTfJson(),
    'user_group': ?userGroup?.toTfJson(),
  };
}

/// `access_status` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsRStudioServerProAppSettingsAccessStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerUserProfileUserSettingsRStudioServerProAppSettingsAccessStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `user_group` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsRStudioServerProAppSettingsUserGroup
    implements TerraformEnum {
  rStudioAdmin('R_STUDIO_ADMIN'),
  rStudioUser('R_STUDIO_USER');

  const SagemakerUserProfileUserSettingsRStudioServerProAppSettingsUserGroup(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerUserProfileUserSettingsSharingSettingsNotebookOutputOption
  >?
  notebookOutputOption;

  final TfArg<String>? s3KmsKeyId;

  final TfArg<String>? s3OutputPath;

  Map<String, Object?> encode() => {
    'notebook_output_option': ?notebookOutputOption?.toTfJson(),
    's3_kms_key_id': ?s3KmsKeyId?.toTfJson(),
    's3_output_path': ?s3OutputPath?.toTfJson(),
  };
}

/// `notebook_output_option` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsSharingSettingsNotebookOutputOption
    implements TerraformEnum {
  allowed('Allowed'),
  disabled('Disabled');

  const SagemakerUserProfileUserSettingsSharingSettingsNotebookOutputOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'default_ebs_storage_settings': ?defaultEbsStorageSettings?.encode(),
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

  final List<
    TfArg<SagemakerUserProfileUserSettingsStudioWebPortalSettingsHiddenAppTypes>
  >?
  hiddenAppTypes;

  final List<
    TfArg<
      SagemakerUserProfileUserSettingsStudioWebPortalSettingsHiddenInstanceTypes
    >
  >?
  hiddenInstanceTypes;

  final List<
    TfArg<SagemakerUserProfileUserSettingsStudioWebPortalSettingsHiddenMlTools>
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
enum SagemakerUserProfileUserSettingsStudioWebPortalSettingsHiddenAppTypes
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

  const SagemakerUserProfileUserSettingsStudioWebPortalSettingsHiddenAppTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `hidden_instance_types` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsStudioWebPortalSettingsHiddenInstanceTypes
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

  const SagemakerUserProfileUserSettingsStudioWebPortalSettingsHiddenInstanceTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `hidden_ml_tools` — derived from the provider schema description.
enum SagemakerUserProfileUserSettingsStudioWebPortalSettingsHiddenMlTools
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

  const SagemakerUserProfileUserSettingsStudioWebPortalSettingsHiddenMlTools(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'default_resource_spec': ?defaultResourceSpec?.encode(),
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

  final TfArg<
    SagemakerUserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpecInstanceType
  >?
  instanceType;

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
enum SagemakerUserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpecInstanceType
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

  const SagemakerUserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpecInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
           'region': ?region,
           'single_sign_on_user_identifier': ?singleSignOnUserIdentifier,
           'single_sign_on_user_value': ?singleSignOnUserValue,
           'tags': ?tags,
           'user_profile_name': userProfileName,
           if (userSettings != null)
             'user_settings': TfArg.literal(userSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerUserProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerUserProfile>`.
  RefTo<AwsSagemakerUserProfile> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `home_efs_file_system_uid` attribute.
  TfRef<String> get homeEfsFileSystemUid =>
      TfRef.attribute<String>(this, 'home_efs_file_system_uid');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainIdRef => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `single_sign_on_user_identifier` attribute.
  TfRef<String> get singleSignOnUserIdentifierRef =>
      TfRef.attribute<String>(this, 'single_sign_on_user_identifier');

  /// Reference to `single_sign_on_user_value` attribute.
  TfRef<String> get singleSignOnUserValueRef =>
      TfRef.attribute<String>(this, 'single_sign_on_user_value');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_profile_name` attribute.
  TfRef<String> get userProfileNameRef =>
      TfRef.attribute<String>(this, 'user_profile_name');
}
