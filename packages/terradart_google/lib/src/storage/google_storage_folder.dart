// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_folder`.
const Set<String> _googleStorageFolderSensitive = <String>{};

/// Factory wrapper for `google_storage_folder`.
///
/// A Google Cloud Storage Folder.
///
/// The Folder resource represents a folder in a Cloud Storage bucket with
/// hierarchical namespace enabled
///
/// Hierarchical-namespace **folder** in a Cloud Storage bucket. The parent
/// bucket must have `hierarchical_namespace.enabled = true` (and therefore
/// uniform bucket-level access). Folder [name] is a path and must end with
/// `/` (e.g. `reports/2024/`).
///
/// Prefer this over [GoogleStorageManagedFolder] when you want the Folders
/// API (create / list / rename) rather than the managed-folder IAM surface.
///
/// Example:
/// ```dart
/// GoogleStorageFolder(
///   localName: 'reports',
///   bucket: TfArg.ref(assets.nameRef),
///   name: TfArg.literal('reports/'),
///   forceDestroy: TfArg.literal(true),
/// );
/// ```
final class GoogleStorageFolder extends Resource {
  static const String tfType = 'google_storage_folder';

  GoogleStorageFolder({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> name,
    TfArg<bool>? forceDestroy,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'name': name,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageFolderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `metageneration` attribute.
  TfRef<String> get metageneration =>
      TfRef.attribute<String>(this, 'metageneration');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
