// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_managed_folder`.
const Set<String> _googleStorageManagedFolderSensitive = <String>{};

/// Factory wrapper for `google_storage_managed_folder`.
///
/// A Google Cloud Storage Managed Folder.
///
/// You can apply Identity and Access Management (IAM) policies to managed
/// folders to grant principals access only to the objects within the managed
/// folder, which lets you more finely control access for specific data sets and
/// tables within a bucket. You can nest managed folders up to 15 levels deep,
/// including the parent managed folder.
///
/// Managed folders can only be created in buckets that have uniform
/// bucket-level access enabled.
final class GoogleStorageManagedFolder extends Resource {
  static const String tfType = 'google_storage_managed_folder';

  GoogleStorageManagedFolder({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<bool>? forceDestroy,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageManagedFolderSensitive;

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
