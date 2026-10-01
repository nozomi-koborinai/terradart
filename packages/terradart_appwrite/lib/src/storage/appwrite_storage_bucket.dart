// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_storage_bucket`.
const Set<String> _appwriteStorageBucketSensitive = <String>{};

/// Storage Bucket enum for `compression`.
enum StorageBucketCompression implements TerraformEnum {
  none('none'),
  gzip('gzip'),
  zstd('zstd');

  const StorageBucketCompression(this.terraformValue);
  @override
  final String terraformValue;
}

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
    TfArg<StorageBucketCompression>? compression,
    TfArg<bool>? encryption,
    TfArg<bool>? antivirus,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'enabled': ?enabled,
           'file_security': ?fileSecurity,
           'maximum_file_size': ?maximumFileSize,
           'allowed_file_extensions': ?allowedFileExtensions,
           'compression': ?compression,
           'encryption': ?encryption,
           'antivirus': ?antivirus,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteStorageBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteStorageBucket>`.
  RefTo<AppwriteStorageBucket> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `allowed_file_extensions` attribute.
  TfRef<List<String>> get allowedFileExtensions =>
      TfRef.attribute<List<String>>(this, 'allowed_file_extensions');

  /// Reference to `antivirus` attribute.
  TfRef<bool> get antivirus => TfRef.attribute<bool>(this, 'antivirus');

  /// Reference to `compression` attribute.
  TfRef<String> get compression => TfRef.attribute<String>(this, 'compression');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `encryption` attribute.
  TfRef<bool> get encryption => TfRef.attribute<bool>(this, 'encryption');

  /// Reference to `file_security` attribute.
  TfRef<bool> get fileSecurity => TfRef.attribute<bool>(this, 'file_security');

  /// Reference to `maximum_file_size` attribute.
  TfRef<num> get maximumFileSize =>
      TfRef.attribute<num>(this, 'maximum_file_size');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `transformations` attribute.
  TfRef<bool> get transformations =>
      TfRef.attribute<bool>(this, 'transformations');
}
