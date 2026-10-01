// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../functions/appwrite_function.dart';
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_function`.
const Set<String> _appwriteFunctionSensitive = <String>{};

/// Factory wrapper for `appwrite_function`.
///
/// Fetches an Appwrite function by ID.
final class DataAppwriteFunction extends Data {
  static const String tfType = 'appwrite_function';

  DataAppwriteFunction(
    super.localName, {
    required TfArg<String> id,
    RefTo<AppwriteProject>? projectId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, 'project_id': ?projectId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _appwriteFunctionSensitive;

  /// A reference to the `appwrite_function` this data source reads, for
  /// arguments typed `RefTo<AppwriteFunction>`.
  RefTo<AppwriteFunction> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `commands` attribute.
  TfRef<String> get commands => TfRef.attribute<String>(this, 'commands');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

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

  /// Reference to `logging` attribute.
  TfRef<bool> get logging => TfRef.attribute<bool>(this, 'logging');

  /// Reference to `runtime` attribute.
  TfRef<String> get runtime => TfRef.attribute<String>(this, 'runtime');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
