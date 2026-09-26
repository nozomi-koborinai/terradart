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

  final SagemakerAppImageConfigCodeEditorAppImageConfigContainerConfig?
  containerConfig;

  final SagemakerAppImageConfigCodeEditorAppImageConfigFileSystemConfig?
  fileSystemConfig;

  Map<String, Object?> encode() => {
    if (containerConfig != null) 'container_config': containerConfig!.encode(),
    if (fileSystemConfig != null)
      'file_system_config': fileSystemConfig!.encode(),
  };
}

/// Typed helper for the `code_editor_app_image_config.container_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigCodeEditorAppImageConfigContainerConfig {
  const SagemakerAppImageConfigCodeEditorAppImageConfigContainerConfig({
    this.containerArguments,
    this.containerEntrypoint,
    this.containerEnvironmentVariables,
  });

  final TfArg<List<Object?>>? containerArguments;

  final TfArg<List<Object?>>? containerEntrypoint;

  final TfArg<Map<String, String>>? containerEnvironmentVariables;

  Map<String, Object?> encode() => {
    if (containerArguments != null)
      'container_arguments': containerArguments!.toTfJson(),
    if (containerEntrypoint != null)
      'container_entrypoint': containerEntrypoint!.toTfJson(),
    if (containerEnvironmentVariables != null)
      'container_environment_variables': containerEnvironmentVariables!
          .toTfJson(),
  };
}

/// Typed helper for the `code_editor_app_image_config.file_system_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigCodeEditorAppImageConfigFileSystemConfig {
  const SagemakerAppImageConfigCodeEditorAppImageConfigFileSystemConfig({
    this.defaultGid,
    this.defaultUid,
    this.mountPath,
  });

  final TfArg<num>? defaultGid;

  final TfArg<num>? defaultUid;

  final TfArg<String>? mountPath;

  Map<String, Object?> encode() => {
    if (defaultGid != null) 'default_gid': defaultGid!.toTfJson(),
    if (defaultUid != null) 'default_uid': defaultUid!.toTfJson(),
    if (mountPath != null) 'mount_path': mountPath!.toTfJson(),
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

  final SagemakerAppImageConfigJupyterLabImageConfigContainerConfig?
  containerConfig;

  final SagemakerAppImageConfigJupyterLabImageConfigFileSystemConfig?
  fileSystemConfig;

  Map<String, Object?> encode() => {
    if (containerConfig != null) 'container_config': containerConfig!.encode(),
    if (fileSystemConfig != null)
      'file_system_config': fileSystemConfig!.encode(),
  };
}

/// Typed helper for the `jupyter_lab_image_config.container_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigJupyterLabImageConfigContainerConfig {
  const SagemakerAppImageConfigJupyterLabImageConfigContainerConfig({
    this.containerArguments,
    this.containerEntrypoint,
    this.containerEnvironmentVariables,
  });

  final TfArg<List<Object?>>? containerArguments;

  final TfArg<List<Object?>>? containerEntrypoint;

  final TfArg<Map<String, String>>? containerEnvironmentVariables;

  Map<String, Object?> encode() => {
    if (containerArguments != null)
      'container_arguments': containerArguments!.toTfJson(),
    if (containerEntrypoint != null)
      'container_entrypoint': containerEntrypoint!.toTfJson(),
    if (containerEnvironmentVariables != null)
      'container_environment_variables': containerEnvironmentVariables!
          .toTfJson(),
  };
}

/// Typed helper for the `jupyter_lab_image_config.file_system_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigJupyterLabImageConfigFileSystemConfig {
  const SagemakerAppImageConfigJupyterLabImageConfigFileSystemConfig({
    this.defaultGid,
    this.defaultUid,
    this.mountPath,
  });

  final TfArg<num>? defaultGid;

  final TfArg<num>? defaultUid;

  final TfArg<String>? mountPath;

  Map<String, Object?> encode() => {
    if (defaultGid != null) 'default_gid': defaultGid!.toTfJson(),
    if (defaultUid != null) 'default_uid': defaultUid!.toTfJson(),
    if (mountPath != null) 'mount_path': mountPath!.toTfJson(),
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

  final SagemakerAppImageConfigKernelGatewayImageConfigFileSystemConfig?
  fileSystemConfig;

  final List<SagemakerAppImageConfigKernelGatewayImageConfigKernelSpec>
  kernelSpec;

  Map<String, Object?> encode() => {
    if (fileSystemConfig != null)
      'file_system_config': fileSystemConfig!.encode(),
    'kernel_spec': [for (final e in kernelSpec) e.encode()],
  };
}

/// Typed helper for the `kernel_gateway_image_config.file_system_config` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigKernelGatewayImageConfigFileSystemConfig {
  const SagemakerAppImageConfigKernelGatewayImageConfigFileSystemConfig({
    this.defaultGid,
    this.defaultUid,
    this.mountPath,
  });

  final TfArg<num>? defaultGid;

  final TfArg<num>? defaultUid;

  final TfArg<String>? mountPath;

  Map<String, Object?> encode() => {
    if (defaultGid != null) 'default_gid': defaultGid!.toTfJson(),
    if (defaultUid != null) 'default_uid': defaultUid!.toTfJson(),
    if (mountPath != null) 'mount_path': mountPath!.toTfJson(),
  };
}

/// Typed helper for the `kernel_gateway_image_config.kernel_spec` block of
/// `aws_sagemaker_app_image_config` (derived from provider schema).
@immutable
final class SagemakerAppImageConfigKernelGatewayImageConfigKernelSpec {
  const SagemakerAppImageConfigKernelGatewayImageConfigKernelSpec({
    this.displayName,
    required this.name,
  });

  final TfArg<String>? displayName;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_app_image_config`.
final class AwsSagemakerAppImageConfig extends Resource {
  static const String tfType = 'aws_sagemaker_app_image_config';

  AwsSagemakerAppImageConfig({
    required super.localName,
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
