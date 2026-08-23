// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_storage_file`.
const Set<String> _appwriteStorageFileSensitive = <String>{};

/// Factory wrapper for `appwrite_storage_file`.
///
/// Manages a file in an Appwrite storage bucket.
///
/// Appwrite **storage file** — uploads a local file into a bucket.
///
/// [filePath] is resolved at apply time on the machine running Terraform.
final class AppwriteStorageFile extends Resource {
  static const String tfType = 'appwrite_storage_file';

  AppwriteStorageFile({
    required super.localName,
    required TfArg<String> bucketId,
    required TfArg<String> filePath,
    TfArg<String>? name,
    TfArg<List<String>>? permissions,
    TfArg<String>? projectId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_id': bucketId,
           'file_path': filePath,
           if (name != null) 'name': name,
           if (permissions != null) 'permissions': permissions,
           if (projectId != null) 'project_id': projectId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteStorageFileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `mime_type` attribute.
  TfRef<String> get mimeType => TfRef.attribute<String>(this, 'mime_type');

  /// Reference to `size_original` attribute.
  TfRef<num> get sizeOriginal => TfRef.attribute<num>(this, 'size_original');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
