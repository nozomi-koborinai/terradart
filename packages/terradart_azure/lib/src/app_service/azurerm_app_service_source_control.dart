// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_app_service_source_control`.
const Set<String> _azurermAppServiceSourceControlSensitive = <String>{
  'github_action_configuration.container_configuration.registry_password',
};

/// Typed helper for the `github_action_configuration` block of
/// `azurerm_app_service_source_control` (derived from provider schema).
@immutable
final class AppServiceSourceControlGithubActionConfiguration {
  const AppServiceSourceControlGithubActionConfiguration({
    this.generateWorkflowFile,
    this.codeConfiguration,
    this.containerConfiguration,
  });

  final TfArg<bool>? generateWorkflowFile;

  final AppServiceSourceControlCodeConfiguration? codeConfiguration;

  final AppServiceSourceControlContainerConfiguration? containerConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'generate_workflow_file': ?generateWorkflowFile?.toTfJson(),
    'code_configuration': ?codeConfiguration?.encode(),
    'container_configuration': ?containerConfiguration?.encode(),
  };
}

/// Typed helper for the `github_action_configuration.code_configuration` block of
/// `azurerm_app_service_source_control` (derived from provider schema).
@immutable
final class AppServiceSourceControlCodeConfiguration {
  const AppServiceSourceControlCodeConfiguration({
    required this.runtimeStack,
    required this.runtimeVersion,
  });

  final TfArg<String> runtimeStack;

  final TfArg<String> runtimeVersion;

  @internal
  Map<String, Object?> encode() => {
    'runtime_stack': runtimeStack.toTfJson(),
    'runtime_version': runtimeVersion.toTfJson(),
  };
}

/// Typed helper for the `github_action_configuration.container_configuration` block of
/// `azurerm_app_service_source_control` (derived from provider schema).
@immutable
final class AppServiceSourceControlContainerConfiguration {
  const AppServiceSourceControlContainerConfiguration({
    required this.imageName,
    this.registryPassword,
    required this.registryUrl,
    this.registryUsername,
  });

  final TfArg<String> imageName;

  final Sensitive<String>? registryPassword;

  final TfArg<String> registryUrl;

  final TfArg<String>? registryUsername;

  @internal
  Map<String, Object?> encode() => {
    'image_name': imageName.toTfJson(),
    'registry_password': ?registryPassword?.toTfJson(),
    'registry_url': registryUrl.toTfJson(),
    'registry_username': ?registryUsername?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_app_service_source_control`.
final class AzurermAppServiceSourceControl extends Resource {
  static const String tfType = 'azurerm_app_service_source_control';

  AzurermAppServiceSourceControl(
    super.localName, {
    required TfArg<String> appId,
    TfArg<String>? branch,
    TfArg<String>? repoUrl,
    TfArg<bool>? rollbackEnabled,
    TfArg<bool>? useLocalGit,
    TfArg<bool>? useManualIntegration,
    TfArg<bool>? useMercurial,
    AppServiceSourceControlGithubActionConfiguration? githubActionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'branch': ?branch,
           'repo_url': ?repoUrl,
           'rollback_enabled': ?rollbackEnabled,
           'use_local_git': ?useLocalGit,
           'use_manual_integration': ?useManualIntegration,
           'use_mercurial': ?useMercurial,
           if (githubActionConfiguration != null)
             'github_action_configuration': TfArg.literal(
               githubActionConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppServiceSourceControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceSourceControl>`.
  RefTo<AzurermAppServiceSourceControl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `scm_type` attribute.
  TfRef<String> get scmType => TfRef.attribute<String>(this, 'scm_type');

  /// Reference to `uses_github_action` attribute.
  TfRef<bool> get usesGithubAction =>
      TfRef.attribute<bool>(this, 'uses_github_action');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `branch` attribute.
  TfRef<String> get branch => TfRef.attribute<String>(this, 'branch');

  /// Reference to `repo_url` attribute.
  TfRef<String> get repoUrl => TfRef.attribute<String>(this, 'repo_url');

  /// Reference to `rollback_enabled` attribute.
  TfRef<bool> get rollbackEnabled =>
      TfRef.attribute<bool>(this, 'rollback_enabled');

  /// Reference to `use_local_git` attribute.
  TfRef<bool> get useLocalGit => TfRef.attribute<bool>(this, 'use_local_git');

  /// Reference to `use_manual_integration` attribute.
  TfRef<bool> get useManualIntegration =>
      TfRef.attribute<bool>(this, 'use_manual_integration');

  /// Reference to `use_mercurial` attribute.
  TfRef<bool> get useMercurial => TfRef.attribute<bool>(this, 'use_mercurial');
}
