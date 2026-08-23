// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? projectId,
    TfArg<String>? providerBranch,
    TfArg<String>? providerRepositoryId,
    TfArg<String>? providerRootDirectory,
    TfArg<bool>? providerSilentMode,
    TfArg<String>? runtimeSpecification,
    TfArg<String>? startCommand,
    TfArg<num>? timeout,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (adapter != null) 'adapter': adapter,
           if (buildCommand != null) 'build_command': buildCommand,
           'build_runtime': buildRuntime,
           if (buildSpecification != null)
             'build_specification': buildSpecification,
           if (deploymentRetention != null)
             'deployment_retention': deploymentRetention,
           if (enabled != null) 'enabled': enabled,
           if (fallbackFile != null) 'fallback_file': fallbackFile,
           'framework': framework,
           if (installCommand != null) 'install_command': installCommand,
           if (installationId != null) 'installation_id': installationId,
           if (logging != null) 'logging': logging,
           'name': name,
           if (outputDirectory != null) 'output_directory': outputDirectory,
           if (projectId != null) 'project_id': projectId,
           if (providerBranch != null) 'provider_branch': providerBranch,
           if (providerRepositoryId != null)
             'provider_repository_id': providerRepositoryId,
           if (providerRootDirectory != null)
             'provider_root_directory': providerRootDirectory,
           if (providerSilentMode != null)
             'provider_silent_mode': providerSilentMode,
           if (runtimeSpecification != null)
             'runtime_specification': runtimeSpecification,
           if (startCommand != null) 'start_command': startCommand,
           if (timeout != null) 'timeout': timeout,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteSiteSensitive;

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
}
