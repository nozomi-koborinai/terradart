// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../functions/appwrite_function.dart' show AppwriteFunction;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_function_variable`.
const Set<String> _appwriteFunctionVariableSensitive = <String>{'value'};

/// Factory wrapper for `appwrite_function_variable`.
///
/// Manages an Appwrite function environment variable.
///
/// Function environment variable. [value] is sensitive — pass
/// `TfArg.variable` so the secret never enters synth output.
final class AppwriteFunctionVariable extends Resource {
  static const String tfType = 'appwrite_function_variable';

  AppwriteFunctionVariable(
    super.localName, {
    required RefTo<AppwriteFunction> functionId,
    required TfArg<String> key,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? secret,
    required Sensitive<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_id': functionId.encodeAs('id'),
           'key': key,
           'project_id': ?projectId?.encodeAs('id'),
           'secret': ?secret,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteFunctionVariableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteFunctionVariable>`.
  RefTo<AppwriteFunctionVariable> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `function_id` attribute.
  TfRef<String> get functionId => TfRef.attribute<String>(this, 'function_id');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
