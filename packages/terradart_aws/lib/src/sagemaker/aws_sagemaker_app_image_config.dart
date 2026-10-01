// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_app_image_config`.
const Set<String> _awsSagemakerAppImageConfigSensitive = <String>{};

/// Typed helper for the `code_editor_app_image_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigCodeEditorAppImageConfig {
  const SagemakerAppImageConfigCodeEditorAppImageConfig({
    this.containerConfig,
    this.fileSystemConfig,
  });

  final SagemakerAppImageConfigContainerConfig? containerConfig;

  final SagemakerAppImageConfigFileSystemConfig? fileSystemConfig;

  @internal
  Map<String, Object?> encode() => {
    'container_config': ?containerConfig?.encode(),
    'file_system_config': ?fileSystemConfig?.encode(),
  };
}

/// Typed helper for the `code_editor_app_image_config.container_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerAppImageConfigContainerConfig {
  const SagemakerAppImageConfigContainerConfig({
    this.containerArguments,
    this.containerEntrypoint,
    this.containerEnvironmentVariables,
  });

  final TfArg<List<String>>? containerArguments;

  final TfArg<List<String>>? containerEntrypoint;

  final TfArg<Map<String, String>>? containerEnvironmentVariables;

  @internal
  Map<String, Object?> encode() => {
    'container_arguments': ?containerArguments?.toTfJson(),
    'container_entrypoint': ?containerEntrypoint?.toTfJson(),
    'container_environment_variables': ?containerEnvironmentVariables
        ?.toTfJson(),
  };
}

/// Typed helper for the `code_editor_app_image_config.file_system_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerAppImageConfigFileSystemConfig {
  const SagemakerAppImageConfigFileSystemConfig({
    this.defaultGid,
    this.defaultUid,
    this.mountPath,
  });

  final TfArg<num>? defaultGid;

  final TfArg<num>? defaultUid;

  final TfArg<String>? mountPath;

  @internal
  Map<String, Object?> encode() => {
    'default_gid': ?defaultGid?.toTfJson(),
    'default_uid': ?defaultUid?.toTfJson(),
    'mount_path': ?mountPath?.toTfJson(),
  };
}

/// Typed helper for the `jupyter_lab_image_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigJupyterLabImageConfig {
  const SagemakerAppImageConfigJupyterLabImageConfig({
    this.containerConfig,
    this.fileSystemConfig,
  });

  final SagemakerAppImageConfigContainerConfig? containerConfig;

  final SagemakerAppImageConfigFileSystemConfig? fileSystemConfig;

  @internal
  Map<String, Object?> encode() => {
    'container_config': ?containerConfig?.encode(),
    'file_system_config': ?fileSystemConfig?.encode(),
  };
}

/// Typed helper for the `kernel_gateway_image_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigKernelGatewayImageConfig {
  const SagemakerAppImageConfigKernelGatewayImageConfig({
    this.fileSystemConfig,
    required this.kernelSpec,
  });

  final SagemakerAppImageConfigFileSystemConfig? fileSystemConfig;

  final List<SagemakerAppImageConfigKernelSpec> kernelSpec;

  @internal
  Map<String, Object?> encode() => {
    'file_system_config': ?fileSystemConfig?.encode(),
    'kernel_spec': [for (final e in kernelSpec) e.encode()],
  };
}

/// Typed helper for the `kernel_gateway_image_config.kernel_spec` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigKernelSpec {
  const SagemakerAppImageConfigKernelSpec({
    this.displayName,
    required this.name,
  });

  final TfArg<String>? displayName;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_app_image_config`.
final class AwsSagemakerAppImageConfig extends Resource {
  static const String tfType = 'aws_sagemaker_app_image_config';

  AwsSagemakerAppImageConfig(
    super.localName, {
    required TfArg<String> appImageConfigName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    SagemakerAppImageConfigCodeEditorAppImageConfig? codeEditorAppImageConfig,
    SagemakerAppImageConfigJupyterLabImageConfig? jupyterLabImageConfig,
    SagemakerAppImageConfigKernelGatewayImageConfig? kernelGatewayImageConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_image_config_name': appImageConfigName,
           'region': ?region,
           'tags': ?tags,
           if (codeEditorAppImageConfig != null)
             'code_editor_app_image_config': TfArg.literal(
               codeEditorAppImageConfig.encode(),
             ),
           if (jupyterLabImageConfig != null)
             'jupyter_lab_image_config': TfArg.literal(
               jupyterLabImageConfig.encode(),
             ),
           if (kernelGatewayImageConfig != null)
             'kernel_gateway_image_config': TfArg.literal(
               kernelGatewayImageConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerAppImageConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerAppImageConfig>`.
  RefTo<AwsSagemakerAppImageConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `app_image_config_name` attribute.
  TfRef<String> get appImageConfigName =>
      TfRef.attribute<String>(this, 'app_image_config_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
