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

  final SagemakerUserProfileAutoMountHomeEfs? autoMountHomeEfs;

  final TfArg<String>? defaultLandingUri;

  final TfArg<String> executionRole;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final SagemakerUserProfileStudioWebPortal? studioWebPortal;

  final SagemakerUserProfileCanvasAppSettings? canvasAppSettings;

  final SagemakerUserProfileCodeEditorAppSettings? codeEditorAppSettings;

  final List<SagemakerUserProfileCustomFileSystemConfig>?
  customFileSystemConfig;

  final SagemakerUserProfileCustomPosixUserConfig? customPosixUserConfig;

  final SagemakerUserProfileJupyterLabAppSettings? jupyterLabAppSettings;

  final SagemakerUserProfileJupyterServerAppSettings? jupyterServerAppSettings;

  final SagemakerUserProfileKernelGatewayAppSettings? kernelGatewayAppSettings;

  final SagemakerUserProfileRSessionAppSettings? rSessionAppSettings;

  final SagemakerUserProfileRStudioServerProAppSettings?
  rStudioServerProAppSettings;

  final SagemakerUserProfileSharingSettings? sharingSettings;

  final SagemakerUserProfileSpaceStorageSettings? spaceStorageSettings;

  final SagemakerUserProfileStudioWebPortalSettings? studioWebPortalSettings;

  final SagemakerUserProfileTensorBoardAppSettings? tensorBoardAppSettings;

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
extension type const SagemakerUserProfileAutoMountHomeEfs._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileAutoMountHomeEfs.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileAutoMountHomeEfs.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileAutoMountHomeEfs.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SagemakerUserProfileAutoMountHomeEfs._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = SagemakerUserProfileAutoMountHomeEfs._(
    TfArgLiteral('Disabled'),
  );
  static const defaultasdomain = SagemakerUserProfileAutoMountHomeEfs._(
    TfArgLiteral('DefaultAsDomain'),
  );

  static const List<SagemakerUserProfileAutoMountHomeEfs> values = [
    enabled,
    disabled,
    defaultasdomain,
  ];
}

