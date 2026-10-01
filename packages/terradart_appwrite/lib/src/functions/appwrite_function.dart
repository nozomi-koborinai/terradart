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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `build_specification` attribute.
  TfRef<String> get buildSpecification =>
      TfRef.attribute<String>(this, 'build_specification');

  /// Reference to `commands` attribute.
  TfRef<String> get commands => TfRef.attribute<String>(this, 'commands');

  /// Reference to `deployment_retention` attribute.
  TfRef<num> get deploymentRetention =>
      TfRef.attribute<num>(this, 'deployment_retention');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `entrypoint` attribute.
  TfRef<String> get entrypoint => TfRef.attribute<String>(this, 'entrypoint');

  /// Reference to `events` attribute.
  TfRef<List<String>> get events =>
      TfRef.attribute<List<String>>(this, 'events');

  /// Reference to `execute` attribute.
  TfRef<List<String>> get execute =>
      TfRef.attribute<List<String>>(this, 'execute');

  /// Reference to `installation_id` attribute.
  TfRef<String> get installationId =>
      TfRef.attribute<String>(this, 'installation_id');

  /// Reference to `logging` attribute.
  TfRef<bool> get logging => TfRef.attribute<bool>(this, 'logging');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `provider_branch` attribute.
  TfRef<String> get providerBranch =>
      TfRef.attribute<String>(this, 'provider_branch');

  /// Reference to `provider_repository_id` attribute.
  TfRef<String> get providerRepositoryId =>
      TfRef.attribute<String>(this, 'provider_repository_id');

  /// Reference to `provider_root_directory` attribute.
  TfRef<String> get providerRootDirectory =>
      TfRef.attribute<String>(this, 'provider_root_directory');

  /// Reference to `provider_silent_mode` attribute.
  TfRef<bool> get providerSilentMode =>
      TfRef.attribute<bool>(this, 'provider_silent_mode');

  /// Reference to `runtime` attribute.
  TfRef<String> get runtime => TfRef.attribute<String>(this, 'runtime');

  /// Reference to `runtime_specification` attribute.
  TfRef<String> get runtimeSpecification =>
      TfRef.attribute<String>(this, 'runtime_specification');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');
}
