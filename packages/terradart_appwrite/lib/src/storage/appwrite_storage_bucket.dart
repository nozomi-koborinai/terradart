// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_storage_bucket`.
const Set<String> _appwriteStorageBucketSensitive = <String>{};

/// Factory wrapper for `appwrite_storage_bucket`.
///
/// Manages an Appwrite storage bucket.
///
/// Appwrite **storage bucket** — file storage with per-bucket security,
/// size limits, allowed extensions, compression, encryption, and
/// antivirus toggles.
///
/// Project-scoped: apply resolves the target project from the provider's
/// `project_id` (or `APPWRITE_PROJECT_ID`).
final class AppwriteStorageBucket extends Resource {
  static const String tfType = 'appwrite_storage_bucket';

  AppwriteStorageBucket({
    required super.localName,
    required TfArg<String> name,
    TfArg<bool>? enabled,
    TfArg<bool>? fileSecurity,
    TfArg<num>? maximumFileSize,
    TfArg<List<String>>? allowedFileExtensions,
    TfArg<String>? compression,
    TfArg<bool>? encryption,
    TfArg<bool>? antivirus,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (enabled != null) 'enabled': enabled,
           if (fileSecurity != null) 'file_security': fileSecurity,
           if (maximumFileSize != null) 'maximum_file_size': maximumFileSize,
           if (allowedFileExtensions != null)
             'allowed_file_extensions': allowedFileExtensions,
           if (compression != null) 'compression': compression,
           if (encryption != null) 'encryption': encryption,
           if (antivirus != null) 'antivirus': antivirus,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteStorageBucketSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
