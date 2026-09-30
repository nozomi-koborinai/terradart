// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_site`.
const Set<String> _appwriteSiteSensitive = <String>{};

/// Factory wrapper for `appwrite_site`.
///
/// Manages an Appwrite site.
final class AppwriteSite extends Resource {
  static const String tfType = 'appwrite_site';

  AppwriteSite({
    required super.localName,
    TfArg<String>? adapter,
    TfArg<String>? buildCommand,
    required TfArg<String> buildRuntime,
    TfArg<String>? buildSpecification,
    TfArg<num>? deploymentRetention,
    TfArg<bool>? enabled,
    TfArg<String>? fallbackFile,
    required TfArg<String> framework,
    TfArg<String>? installCommand,
    TfArg<String>? installationId,
    TfArg<bool>? logging,
    required TfArg<String> name,
    TfArg<String>? outputDirectory,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? providerBranch,
    TfArg<String>? providerRepositoryId,
    TfArg<String>? providerRootDirectory,
    TfArg<bool>? providerSilentMode,
    TfArg<String>? runtimeSpecification,
    TfArg<String>? startCommand,
    TfArg<num>? timeout,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'adapter': ?adapter,
           'build_command': ?buildCommand,
           'build_runtime': buildRuntime,
           'build_specification': ?buildSpecification,
           'deployment_retention': ?deploymentRetention,
           'enabled': ?enabled,
           'fallback_file': ?fallbackFile,
           'framework': framework,
           'install_command': ?installCommand,
           'installation_id': ?installationId,
           'logging': ?logging,
           'name': name,
           'output_directory': ?outputDirectory,
           'project_id': ?projectId?.encodeAs('id'),
           'provider_branch': ?providerBranch,
           'provider_repository_id': ?providerRepositoryId,
           'provider_root_directory': ?providerRootDirectory,
           'provider_silent_mode': ?providerSilentMode,
           'runtime_specification': ?runtimeSpecification,
           'start_command': ?startCommand,
           'timeout': ?timeout,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteSiteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteSite>`.
  RefTo<AppwriteSite> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `adapter` attribute.
  TfRef<String> get adapterRef => TfRef.attribute<String>(this, 'adapter');

  /// Reference to `build_command` attribute.
  TfRef<String> get buildCommandRef =>
      TfRef.attribute<String>(this, 'build_command');

  /// Reference to `build_runtime` attribute.
  TfRef<String> get buildRuntimeRef =>
      TfRef.attribute<String>(this, 'build_runtime');

  /// Reference to `build_specification` attribute.
  TfRef<String> get buildSpecificationRef =>
      TfRef.attribute<String>(this, 'build_specification');

  /// Reference to `deployment_retention` attribute.
  TfRef<num> get deploymentRetentionRef =>
      TfRef.attribute<num>(this, 'deployment_retention');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `fallback_file` attribute.
  TfRef<String> get fallbackFileRef =>
      TfRef.attribute<String>(this, 'fallback_file');

  /// Reference to `framework` attribute.
  TfRef<String> get frameworkRef => TfRef.attribute<String>(this, 'framework');

  /// Reference to `install_command` attribute.
  TfRef<String> get installCommandRef =>
      TfRef.attribute<String>(this, 'install_command');

  /// Reference to `installation_id` attribute.
  TfRef<String> get installationIdRef =>
      TfRef.attribute<String>(this, 'installation_id');

  /// Reference to `logging` attribute.
  TfRef<bool> get loggingRef => TfRef.attribute<bool>(this, 'logging');

  /// Reference to `output_directory` attribute.
  TfRef<String> get outputDirectoryRef =>
      TfRef.attribute<String>(this, 'output_directory');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectIdRef => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `provider_branch` attribute.
  TfRef<String> get providerBranchRef =>
      TfRef.attribute<String>(this, 'provider_branch');

  /// Reference to `provider_repository_id` attribute.
  TfRef<String> get providerRepositoryIdRef =>
      TfRef.attribute<String>(this, 'provider_repository_id');

  /// Reference to `provider_root_directory` attribute.
  TfRef<String> get providerRootDirectoryRef =>
      TfRef.attribute<String>(this, 'provider_root_directory');

  /// Reference to `provider_silent_mode` attribute.
  TfRef<bool> get providerSilentModeRef =>
      TfRef.attribute<bool>(this, 'provider_silent_mode');

  /// Reference to `runtime_specification` attribute.
  TfRef<String> get runtimeSpecificationRef =>
      TfRef.attribute<String>(this, 'runtime_specification');

  /// Reference to `start_command` attribute.
  TfRef<String> get startCommandRef =>
      TfRef.attribute<String>(this, 'start_command');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeoutRef => TfRef.attribute<num>(this, 'timeout');
}
