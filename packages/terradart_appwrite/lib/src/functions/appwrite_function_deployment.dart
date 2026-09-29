// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../functions/appwrite_function.dart' show AppwriteFunction;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_function_deployment`.
const Set<String> _appwriteFunctionDeploymentSensitive = <String>{};

/// Function Deployment Source enum for `source_type`.
enum FunctionDeploymentSourceType implements TerraformEnum {
  code('code'),
  template('template');

  const FunctionDeploymentSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `appwrite_function_deployment`.
///
/// Manages an Appwrite function deployment.
final class AppwriteFunctionDeployment extends Resource {
  static const String tfType = 'appwrite_function_deployment';

  AppwriteFunctionDeployment({
    required super.localName,
    TfArg<bool>? activate,
    TfArg<String>? codeHash,
    TfArg<String>? codePath,
    TfArg<String>? commands,
    TfArg<String>? entrypoint,
    required RefTo<AppwriteFunction> functionId,
    TfArg<String>? owner,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? reference,
    TfArg<String>? repository,
    TfArg<String>? rootDirectory,
    required TfArg<FunctionDeploymentSourceType> sourceType,
    TfArg<String>? type,
    TfArg<bool>? waitForReady,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'activate': ?activate,
           'code_hash': ?codeHash,
           'code_path': ?codePath,
           'commands': ?commands,
           'entrypoint': ?entrypoint,
           'function_id': functionId.encodeAs('id'),
           'owner': ?owner,
           'project_id': ?projectId?.encodeAs('id'),
           'reference': ?reference,
           'repository': ?repository,
           'root_directory': ?rootDirectory,
           'source_type': sourceType,
           'type': ?type,
           'wait_for_ready': ?waitForReady,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteFunctionDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteFunctionDeployment>`.
  RefTo<AppwriteFunctionDeployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `build_duration` attribute.
  TfRef<num> get buildDuration => TfRef.attribute<num>(this, 'build_duration');

  /// Reference to `build_logs` attribute.
  TfRef<String> get buildLogs => TfRef.attribute<String>(this, 'build_logs');

  /// Reference to `build_size` attribute.
  TfRef<num> get buildSize => TfRef.attribute<num>(this, 'build_size');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `source_size` attribute.
  TfRef<num> get sourceSize => TfRef.attribute<num>(this, 'source_size');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `total_size` attribute.
  TfRef<num> get totalSize => TfRef.attribute<num>(this, 'total_size');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
