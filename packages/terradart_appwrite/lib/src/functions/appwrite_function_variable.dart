// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  AppwriteFunctionVariable({
    required super.localName,
    required TfArg<String> functionId,
    required TfArg<String> key,
    TfArg<String>? projectId,
    TfArg<bool>? secret,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_id': functionId,
           'key': key,
           if (projectId != null) 'project_id': projectId,
           if (secret != null) 'secret': secret,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteFunctionVariableSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
