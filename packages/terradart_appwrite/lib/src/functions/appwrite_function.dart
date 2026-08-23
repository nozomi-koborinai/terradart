// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_function`.
const Set<String> _appwriteFunctionSensitive = <String>{};

/// Factory wrapper for `appwrite_function`.
///
/// Manages an Appwrite function.
final class AppwriteFunction extends Resource {
  static const String tfType = 'appwrite_function';

  AppwriteFunction({
    required super.localName,
    TfArg<String>? buildSpecification,
    TfArg<String>? commands,
    TfArg<num>? deploymentRetention,
    TfArg<bool>? enabled,
    TfArg<String>? entrypoint,
    TfArg<List<String>>? events,
    TfArg<List<String>>? execute,
    TfArg<String>? installationId,
    TfArg<bool>? logging,
    required TfArg<String> name,
    TfArg<String>? projectId,
    TfArg<String>? providerBranch,
    TfArg<String>? providerRepositoryId,
    TfArg<String>? providerRootDirectory,
    TfArg<bool>? providerSilentMode,
    required TfArg<String> runtime,
    TfArg<String>? runtimeSpecification,
    TfArg<String>? schedule,
    TfArg<List<String>>? scopes,
    TfArg<num>? timeout,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (buildSpecification != null)
             'build_specification': buildSpecification,
           if (commands != null) 'commands': commands,
           if (deploymentRetention != null)
             'deployment_retention': deploymentRetention,
           if (enabled != null) 'enabled': enabled,
           if (entrypoint != null) 'entrypoint': entrypoint,
           if (events != null) 'events': events,
           if (execute != null) 'execute': execute,
           if (installationId != null) 'installation_id': installationId,
           if (logging != null) 'logging': logging,
           'name': name,
           if (projectId != null) 'project_id': projectId,
           if (providerBranch != null) 'provider_branch': providerBranch,
           if (providerRepositoryId != null)
             'provider_repository_id': providerRepositoryId,
           if (providerRootDirectory != null)
             'provider_root_directory': providerRootDirectory,
           if (providerSilentMode != null)
             'provider_silent_mode': providerSilentMode,
           'runtime': runtime,
           if (runtimeSpecification != null)
             'runtime_specification': runtimeSpecification,
           if (schedule != null) 'schedule': schedule,
           if (scopes != null) 'scopes': scopes,
           if (timeout != null) 'timeout': timeout,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteFunctionSensitive;

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
