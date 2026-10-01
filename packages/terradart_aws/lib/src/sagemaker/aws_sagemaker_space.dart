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

  @internal
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

  final SagemakerSpaceAppType? appType;

  final SagemakerSpaceCodeEditorAppSettings? codeEditorAppSettings;

  final List<SagemakerSpaceCustomFileSystem>? customFileSystem;

  final SagemakerSpaceJupyterLabAppSettings? jupyterLabAppSettings;

  final SagemakerSpaceJupyterServerAppSettings? jupyterServerAppSettings;

  final SagemakerSpaceKernelGatewayAppSettings? kernelGatewayAppSettings;

  final SagemakerSpaceStorageSettings? spaceStorageSettings;

  @internal
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
extension type const SagemakerSpaceAppType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerSpaceAppType.variable(String name) : this._(TfArg.variable(name));
  SagemakerSpaceAppType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerSpaceAppType.arg(TfArg<String> arg) : this._(arg);

  static const jupyterserver = SagemakerSpaceAppType._(
    TfArgLiteral('JupyterServer'),
  );
  static const kernelgateway = SagemakerSpaceAppType._(
    TfArgLiteral('KernelGateway'),
  );
  static const detailedprofiler = SagemakerSpaceAppType._(
    TfArgLiteral('DetailedProfiler'),
  );
  static const tensorboard = SagemakerSpaceAppType._(
    TfArgLiteral('TensorBoard'),
  );
  static const codeeditor = SagemakerSpaceAppType._(TfArgLiteral('CodeEditor'));
  static const jupyterlab = SagemakerSpaceAppType._(TfArgLiteral('JupyterLab'));
  static const rstudioserverpro = SagemakerSpaceAppType._(
    TfArgLiteral('RStudioServerPro'),
  );
  static const rsessiongateway = SagemakerSpaceAppType._(
    TfArgLiteral('RSessionGateway'),
  );
  static const canvas = SagemakerSpaceAppType._(TfArgLiteral('Canvas'));

  static const List<SagemakerSpaceAppType> values = [
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {'idle_settings': ?idleSettings?.encode()};
}

/// Typed helper for the `space_settings.code_editor_app_settings.app_lifecycle_management.idle_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerSpaceIdleSettings {
  const SagemakerSpaceIdleSettings({this.idleTimeoutInMinutes});

  final TfArg<num>? idleTimeoutInMinutes;

  @internal
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

  final SagemakerSpaceInstanceType? instanceType;

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
extension type const SagemakerSpaceInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerSpaceInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerSpaceInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerSpaceInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const system = SagemakerSpaceInstanceType._(TfArgLiteral('system'));
  static const mlT3Micro = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.t3.micro'),
  );
  static const mlT3Small = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.t3.small'),
  );
  static const mlT3Medium = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlM5Large = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5.8xlarge'),
  );
  static const mlM5p12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5.16xlarge'),
  );
  static const mlM5p24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlM5dLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5d.large'),
  );
  static const mlM5dXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5d.xlarge'),
  );
  static const mlM5d2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5d.2xlarge'),
  );
  static const mlM5d4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5d.4xlarge'),
  );
  static const mlM5d8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5d.8xlarge'),
  );
  static const mlM5d12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5d.12xlarge'),
  );
  static const mlM5d16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5d.16xlarge'),
  );
  static const mlM5d24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m5d.24xlarge'),
  );
  static const mlC5Large = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c5.large'),
  );
  static const mlC5Xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c5.12xlarge'),
  );
  static const mlC5p18xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5p24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c5.24xlarge'),
  );
  static const mlP3p2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p3dn.24xlarge'),
  );
  static const mlG4dnXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlR5Large = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlG5Xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlGeospatialInteractive = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.geospatial.interactive'),
  );
  static const mlP4d24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlP5p48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlP6B200p48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p6-b200.48xlarge'),
  );
  static const mlM6iLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlM7iLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC6iLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlC7iLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR6iLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6i.2xlarge'),
  );
  static const mlR6i4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6i.4xlarge'),
  );
  static const mlR6i8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6i.8xlarge'),
  );
  static const mlR6i12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6i.12xlarge'),
  );
  static const mlR6i16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6i.16xlarge'),
  );
  static const mlR6i24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6i.24xlarge'),
  );
  static const mlR6i32xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6i.32xlarge'),
  );
  static const mlR7iLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlM6idLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6id.large'),
  );
  static const mlM6idXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6id.xlarge'),
  );
  static const mlM6id2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6id.2xlarge'),
  );
  static const mlM6id4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6id.4xlarge'),
  );
  static const mlM6id8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6id.8xlarge'),
  );
  static const mlM6id12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6id.12xlarge'),
  );
  static const mlM6id16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6id.16xlarge'),
  );
  static const mlM6id24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6id.24xlarge'),
  );
  static const mlM6id32xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.m6id.32xlarge'),
  );
  static const mlC6idLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6id.large'),
  );
  static const mlC6idXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6id.xlarge'),
  );
  static const mlC6id2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6id.2xlarge'),
  );
  static const mlC6id4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6id.4xlarge'),
  );
  static const mlC6id8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6id.8xlarge'),
  );
  static const mlC6id12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6id.12xlarge'),
  );
  static const mlC6id16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6id.16xlarge'),
  );
  static const mlC6id24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6id.24xlarge'),
  );
  static const mlC6id32xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.c6id.32xlarge'),
  );
  static const mlR6idLarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6id.large'),
  );
  static const mlR6idXlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6id.xlarge'),
  );
  static const mlR6id2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6id.2xlarge'),
  );
  static const mlR6id4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6id.4xlarge'),
  );
  static const mlR6id8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6id.8xlarge'),
  );
  static const mlR6id12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6id.12xlarge'),
  );
  static const mlR6id16xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6id.16xlarge'),
  );
  static const mlR6id24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6id.24xlarge'),
  );
  static const mlR6id32xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.r6id.32xlarge'),
  );
  static const mlP5p4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlG7p2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );
  static const mlG7e2xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerSpaceInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );

  static const List<SagemakerSpaceInstanceType> values = [
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

/// Typed helper for the `space_settings.custom_file_system` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceCustomFileSystem {
  const SagemakerSpaceCustomFileSystem({required this.efsFileSystem});

  final SagemakerSpaceEfsFileSystem efsFileSystem;

  @internal
  Map<String, Object?> encode() => {'efs_file_system': efsFileSystem.encode()};
}

/// Typed helper for the `space_settings.custom_file_system.efs_file_system` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceEfsFileSystem {
  const SagemakerSpaceEfsFileSystem({required this.fileSystemId});

  final TfArg<String> fileSystemId;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'ebs_volume_size_in_gb': ebsVolumeSizeInGb.toTfJson(),
  };
}

/// Typed helper for the `space_sharing_settings` block of
/// `aws_sagemaker_space` (derived from provider schema).
@immutable
final class SagemakerSpaceSharingSettings {
  const SagemakerSpaceSharingSettings({required this.sharingType});

  final SagemakerSpaceSharingType sharingType;

  @internal
  Map<String, Object?> encode() => {'sharing_type': sharingType.toTfJson()};
}

/// `sharing_type` — derived from the provider schema description.
extension type const SagemakerSpaceSharingType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerSpaceSharingType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerSpaceSharingType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerSpaceSharingType.arg(TfArg<String> arg) : this._(arg);

  static const private = SagemakerSpaceSharingType._(TfArgLiteral('Private'));
  static const shared = SagemakerSpaceSharingType._(TfArgLiteral('Shared'));

  static const List<SagemakerSpaceSharingType> values = [private, shared];
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
