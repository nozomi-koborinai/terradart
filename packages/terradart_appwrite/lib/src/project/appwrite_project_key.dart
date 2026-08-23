// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_project_key`.
const Set<String> _appwriteProjectKeySensitive = <String>{'secret'};

/// Factory wrapper for `appwrite_project_key`.
///
/// Manages an Appwrite project API key.
///
/// Appwrite **project API key**.
///
/// The create endpoint is gone upstream: mint the key in the Console and
/// `terraform import` it. Read / update / delete still work. Synth output
/// never contains the secret — see [AppwriteProvider].
final class AppwriteProjectKey extends Resource {
  static const String tfType = 'appwrite_project_key';

  AppwriteProjectKey({
    required super.localName,
    TfArg<String>? expire,
    required TfArg<String> name,
    TfArg<String>? organizationId,
    TfArg<String>? projectId,
    required TfArg<List<String>> scopes,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (expire != null) 'expire': expire,
           'name': name,
           if (organizationId != null) 'organization_id': organizationId,
           if (projectId != null) 'project_id': projectId,
           'scopes': scopes,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accessed_at` attribute.
  TfRef<String> get accessedAt => TfRef.attribute<String>(this, 'accessed_at');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `sdks` attribute.
  TfRef<List<String>> get sdks => TfRef.attribute<List<String>>(this, 'sdks');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
