// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_site`.
const Set<String> _appwriteSiteSensitive = <String>{};

/// Factory wrapper for `appwrite_site`.
///
/// Fetches an Appwrite site by ID.
final class DataAppwriteSite extends Data {
  static const String tfType = 'appwrite_site';

  DataAppwriteSite({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? projectId,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (projectId != null) 'project_id': projectId},
       );

  @override
  Set<String> get sensitiveFields => _appwriteSiteSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `build_command` attribute.
  TfRef<String> get buildCommand =>
      TfRef.attribute<String>(this, 'build_command');

  /// Reference to `build_runtime` attribute.
  TfRef<String> get buildRuntime =>
      TfRef.attribute<String>(this, 'build_runtime');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `framework` attribute.
  TfRef<String> get framework => TfRef.attribute<String>(this, 'framework');

  /// Reference to `install_command` attribute.
  TfRef<String> get installCommand =>
      TfRef.attribute<String>(this, 'install_command');

  /// Reference to `logging` attribute.
  TfRef<bool> get logging => TfRef.attribute<bool>(this, 'logging');

  /// Reference to `output_directory` attribute.
  TfRef<String> get outputDirectory =>
      TfRef.attribute<String>(this, 'output_directory');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