/// `studio_web_portal` — derived from the provider schema description.
extension type const SagemakerUserProfileStudioWebPortal._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileStudioWebPortal.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileStudioWebPortal.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileStudioWebPortal.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SagemakerUserProfileStudioWebPortal._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SagemakerUserProfileStudioWebPortal._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerUserProfileStudioWebPortal> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `user_settings.canvas_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileCanvasAppSettings {
  const SagemakerUserProfileCanvasAppSettings({
    this.directDeploySettings,
    this.emrServerlessSettings,
    this.generativeAiSettings,
    this.identityProviderOauthSettings,
    this.kendraSettings,
    this.modelRegisterSettings,
    this.timeSeriesForecastingSettings,
    this.workspaceSettings,
  });

  final SagemakerUserProfileDirectDeploySettings? directDeploySettings;

  final SagemakerUserProfileEmrServerlessSettings? emrServerlessSettings;

  final SagemakerUserProfileGenerativeAiSettings? generativeAiSettings;

  final List<SagemakerUserProfileIdentityProviderOauthSettings>?
  identityProviderOauthSettings;

  final SagemakerUserProfileKendraSettings? kendraSettings;

  final SagemakerUserProfileModelRegisterSettings? modelRegisterSettings;

  final SagemakerUserProfileTimeSeriesForecastingSettings?
  timeSeriesForecastingSettings;

  final SagemakerUserProfileWorkspaceSettings? workspaceSettings;

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
final class SagemakerUserProfileDirectDeploySettings {
  const SagemakerUserProfileDirectDeploySettings({this.status});

  final SagemakerUserProfileStatus? status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// `status` — derived from the provider schema description.
extension type const SagemakerUserProfileStatus._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileStatus.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SagemakerUserProfileStatus._(TfArgLiteral('ENABLED'));
  static const disabled = SagemakerUserProfileStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerUserProfileStatus> values = [enabled, disabled];
}

/// Typed helper for the `user_settings.canvas_app_settings.emr_serverless_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileEmrServerlessSettings {
  const SagemakerUserProfileEmrServerlessSettings({
    this.executionRoleArn,
    this.status,
  });

  final RefTo<AwsIamRole>? executionRoleArn;

  final SagemakerUserProfileStatus? status;

  Map<String, Object?> encode() => {
    'execution_role_arn': ?executionRoleArn?.encodeAs('arn').toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `user_settings.canvas_app_settings.generative_ai_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileGenerativeAiSettings {
  const SagemakerUserProfileGenerativeAiSettings({this.amazonBedrockRoleArn});

  final TfArg<String>? amazonBedrockRoleArn;

  Map<String, Object?> encode() => {
    'amazon_bedrock_role_arn': ?amazonBedrockRoleArn?.toTfJson(),
  };
}

/// Typed helper for the `user_settings.canvas_app_settings.identity_provider_oauth_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileIdentityProviderOauthSettings {
  const SagemakerUserProfileIdentityProviderOauthSettings({
    this.dataSourceName,
    required this.secretArn,
    this.status,
  });

  final SagemakerUserProfileDataSourceName? dataSourceName;

  final TfArg<String> secretArn;

  final SagemakerUserProfileStatus? status;

  Map<String, Object?> encode() => {
    'data_source_name': ?dataSourceName?.toTfJson(),
    'secret_arn': secretArn.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `data_source_name` — derived from the provider schema description.
extension type const SagemakerUserProfileDataSourceName._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileDataSourceName.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileDataSourceName.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileDataSourceName.arg(TfArg<String> arg) : this._(arg);

  static const salesforcegenie = SagemakerUserProfileDataSourceName._(
    TfArgLiteral('SalesforceGenie'),
  );
  static const snowflake = SagemakerUserProfileDataSourceName._(
    TfArgLiteral('Snowflake'),
  );

  static const List<SagemakerUserProfileDataSourceName> values = [
    salesforcegenie,
    snowflake,
  ];
}

/// Typed helper for the `user_settings.canvas_app_settings.kendra_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileKendraSettings {
  const SagemakerUserProfileKendraSettings({this.status});

  final SagemakerUserProfileStatus? status;

  Map<String, Object?> encode() => {'status': ?status?.toTfJson()};
}

/// Typed helper for the `user_settings.canvas_app_settings.model_register_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileModelRegisterSettings {
  const SagemakerUserProfileModelRegisterSettings({
    this.crossAccountModelRegisterRoleArn,
    this.status,
  });

  final TfArg<String>? crossAccountModelRegisterRoleArn;

  final SagemakerUserProfileStatus? status;

  Map<String, Object?> encode() => {
    'cross_account_model_register_role_arn': ?crossAccountModelRegisterRoleArn
        ?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `user_settings.canvas_app_settings.time_series_forecasting_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileTimeSeriesForecastingSettings {
  const SagemakerUserProfileTimeSeriesForecastingSettings({
    this.amazonForecastRoleArn,
    this.status,
  });

  final TfArg<String>? amazonForecastRoleArn;

  final SagemakerUserProfileStatus? status;

  Map<String, Object?> encode() => {
    'amazon_forecast_role_arn': ?amazonForecastRoleArn?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// Typed helper for the `user_settings.canvas_app_settings.workspace_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileWorkspaceSettings {
  const SagemakerUserProfileWorkspaceSettings({
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
final class SagemakerUserProfileCodeEditorAppSettings {
  const SagemakerUserProfileCodeEditorAppSettings({
    this.builtInLifecycleConfigArn,
    this.lifecycleConfigArns,
    this.appLifecycleManagement,
    this.customImage,
    this.defaultResourceSpec,
  });

  final TfArg<String>? builtInLifecycleConfigArn;

  final TfArg<List<String>>? lifecycleConfigArns;

  final SagemakerUserProfileAppLifecycleManagement? appLifecycleManagement;

  final List<SagemakerUserProfileCustomImage>? customImage;

  final SagemakerUserProfileDefaultResourceSpec? defaultResourceSpec;

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
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerUserProfileAppLifecycleManagement {
  const SagemakerUserProfileAppLifecycleManagement({this.idleSettings});

  final SagemakerUserProfileIdleSettings? idleSettings;

  Map<String, Object?> encode() => {'idle_settings': ?idleSettings?.encode()};
}

/// Typed helper for the `user_settings.code_editor_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerUserProfileIdleSettings {
  const SagemakerUserProfileIdleSettings({
    this.idleTimeoutInMinutes,
    this.lifecycleManagement,
    this.maxIdleTimeoutInMinutes,
    this.minIdleTimeoutInMinutes,
  });

  final TfArg<num>? idleTimeoutInMinutes;

  final SagemakerUserProfileLifecycleManagement? lifecycleManagement;

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
extension type const SagemakerUserProfileLifecycleManagement._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileLifecycleManagement.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileLifecycleManagement.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileLifecycleManagement.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SagemakerUserProfileLifecycleManagement._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SagemakerUserProfileLifecycleManagement._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerUserProfileLifecycleManagement> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `user_settings.code_editor_app_settings.custom_image` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerUserProfileCustomImage {
  const SagemakerUserProfileCustomImage({
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
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerUserProfileDefaultResourceSpec {
  const SagemakerUserProfileDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  final SagemakerUserProfileInstanceType? instanceType;

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
extension type const SagemakerUserProfileInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const system = SagemakerUserProfileInstanceType._(
    TfArgLiteral('system'),
  );
  static const mlT3Micro = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.t3.micro'),
  );
  static const mlT3Small = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.t3.small'),
  );
  static const mlT3Medium = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlM5Large = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5.8xlarge'),
  );
  static const mlM5p12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5.16xlarge'),
  );
  static const mlM5p24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlM5dLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5d.large'),
  );
  static const mlM5dXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5d.xlarge'),
  );
  static const mlM5d2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5d.2xlarge'),
  );
  static const mlM5d4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5d.4xlarge'),
  );
  static const mlM5d8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5d.8xlarge'),
  );
  static const mlM5d12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5d.12xlarge'),
  );
  static const mlM5d16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5d.16xlarge'),
  );
  static const mlM5d24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m5d.24xlarge'),
  );
  static const mlC5Large = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c5.large'),
  );
  static const mlC5Xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c5.12xlarge'),
  );
  static const mlC5p18xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5p24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c5.24xlarge'),
  );
  static const mlP3p2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p3dn.24xlarge'),
  );
  static const mlG4dnXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlR5Large = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlG5Xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlGeospatialInteractive = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.geospatial.interactive'),
  );
  static const mlP4d24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlP5p48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlP6B200p48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p6-b200.48xlarge'),
  );
  static const mlM6iLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlM7iLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC6iLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlC7iLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR6iLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6i.2xlarge'),
  );
  static const mlR6i4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6i.4xlarge'),
  );
  static const mlR6i8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6i.8xlarge'),
  );
  static const mlR6i12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6i.12xlarge'),
  );
  static const mlR6i16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6i.16xlarge'),
  );
  static const mlR6i24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6i.24xlarge'),
  );
  static const mlR6i32xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6i.32xlarge'),
  );
  static const mlR7iLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlM6idLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6id.large'),
  );
  static const mlM6idXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6id.xlarge'),
  );
  static const mlM6id2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6id.2xlarge'),
  );
  static const mlM6id4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6id.4xlarge'),
  );
  static const mlM6id8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6id.8xlarge'),
  );
  static const mlM6id12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6id.12xlarge'),
  );
  static const mlM6id16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6id.16xlarge'),
  );
  static const mlM6id24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6id.24xlarge'),
  );
  static const mlM6id32xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.m6id.32xlarge'),
  );
  static const mlC6idLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6id.large'),
  );
  static const mlC6idXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6id.xlarge'),
  );
  static const mlC6id2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6id.2xlarge'),
  );
  static const mlC6id4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6id.4xlarge'),
  );
  static const mlC6id8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6id.8xlarge'),
  );
  static const mlC6id12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6id.12xlarge'),
  );
  static const mlC6id16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6id.16xlarge'),
  );
  static const mlC6id24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6id.24xlarge'),
  );
  static const mlC6id32xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.c6id.32xlarge'),
  );
  static const mlR6idLarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6id.large'),
  );
  static const mlR6idXlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6id.xlarge'),
  );
  static const mlR6id2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6id.2xlarge'),
  );
  static const mlR6id4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6id.4xlarge'),
  );
  static const mlR6id8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6id.8xlarge'),
  );
  static const mlR6id12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6id.12xlarge'),
  );
  static const mlR6id16xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6id.16xlarge'),
  );
  static const mlR6id24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6id.24xlarge'),
  );
  static const mlR6id32xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.r6id.32xlarge'),
  );
  static const mlP5p4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlG7p2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );
  static const mlG7e2xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerUserProfileInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );

  static const List<SagemakerUserProfileInstanceType> values = [
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

/// Typed helper for the `user_settings.custom_file_system_config` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileCustomFileSystemConfig {
  const SagemakerUserProfileCustomFileSystemConfig({this.efsFileSystemConfig});

  final List<SagemakerUserProfileEfsFileSystemConfig>? efsFileSystemConfig;

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
final class SagemakerUserProfileEfsFileSystemConfig {
  const SagemakerUserProfileEfsFileSystemConfig({
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
final class SagemakerUserProfileCustomPosixUserConfig {
  const SagemakerUserProfileCustomPosixUserConfig({
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
final class SagemakerUserProfileJupyterLabAppSettings {
  const SagemakerUserProfileJupyterLabAppSettings({
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

  final SagemakerUserProfileAppLifecycleManagement? appLifecycleManagement;

  final List<SagemakerUserProfileCodeRepository>? codeRepository;

  final List<SagemakerUserProfileCustomImage>? customImage;

  final SagemakerUserProfileDefaultResourceSpec? defaultResourceSpec;

  final SagemakerUserProfileEmrSettings? emrSettings;

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

/// Typed helper for the `user_settings.jupyter_lab_app_settings.code_repository` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerUserProfileCodeRepository {
  const SagemakerUserProfileCodeRepository({required this.repositoryUrl});

  final TfArg<String> repositoryUrl;

  Map<String, Object?> encode() => {'repository_url': repositoryUrl.toTfJson()};
}

/// Typed helper for the `user_settings.jupyter_lab_app_settings.emr_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileEmrSettings {
  const SagemakerUserProfileEmrSettings({
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
final class SagemakerUserProfileJupyterServerAppSettings {
  const SagemakerUserProfileJupyterServerAppSettings({
    this.lifecycleConfigArns,
    this.codeRepository,
    this.defaultResourceSpec,
  });

  final TfArg<List<String>>? lifecycleConfigArns;

  final List<SagemakerUserProfileCodeRepository>? codeRepository;

  final SagemakerUserProfileDefaultResourceSpec? defaultResourceSpec;

  Map<String, Object?> encode() => {
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    if (codeRepository != null)
      'code_repository': [for (final e in codeRepository!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Typed helper for the `user_settings.kernel_gateway_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileKernelGatewayAppSettings {
  const SagemakerUserProfileKernelGatewayAppSettings({
    this.lifecycleConfigArns,
    this.customImage,
    this.defaultResourceSpec,
  });

  final TfArg<List<String>>? lifecycleConfigArns;

  final List<SagemakerUserProfileCustomImage>? customImage;

  final SagemakerUserProfileDefaultResourceSpec? defaultResourceSpec;

  Map<String, Object?> encode() => {
    'lifecycle_config_arns': ?lifecycleConfigArns?.toTfJson(),
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Typed helper for the `user_settings.r_session_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileRSessionAppSettings {
  const SagemakerUserProfileRSessionAppSettings({
    this.customImage,
    this.defaultResourceSpec,
  });

  final List<SagemakerUserProfileCustomImage>? customImage;

  final SagemakerUserProfileDefaultResourceSpec? defaultResourceSpec;

  Map<String, Object?> encode() => {
    if (customImage != null)
      'custom_image': [for (final e in customImage!) e.encode()],
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Typed helper for the `user_settings.r_studio_server_pro_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileRStudioServerProAppSettings {
  const SagemakerUserProfileRStudioServerProAppSettings({
    this.accessStatus,
    this.userGroup,
  });

  final SagemakerUserProfileAccessStatus? accessStatus;

  final SagemakerUserProfileUserGroup? userGroup;

  Map<String, Object?> encode() => {
    'access_status': ?accessStatus?.toTfJson(),
    'user_group': ?userGroup?.toTfJson(),
  };
}

/// `access_status` — derived from the provider schema description.
extension type const SagemakerUserProfileAccessStatus._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileAccessStatus.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileAccessStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileAccessStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SagemakerUserProfileAccessStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SagemakerUserProfileAccessStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerUserProfileAccessStatus> values = [
    enabled,
    disabled,
  ];
}

/// `user_group` — derived from the provider schema description.
extension type const SagemakerUserProfileUserGroup._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileUserGroup.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileUserGroup.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileUserGroup.arg(TfArg<String> arg) : this._(arg);

  static const rStudioAdmin = SagemakerUserProfileUserGroup._(
    TfArgLiteral('R_STUDIO_ADMIN'),
  );
  static const rStudioUser = SagemakerUserProfileUserGroup._(
    TfArgLiteral('R_STUDIO_USER'),
  );

  static const List<SagemakerUserProfileUserGroup> values = [
    rStudioAdmin,
    rStudioUser,
  ];
}

/// Typed helper for the `user_settings.sharing_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileSharingSettings {
  const SagemakerUserProfileSharingSettings({
    this.notebookOutputOption,
    this.s3KmsKeyId,
    this.s3OutputPath,
  });

  final SagemakerUserProfileNotebookOutputOption? notebookOutputOption;

  final TfArg<String>? s3KmsKeyId;

  final TfArg<String>? s3OutputPath;

  Map<String, Object?> encode() => {
    'notebook_output_option': ?notebookOutputOption?.toTfJson(),
    's3_kms_key_id': ?s3KmsKeyId?.toTfJson(),
    's3_output_path': ?s3OutputPath?.toTfJson(),
  };
}

/// `notebook_output_option` — derived from the provider schema description.
extension type const SagemakerUserProfileNotebookOutputOption._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileNotebookOutputOption.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileNotebookOutputOption.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileNotebookOutputOption.arg(TfArg<String> arg)
    : this._(arg);

  static const allowed = SagemakerUserProfileNotebookOutputOption._(
    TfArgLiteral('Allowed'),
  );
  static const disabled = SagemakerUserProfileNotebookOutputOption._(
    TfArgLiteral('Disabled'),
  );

  static const List<SagemakerUserProfileNotebookOutputOption> values = [
    allowed,
    disabled,
  ];
}

/// Typed helper for the `user_settings.space_storage_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileSpaceStorageSettings {
  const SagemakerUserProfileSpaceStorageSettings({
    this.defaultEbsStorageSettings,
  });

  final SagemakerUserProfileDefaultEbsStorageSettings?
  defaultEbsStorageSettings;

  Map<String, Object?> encode() => {
    'default_ebs_storage_settings': ?defaultEbsStorageSettings?.encode(),
  };
}

/// Typed helper for the `user_settings.space_storage_settings.default_ebs_storage_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileDefaultEbsStorageSettings {
  const SagemakerUserProfileDefaultEbsStorageSettings({
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
final class SagemakerUserProfileStudioWebPortalSettings {
  const SagemakerUserProfileStudioWebPortalSettings({
    this.hiddenAppTypes,
    this.hiddenInstanceTypes,
    this.hiddenMlTools,
  });

  final List<SagemakerUserProfileHiddenAppTypes>? hiddenAppTypes;

  final List<SagemakerUserProfileHiddenInstanceTypes>? hiddenInstanceTypes;

  final List<SagemakerUserProfileHiddenMlTools>? hiddenMlTools;

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
extension type const SagemakerUserProfileHiddenAppTypes._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileHiddenAppTypes.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileHiddenAppTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileHiddenAppTypes.arg(TfArg<String> arg) : this._(arg);

  static const jupyterserver = SagemakerUserProfileHiddenAppTypes._(
    TfArgLiteral('JupyterServer'),
  );
  static const kernelgateway = SagemakerUserProfileHiddenAppTypes._(
    TfArgLiteral('KernelGateway'),
  );
  static const detailedprofiler = SagemakerUserProfileHiddenAppTypes._(
    TfArgLiteral('DetailedProfiler'),
  );
  static const tensorboard = SagemakerUserProfileHiddenAppTypes._(
    TfArgLiteral('TensorBoard'),
  );
  static const codeeditor = SagemakerUserProfileHiddenAppTypes._(
    TfArgLiteral('CodeEditor'),
  );
  static const jupyterlab = SagemakerUserProfileHiddenAppTypes._(
    TfArgLiteral('JupyterLab'),
  );
  static const rstudioserverpro = SagemakerUserProfileHiddenAppTypes._(
    TfArgLiteral('RStudioServerPro'),
  );
  static const rsessiongateway = SagemakerUserProfileHiddenAppTypes._(
    TfArgLiteral('RSessionGateway'),
  );
  static const canvas = SagemakerUserProfileHiddenAppTypes._(
    TfArgLiteral('Canvas'),
  );

  static const List<SagemakerUserProfileHiddenAppTypes> values = [
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
extension type const SagemakerUserProfileHiddenInstanceTypes._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileHiddenInstanceTypes.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileHiddenInstanceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileHiddenInstanceTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const system = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('system'),
  );
  static const mlT3Micro = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.micro'),
  );
  static const mlT3Small = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.small'),
  );
  static const mlT3Medium = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlM5Large = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.8xlarge'),
  );
  static const mlM5p12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.16xlarge'),
  );
  static const mlM5p24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlM5dLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.large'),
  );
  static const mlM5dXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.xlarge'),
  );
  static const mlM5d2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.2xlarge'),
  );
  static const mlM5d4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.4xlarge'),
  );
  static const mlM5d8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.8xlarge'),
  );
  static const mlM5d12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.12xlarge'),
  );
  static const mlM5d16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.16xlarge'),
  );
  static const mlM5d24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m5d.24xlarge'),
  );
  static const mlC5Large = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.large'),
  );
  static const mlC5Xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.12xlarge'),
  );
  static const mlC5p18xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5p24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c5.24xlarge'),
  );
  static const mlP3p2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p3dn.24xlarge'),
  );
  static const mlG4dnXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlR5Large = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlG5Xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlGeospatialInteractive =
      SagemakerUserProfileHiddenInstanceTypes._(
        TfArgLiteral('ml.geospatial.interactive'),
      );
  static const mlP4d24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlP5p48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlP6B200p48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p6-b200.48xlarge'),
  );
  static const mlM6iLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlM7iLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC6iLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlC7iLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR6iLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.2xlarge'),
  );
  static const mlR6i4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.4xlarge'),
  );
  static const mlR6i8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.8xlarge'),
  );
  static const mlR6i12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.12xlarge'),
  );
  static const mlR6i16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.16xlarge'),
  );
  static const mlR6i24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.24xlarge'),
  );
  static const mlR6i32xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6i.32xlarge'),
  );
  static const mlR7iLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlM6idLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.large'),
  );
  static const mlM6idXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.xlarge'),
  );
  static const mlM6id2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.2xlarge'),
  );
  static const mlM6id4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.4xlarge'),
  );
  static const mlM6id8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.8xlarge'),
  );
  static const mlM6id12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.12xlarge'),
  );
  static const mlM6id16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.16xlarge'),
  );
  static const mlM6id24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.24xlarge'),
  );
  static const mlM6id32xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.m6id.32xlarge'),
  );
  static const mlC6idLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.large'),
  );
  static const mlC6idXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.xlarge'),
  );
  static const mlC6id2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.2xlarge'),
  );
  static const mlC6id4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.4xlarge'),
  );
  static const mlC6id8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.8xlarge'),
  );
  static const mlC6id12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.12xlarge'),
  );
  static const mlC6id16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.16xlarge'),
  );
  static const mlC6id24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.24xlarge'),
  );
  static const mlC6id32xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.c6id.32xlarge'),
  );
  static const mlR6idLarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.large'),
  );
  static const mlR6idXlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.xlarge'),
  );
  static const mlR6id2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.2xlarge'),
  );
  static const mlR6id4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.4xlarge'),
  );
  static const mlR6id8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.8xlarge'),
  );
  static const mlR6id12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.12xlarge'),
  );
  static const mlR6id16xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.16xlarge'),
  );
  static const mlR6id24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.24xlarge'),
  );
  static const mlR6id32xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.r6id.32xlarge'),
  );
  static const mlP5p4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlG7p2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7.48xlarge'),
  );
  static const mlG7e2xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerUserProfileHiddenInstanceTypes._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );

  static const List<SagemakerUserProfileHiddenInstanceTypes> values = [
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
extension type const SagemakerUserProfileHiddenMlTools._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerUserProfileHiddenMlTools.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerUserProfileHiddenMlTools.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerUserProfileHiddenMlTools.arg(TfArg<String> arg) : this._(arg);

  static const datawrangler = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('DataWrangler'),
  );
  static const featurestore = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('FeatureStore'),
  );
  static const emrclusters = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('EmrClusters'),
  );
  static const automl = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('AutoMl'),
  );
  static const experiments = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Experiments'),
  );
  static const training = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Training'),
  );
  static const modelevaluation = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('ModelEvaluation'),
  );
  static const pipelines = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Pipelines'),
  );
  static const models = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Models'),
  );
  static const jumpstart = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('JumpStart'),
  );
  static const inferencerecommender = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('InferenceRecommender'),
  );
  static const endpoints = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Endpoints'),
  );
  static const projects = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Projects'),
  );
  static const inferenceoptimization = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('InferenceOptimization'),
  );
  static const performanceevaluation = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('PerformanceEvaluation'),
  );
  static const lakeraguard = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('LakeraGuard'),
  );
  static const comet = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Comet'),
  );
  static const deepchecksllmevaluation = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('DeepchecksLLMEvaluation'),
  );
  static const fiddler = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Fiddler'),
  );
  static const hyperpodclusters = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('HyperPodClusters'),
  );
  static const runninginstances = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('RunningInstances'),
  );
  static const datasets = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Datasets'),
  );
  static const evaluators = SagemakerUserProfileHiddenMlTools._(
    TfArgLiteral('Evaluators'),
  );

  static const List<SagemakerUserProfileHiddenMlTools> values = [
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

/// Typed helper for the `user_settings.tensor_board_app_settings` block of
/// `aws_sagemaker_user_profile` (derived from provider schema).
@immutable
final class SagemakerUserProfileTensorBoardAppSettings {
  const SagemakerUserProfileTensorBoardAppSettings({this.defaultResourceSpec});

  final SagemakerUserProfileDefaultResourceSpec? defaultResourceSpec;

  Map<String, Object?> encode() => {
    'default_resource_spec': ?defaultResourceSpec?.encode(),
  };
}

/// Factory wrapper for `aws_sagemaker_user_profile`.
final class AwsSagemakerUserProfile extends Resource {
  static const String tfType = 'aws_sagemaker_user_profile';

  AwsSagemakerUserProfile(
    super.localName, {
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
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `single_sign_on_user_identifier` attribute.
  TfRef<String> get singleSignOnUserIdentifier =>
      TfRef.attribute<String>(this, 'single_sign_on_user_identifier');

  /// Reference to `single_sign_on_user_value` attribute.
  TfRef<String> get singleSignOnUserValue =>
      TfRef.attribute<String>(this, 'single_sign_on_user_value');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_profile_name` attribute.
  TfRef<String> get userProfileName =>
      TfRef.attribute<String>(this, 'user_profile_name');
}
