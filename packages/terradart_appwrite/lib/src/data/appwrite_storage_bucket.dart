// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_storage_bucket`.
const Set<String> _appwriteStorageBucketSensitive = <String>{};

/// Factory wrapper for `appwrite_storage_bucket`.
///
/// Fetches an Appwrite storage bucket by ID.
final class DataAppwriteStorageBucket extends Data {
  static const String tfType = 'appwrite_storage_bucket';

  DataAppwriteStorageBucket({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? projectId,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (projectId != null) 'project_id': projectId},
       );

  @override
  Set<String> get sensitiveFields => _appwriteStorageBucketSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_file_extensions` attribute.
  TfRef<List<String>> get allowedFileExtensions =>
      TfRef.attribute<List<String>>(this, 'allowed_file_extensions');

  /// Reference to `antivirus` attribute.
  TfRef<bool> get antivirus => TfRef.attribute<bool>(this, 'antivirus');

  /// Reference to `compression` attribute.
  TfRef<String> get compression => TfRef.attribute<String>(this, 'compression');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `encryption` attribute.
  TfRef<bool> get encryption => TfRef.attribute<bool>(this, 'encryption');

  /// Reference to `file_security` attribute.
  TfRef<bool> get fileSecurity => TfRef.attribute<bool>(this, 'file_security');

  /// Reference to `maximum_file_size` attribute.
  TfRef<num> get maximumFileSize =>
      TfRef.attribute<num>(this, 'maximum_file_size');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
