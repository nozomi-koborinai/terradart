// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

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
    RefTo<AppwriteProject>? projectId,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'build_specification': ?buildSpecification,
           'commands': ?commands,
           'deployment_retention': ?deploymentRetention,
           'enabled': ?enabled,
           'entrypoint': ?entrypoint,
           'events': ?events,
           'execute': ?execute,
           'installation_id': ?installationId,
           'logging': ?logging,
           'name': name,
           'project_id': ?projectId?.encodeAs('id'),
           'provider_branch': ?providerBranch,
           'provider_repository_id': ?providerRepositoryId,
           'provider_root_directory': ?providerRootDirectory,
           'provider_silent_mode': ?providerSilentMode,
           'runtime': runtime,
           'runtime_specification': ?runtimeSpecification,
           'schedule': ?schedule,
           'scopes': ?scopes,
           'timeout': ?timeout,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteFunction>`.
  RefTo<AppwriteFunction> get ref => RefTo.of(this);

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
