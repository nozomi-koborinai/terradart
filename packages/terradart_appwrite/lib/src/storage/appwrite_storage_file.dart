// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;
import '../storage/appwrite_storage_bucket.dart' show AppwriteStorageBucket;

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
    required RefTo<AppwriteStorageBucket> bucketId,
    required TfArg<String> filePath,
    TfArg<String>? name,
    TfArg<List<String>>? permissions,
    RefTo<AppwriteProject>? projectId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_id': bucketId.encodeAs('id'),
           'file_path': filePath,
           'name': ?name,
           'permissions': ?permissions,
           'project_id': ?projectId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteStorageFileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteStorageFile>`.
  RefTo<AppwriteStorageFile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `bucket_id` attribute.
  TfRef<String> get bucketId => TfRef.attribute<String>(this, 'bucket_id');

  /// Reference to `file_path` attribute.
  TfRef<String> get filePath => TfRef.attribute<String>(this, 'file_path');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');
}
